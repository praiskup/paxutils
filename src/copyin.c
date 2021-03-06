/* copyin.c - extract or list a cpio archive
   Copyright (C) 1990, 91, 92, 95, 96, 98, 99 Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.  */

#include "system.h"

#include <time.h>
#include "filetypes.h"
#include "common.h"
#include "defer.h"
#include "rmt.h"
#ifndef	FNM_PATHNAME
# include <fnmatch.h>
#endif

static void read_pattern_file ();
static void defer_copyin ();
static void create_defered_links ();
static void create_final_defers ();

/* Return 16-bit integer I with the bytes swapped.  */
#define swab_short(i) ((((i) << 8) & 0xff00) | (((i) >> 8) & 0x00ff))

/*----------------------------------------------------------------------.
| Read the header, including the name of the file, from file descriptor |
| IN_DES into FILE_HDR.                                                 |
`----------------------------------------------------------------------*/

void
read_in_header (struct new_cpio_header *file_hdr, int in_des)
{
  long bytes_skipped = 0;	/* bytes of junk found before magic number */

  /* Search for a valid magic number.  */

  if (archive_format == UNKNOWN_FORMAT)
    {
      char tmpbuf[BLOCKSIZE];
      int peeked_bytes;

      while (archive_format == UNKNOWN_FORMAT)
	{
	  peeked_bytes = tape_buffered_peek (tmpbuf, in_des, 512);
	  if (peeked_bytes < 6)
	    error (1, 0, _("premature end of archive"));

	  if (!strncmp (tmpbuf, "070701", 6))
	    archive_format = NEW_ASCII_FORMAT;
	  else if (!strncmp (tmpbuf, "070707", 6))
	    archive_format = OLD_ASCII_FORMAT;
	  else if (!strncmp (tmpbuf, "070702", 6))
	    {
	      archive_format = CRC_ASCII_FORMAT;
	      crc_i_flag = true;
	    }
	  else if (*((unsigned short *) tmpbuf) == 070707
		   || (*((unsigned short *) tmpbuf)
		       == swab_short ((unsigned short) 070707)))
	    archive_format = BINARY_FORMAT;
	  else if (peeked_bytes >= 512 /* FIXME: use a symbol */
		   && (archive_format = is_tar_header (tmpbuf),
		       archive_format != UNKNOWN_FORMAT))
	    {
	      /* Nothing. */
	    }
	  else
	    {
	      tape_buffered_read ((char *) tmpbuf, in_des, 1L);
	      bytes_skipped++;
	    }
	}

#ifdef DEBUG_CPIO
      if (debug_option)
	printf ("archive format is %s\n", format_name (archive_format));
#endif /* DEBUG_CPIO */
    }

  if (archive_format == V7_FORMAT || archive_format == POSIX_FORMAT
      || archive_format == GNUTAR_FORMAT)
    {
      if (append_option)
	last_header_start = input_bytes - io_block_size +
	  (input_buffer_cursor - input_buffer);
      if (bytes_skipped > 0)
	error (0, 0, _("warning: skipped %ld bytes of junk"), bytes_skipped);
      read_in_tar_header (file_hdr, in_des);
      return;
    }

  file_hdr->c_tar_linkname = NULL;

  tape_buffered_read ((char *) file_hdr, in_des, 6L);
  while (true)
    {
      if (append_option)
	last_header_start = input_bytes - io_block_size
	  + (input_buffer_cursor - input_buffer) - 6;
      if (archive_format == NEW_ASCII_FORMAT
	  && !strncmp ((char *) file_hdr, "070701", 6))
	{
	  if (bytes_skipped > 0)
	    error (0, 0, _("warning: skipped %ld bytes of junk"),
		   bytes_skipped);
	  read_in_new_ascii (file_hdr, in_des);
	  break;
	}
      if (archive_format == CRC_ASCII_FORMAT
	  && !strncmp ((char *) file_hdr, "070702", 6))
	{
	  if (bytes_skipped > 0)
	    error (0, 0, _("warning: skipped %ld bytes of junk"),
		   bytes_skipped);
	  read_in_new_ascii (file_hdr, in_des);
	  break;
	}
      if ((archive_format == OLD_ASCII_FORMAT
	   || archive_format == HPUX_OLD_ASCII_FORMAT)
	  && !strncmp ((char *) file_hdr, "070707", 6))
	{
	  if (bytes_skipped > 0)
	    error (0, 0, _("warning: skipped %ld bytes of junk"),
		   bytes_skipped);
	  read_in_old_ascii (file_hdr, in_des);
	  break;
	}
      if ((archive_format == BINARY_FORMAT
	   || archive_format == HPUX_BINARY_FORMAT)
	  && (file_hdr->c_magic == 070707
	      || file_hdr->c_magic == swab_short ((unsigned short) 070707)))
	{
	  /* Having to skip 1 byte because of word alignment is normal.  */
	  if (bytes_skipped > 0)
	    error (0, 0, _("warning: skipped %ld bytes of junk"),
		   bytes_skipped);
	  read_in_binary (file_hdr, in_des);
	  break;
	}
      bytes_skipped++;
      memcpy ((char *) file_hdr, (char *) file_hdr + 1, 5);
      tape_buffered_read ((char *) file_hdr + 5, in_des, 1L);
    }
}

/* Current time for verbose table.  */
static time_t current_time;

/*---------------------------------------------------------------------.
| Read the collection from standard input and create files in the file |
| system.                                                              |
`---------------------------------------------------------------------*/

void
process_copy_in (void)
{
  bool done = false;		/* if trailer reached */
  int res;			/* result of various function calls */
  struct utimbuf times;		/* for setting file times */
  struct stat stat_info;	/* output file stat record */
  struct new_cpio_header file_hdr; /* output header information */
  int out_file_des;		/* output file descriptor */
  int in_file_des;		/* input file descriptor */
  char skip_file;		/* flag for use with patterns */
  bool existing_dir;		/* if file is a dir & already exists */
  int i;			/* loop index variable */
  char *link_name = NULL;	/* name of hard and symbolic links */
#ifdef HPUX_CDF
  bool cdf_flag;		/* if file is a CDF */
  int cdf_char;                 /* index of `+' char indicating a CDF */
#endif

  /* Initialize the copy in.  */
  if (pattern_file_name)
    read_pattern_file ();
  file_hdr.c_name = NULL;

  /* Initialize this in case it has members we don't know to set.  */
  memset (&times, 0, sizeof (struct utimbuf));

  /* Get date and time if needed for processing the table option.  */
  if (list_option && verbose_option)
    time (&current_time);

#ifdef __MSDOS__
  setmode (archive_des, O_BINARY);
#endif
#if DOSWIN
  if (!isatty (archive_des))
    setmode (archive_des, O_BINARY);
#endif
  /* Check whether the input file might be a tape.  */
  in_file_des = archive_des;
  if (_isrmt (in_file_des))
    {
      input_is_special = 1;
      input_is_seekable = 0;
    }
  else
    {
      if (fstat (in_file_des, &stat_info))
	error (1, errno, _("standard input is closed"));
      input_is_special =
#ifdef S_ISBLK
	S_ISBLK (stat_info.st_mode) ||
#endif
	S_ISCHR (stat_info.st_mode);
      input_is_seekable = S_ISREG (stat_info.st_mode);
    }

#if DOSWIN
  /* We might as well give the user an opportunity to recover from premature
     end of input even if they are reading from a disk file.  It is
     specifically handy with floppies.  */
  input_is_special = !isatty (in_file_des);
#endif

  output_is_seekable = true;

  /* While there is more input in the collection, process the input.  */
  while (!done)
    {
      link_name = NULL;
      swapping_halfwords = swapping_bytes = false;

      /* Start processing the next file by reading the header.  */
      read_in_header (&file_hdr, in_file_des);

#ifdef DEBUG_CPIO
      if (debug_option)
	{
	  struct new_cpio_header *h;
	  h = &file_hdr;
	  fprintf (stderr,
		"magic = 0%o, ino = %d, mode = 0%o, uid = %d, gid = %d\n",
		h->c_magic, h->c_ino, h->c_mode, h->c_uid, h->c_gid);
	  fprintf (stderr,
		"nlink = %d, mtime = %d, filesize = %d, dev_maj = 0x%x\n",
		h->c_nlink, h->c_mtime, h->c_filesize, h->c_dev_maj);
	  fprintf (stderr,
	        "dev_min = 0x%x, rdev_maj = 0x%x, rdev_min = 0x%x, namesize = %d\n",
		h->c_dev_min, h->c_rdev_maj, h->c_rdev_min, h->c_namesize);
	  fprintf (stderr,
		"chksum = %d, name = \"%s\", tar_linkname = \"%s\"\n",
		h->c_chksum, h->c_name,
		h->c_tar_linkname ? h->c_tar_linkname : "(null)" );

	}
#endif

      /* Is this the header for the TRAILER file?  */
      if (strcmp ("TRAILER!!!", file_hdr.c_name) == 0)
	{
	  done = true;
	  break;
	}

      /* Do we have to ignore absolute paths, and if so, does the filename
         have an absolute path?  */
#if defined (__MSDOS__) || defined (DOSWIN)
      /* On MS-DOS and MS-Windows, absolute pathnames might include drive
	 letters.  Remove them, if absolute paths are to be ignored.  */
      if (no_absolute_filenames_option && file_hdr.c_name
	  && file_hdr.c_name [0] >= 'A' && file_hdr.c_name [0] <= 'z'
	  && file_hdr.c_name [1] == ':')
	memmove (file_hdr.c_name, file_hdr.c_name + 2,
		 strlen (file_hdr.c_name) - 1);
#endif
      if (no_absolute_filenames_option
	  && file_hdr.c_name && file_hdr.c_name[0] == '/')
	{
	  char *p;

	  p = file_hdr.c_name;
	  while (*p == '/')
	    p++;
	  if (*p == '\0')
	    strcpy (file_hdr.c_name, ".");
	  else if (archive_format == V7_FORMAT || archive_format == POSIX_FORMAT
		   || archive_format == GNUTAR_FORMAT)
	    /* read_in_tar_header doesn't allocate the name dynamically.  */
	    file_hdr.c_name = p;
	  else
	    {
	      char *non_abs_name;

	      non_abs_name = (char *) xmalloc (strlen (p) + 1);
	      strcpy (non_abs_name, p);
	      free (file_hdr.c_name);
	      file_hdr.c_name = non_abs_name;
	    }
	}

      /* FIXME examine code to make sure file_hdr.c_name is freed as
	 appropriate.  */

      /* Does the file name match one of the given patterns?  */
      if (num_patterns <= 0)
	skip_file = false;
      else
	{
	  skip_file = copy_matching_files;
	  for (i = 0; i < num_patterns
	       && skip_file == copy_matching_files; i++)
	    {
	      if (fnmatch (save_patterns[i], file_hdr.c_name, 0) == 0)
		skip_file = !copy_matching_files;
	    }
	}

      if (skip_file)
	{
	  tape_toss_input (in_file_des, file_hdr.c_filesize);
	  tape_skip_padding (in_file_des, file_hdr.c_filesize);
	}
      else if (list_option)
	{
	  if (verbose_option)
	    {
#ifdef CP_IFLNK
	      if ((file_hdr.c_mode & CP_IFMT) == CP_IFLNK)
		{
		  if (archive_format != V7_FORMAT
		      && archive_format != POSIX_FORMAT
		      && archive_format != GNUTAR_FORMAT)
		    {
		      link_name = (char *) xmalloc ((unsigned int)
						    file_hdr.c_filesize + 1);
		      link_name[file_hdr.c_filesize] = '\0';
		      tape_buffered_read (link_name, in_file_des,
					  file_hdr.c_filesize);
		      long_format (&file_hdr, link_name);
		      free (link_name);
		      tape_skip_padding (in_file_des, file_hdr.c_filesize);
		      continue;
		    }
		  else
		    {
		      long_format (&file_hdr, file_hdr.c_tar_linkname);
		      continue;
		    }
		}
	      else
#endif
		long_format (&file_hdr, (char *) 0);
	    }
	  else
	    printf ("%s\n", file_hdr.c_name);

	  crc = 0;
	  tape_toss_input (in_file_des, file_hdr.c_filesize);
	  tape_skip_padding (in_file_des, file_hdr.c_filesize);
	  if (only_verify_crc_option)
	    {
#ifdef CP_IFLNK
	      if ((file_hdr.c_mode & CP_IFMT) == CP_IFLNK)
		continue;   /* links don't have a checksum */
#endif
	      if (crc != file_hdr.c_chksum)
		error (0, 0, _("%s: checksum error (0x%x, should be 0x%x)"),
		       file_hdr.c_name, crc, file_hdr.c_chksum);
	    }
	}
      else if (append_option)
	{
	  tape_toss_input (in_file_des, file_hdr.c_filesize);
	  tape_skip_padding (in_file_des, file_hdr.c_filesize);
	}
      else if (only_verify_crc_option)
	{
#ifdef CP_IFLNK
	  if ((file_hdr.c_mode & CP_IFMT) == CP_IFLNK)
	    {
	      if (archive_format != V7_FORMAT && archive_format != POSIX_FORMAT)
		{
		  tape_toss_input (in_file_des, file_hdr.c_filesize);
		  tape_skip_padding (in_file_des, file_hdr.c_filesize);
		  continue;
		}
	    }
#endif
	    crc = 0;
	    tape_toss_input (in_file_des, file_hdr.c_filesize);
	    tape_skip_padding (in_file_des, file_hdr.c_filesize);
	    if (crc != file_hdr.c_chksum)
	      error (0, 0, _("%s: checksum error (0x%x, should be 0x%x)"),
		     file_hdr.c_name, crc, file_hdr.c_chksum);
	}
      else
	{
	  /* Copy the input file into the directory structure.  */

	  file_hdr.c_name = possibly_rename_file (file_hdr.c_name);
	  if (file_hdr.c_name == NULL)
	    {
	      /* File is to be skipped.  */
	      tape_toss_input (in_file_des, file_hdr.c_filesize);
	      tape_skip_padding (in_file_des, file_hdr.c_filesize);
	      continue;
	    }

	  /* See if the file already exists.  */
	  existing_dir = false;
	  if (lstat (file_hdr.c_name, &stat_info) == 0)
	    {
	      if (S_ISDIR (stat_info.st_mode)
		  && ((file_hdr.c_mode & CP_IFMT) == CP_IFDIR))
		{
		  /* If there is already a directory there that
		     we are trying to create, don't complain about
		     it.  */
		  existing_dir = true;
		}
	      else if (!unconditional_option
		       && file_hdr.c_mtime <= stat_info.st_mtime)
		{
		  error (0, 0,
			 _("%s not created: newer or same age version exists"),
			 file_hdr.c_name);
		  tape_toss_input (in_file_des, file_hdr.c_filesize);
		  tape_skip_padding (in_file_des, file_hdr.c_filesize);
		  continue;	/* Go to the next file.  */
		}
	      else if (!overwrite_existing_files)
		{
		  /* Can't overwrite.  So just skip.  */
		  error (0, 0, _("%s already exists; not created"));
		  tape_toss_input (in_file_des, file_hdr.c_filesize);
		  tape_skip_padding (in_file_des, file_hdr.c_filesize);
		  continue;	/* Go to the next file.  */
		}
	      else if (S_ISDIR (stat_info.st_mode)
		       ? rmdir (file_hdr.c_name)
		       : unlink (file_hdr.c_name))
		{
		  error (0, errno, _("cannot remove current %s"),
			 file_hdr.c_name);
		  tape_toss_input (in_file_des, file_hdr.c_filesize);
		  tape_skip_padding (in_file_des, file_hdr.c_filesize);
		  continue;	/* Go to the next file.  */
		}
	    }

	  /* Do the real copy or link.  */
	  switch (file_hdr.c_mode & CP_IFMT)
	    {
	    case CP_IFREG:
#ifndef __MSDOS__
	      /* Can the current file be linked to a previously copied file? */
	      if (file_hdr.c_nlink > 1 && (archive_format == NEW_ASCII_FORMAT
		  || archive_format == CRC_ASCII_FORMAT) )
		{
		  int link_res;
		  if (file_hdr.c_filesize == 0)
		    {
		      /* The newc and crc formats store multiply linked copies
			 of the same file in the archive only once.  The
			 actual data is attached to the last link in the
			 archive, and the other links all have a filesize
			 of 0.  Since this file has multiple links and a
			 filesize of 0, its data is probably attached to
			 another file in the archive.  Save the link, and
			 process it later when we get the actual data.  We
			 can't just create it with length 0 and add the
			 data later, in case the file is readonly.  We still
			 lose if its parent directory is readonly (and we aren't
			 running as root), but there's nothing we can do about
			 that.  */
		      defer_copyin (&file_hdr);
		      tape_toss_input (in_file_des, file_hdr.c_filesize);
		      tape_skip_padding (in_file_des, file_hdr.c_filesize);
		      break;
		    }
		  /* If the file has data (filesize != 0), then presumably any
		     other links have already been defer_copyin'ed(), but cpio
		     2.0-2.2 didn't do that, so we still have to check for
		     links here (and also in case the archive was created and
		     later appeneded to).  */
		  link_res = link_to_maj_min_ino (file_hdr.c_name,
						  file_hdr.c_dev_maj,
						  file_hdr.c_dev_min,
						  file_hdr.c_ino);
		  if (link_res == 0)
		    {
		      tape_toss_input (in_file_des, file_hdr.c_filesize);
		      tape_skip_padding (in_file_des, file_hdr.c_filesize);
		      break;
		    }
		}
	      else if (file_hdr.c_nlink > 1
		       && archive_format != V7_FORMAT
		       && archive_format != POSIX_FORMAT
		       && archive_format != GNUTAR_FORMAT)
		{
		  int link_res;
		  link_res = link_to_maj_min_ino (file_hdr.c_name,
						  file_hdr.c_dev_maj,
						  file_hdr.c_dev_min,
						  file_hdr.c_ino);
		  if (link_res == 0)
		    {
		      tape_toss_input (in_file_des, file_hdr.c_filesize);
		      tape_skip_padding (in_file_des, file_hdr.c_filesize);
		      break;
		    }
		}
	      else if ((archive_format == V7_FORMAT
			|| archive_format == POSIX_FORMAT
			|| archive_format == GNUTAR_FORMAT)
		       && file_hdr.c_tar_linkname
		       && file_hdr.c_tar_linkname[0] != '\0')
		{
		  int link_res;
		  link_res = link_to_name (file_hdr.c_name,
		  			   file_hdr.c_tar_linkname);
		  if (link_res < 0)
		    {
		      error (0, errno, _("cannot link %s to %s"),
			     file_hdr.c_tar_linkname, file_hdr.c_name);
		    }
		  break;
		}
#endif

	      /* If not linked, copy the contents of the file.  */
	      if (link_name == NULL)
		{
		  out_file_des = open (file_hdr.c_name,
				       O_CREAT | O_WRONLY | O_BINARY, 0600);
		  if (out_file_des < 0 && make_directories_option)
		    {
		      create_all_directories (file_hdr.c_name);
		      out_file_des = open (file_hdr.c_name,
					   O_CREAT | O_WRONLY | O_BINARY,
					   0600);
		    }
		  if (out_file_des < 0)
		    {
		      /* If we cannot copy because -d wasn't given, make the
			 error message mention the directory part of name.  */
		      if (!make_directories_option)
			{
			  int open_error = errno;
			  char *dirpart = dir_name (file_hdr.c_name);
			  struct stat dirpart_stat;

			  if (stat (dirpart, &dirpart_stat) < 0)
			    error (0, errno, "%s", dirpart);
			  else
			    error (0, open_error, "%s", file_hdr.c_name);
			  free (dirpart);
			}
		      else
			error (0, errno, "%s", file_hdr.c_name);
		      tape_toss_input (in_file_des, file_hdr.c_filesize);
		      tape_skip_padding (in_file_des, file_hdr.c_filesize);
		      continue;
		    }

		  crc = 0;
		  if (swap_halfwords_option)
		    {
		      if ((file_hdr.c_filesize % 4) == 0)
			swapping_halfwords = true;
		      else
			error (0, 0, _("\
cannot swap halfwords of %s: odd number of halfwords"),
			       file_hdr.c_name);
		    }
		  if (swap_bytes_option)
		    {
		      if ((file_hdr.c_filesize % 2) == 0)
			swapping_bytes = true;
		      else
			error (0, 0, _("\
cannot swap bytes of %s: odd number of bytes"),
			       file_hdr.c_name);
		    }
		  copy_files_tape_to_disk (in_file_des, out_file_des,
					   file_hdr.c_filesize);
		  disk_empty_output_buffer (out_file_des);
		  if (close (out_file_des) < 0)
		    error (0, errno, "%s", file_hdr.c_name);

		  if (archive_format == CRC_ASCII_FORMAT)
		    {
		      if (crc != file_hdr.c_chksum)
			error (0, 0, _("\
%s: checksum error (0x%x, should be 0x%x)"),
			       file_hdr.c_name, crc, file_hdr.c_chksum);
		    }
		  /* File is now copied; set attributes.  */
		  if (!no_preserve_owner_option)
		    if ((chown (file_hdr.c_name,
				set_owner_flag ? set_owner : file_hdr.c_uid,
			   set_group_flag ? set_group : file_hdr.c_gid) < 0)
			&& errno != EPERM)
		      error (0, errno, "%s", file_hdr.c_name);
		  /* chown may have turned off some permissions we wanted. */
		  if (chmod (file_hdr.c_name, (int) file_hdr.c_mode) < 0)
		    error (0, errno, "%s", file_hdr.c_name);
		  if (preserve_modification_time_option)
		    {
		      times.actime = times.modtime = file_hdr.c_mtime;
		      if (utime (file_hdr.c_name, &times) < 0)
			error (0, errno, "%s", file_hdr.c_name);
		    }
		  tape_skip_padding (in_file_des, file_hdr.c_filesize);
		  if (file_hdr.c_nlink > 1 && (archive_format == NEW_ASCII_FORMAT
		      || archive_format == CRC_ASCII_FORMAT) )
		    {
		      /* (see comment above for how the newc and crc formats
			 store multiple links).  Now that we have the data
			 for this file, create any other links to it which
			 we defered.  */
		      create_defered_links (&file_hdr);
		    }
		}
	      break;

	    case CP_IFDIR:
	      /* Strip any trailing `/'s off the filename; tar puts
		 them on.  We might as well do it here in case anybody
		 else does too, since they cause strange things to happen.  */
	      strip_trailing_slashes (file_hdr.c_name);

	      /* Ignore the current directory.  It must already exist,
		 and we don't want to change its permission, ownership
		 or time.  */
	      if (file_hdr.c_name[0] == '.' && file_hdr.c_name[1] == '\0')
		break;

#ifdef HPUX_CDF
	      cdf_flag = 0;
#endif
	      if (!existing_dir)

		{
#ifdef HPUX_CDF
		  /* If the directory name ends in a + and is SUID,
		     then it is a CDF.  Strip the trailing + from
		     the name before creating it.  */
		  cdf_char = strlen (file_hdr.c_name) - 1;
		  if (cdf_char > 0
		      && file_hdr.c_mode & 04000
		      && file_hdr.c_name [cdf_char] == '+')
		    {
		      file_hdr.c_name [cdf_char] = '\0';
		      cdf_flag = 1;
		    }
#endif
		  res = mkdir (file_hdr.c_name, file_hdr.c_mode);
		}
	      else
		res = 0;
	      if (res < 0 && make_directories_option)
		{
		  create_all_directories (file_hdr.c_name);
		  res = mkdir (file_hdr.c_name, file_hdr.c_mode);
		}
	      if (res < 0)
		{
		  /* If we aren't allowed to create intermediate directories,
		     make the error message mention the parent directory.  */
		  if (!make_directories_option)
		    {
		      char *dirpart = dir_name (file_hdr.c_name);
		      struct stat dirpart_stat;

		      if (stat (dirpart, &dirpart_stat) < 0)
			error (0, errno, "%s", dirpart);
		      free (dirpart);
		      continue;
		    }
		  /* In some odd cases where the file_hdr.c_name includes `.',
		     the directory may have actually been created by
		     create_all_directories(), so the mkdir will fail because
		     the directory exists.  If that's the case, don't complain
		     about it.  */
		  if (errno != EEXIST
		      || lstat (file_hdr.c_name, &stat_info) != 0
		      || !S_ISDIR (stat_info.st_mode))
		    {
		      error (0, errno, "%s", file_hdr.c_name);
		      continue;
		    }
		}
	      if (!no_preserve_owner_option)
		if ((chown (file_hdr.c_name,
			    set_owner_flag ? set_owner : file_hdr.c_uid,
			    set_group_flag ? set_group : file_hdr.c_gid) < 0)
		    && errno != EPERM)
		  error (0, errno, "%s", file_hdr.c_name);
	      /* chown may have turned off some permissions we wanted. */
	      if (chmod (file_hdr.c_name, (int) file_hdr.c_mode) < 0)
		error (0, errno, "%s", file_hdr.c_name);
#ifdef HPUX_CDF
	      if (cdf_flag)
		/* Once we "hide" the directory with the chmod(),
		   we have to refer to it using name+ instead of name.  */
		file_hdr.c_name [cdf_char] = '+';
#endif
	      if (preserve_modification_time_option)
		{
		  times.actime = times.modtime = file_hdr.c_mtime;
		  if (utime (file_hdr.c_name, &times) < 0)
#if defined(__MSDOS__) || defined(DOSWIN)
		    /* MS-DOS/Windows won't let us to set mod times of
		       a directory.  Make the error message explicit.  */
		    if (errno == EACCES)
		      error (0, 0, "%s: Cannot set access time of a directory",
			     file_hdr.c_name);
		    else
#endif
		      error (0, errno, "%s", file_hdr.c_name);
		}
	      break;

#ifndef __MSDOS__
	    case CP_IFCHR:
	    case CP_IFBLK:
#ifdef CP_IFSOCK
	    case CP_IFSOCK:
#endif
#ifdef CP_IFIFO
	    case CP_IFIFO:
#endif
	      if (file_hdr.c_nlink > 1
		  && archive_format != V7_FORMAT
		  && archive_format != POSIX_FORMAT
		  && archive_format != GNUTAR_FORMAT)
		{
		  int link_res;
		  link_res = link_to_maj_min_ino (file_hdr.c_name,
						  file_hdr.c_dev_maj,
						  file_hdr.c_dev_min,
						  file_hdr.c_ino);
		  if (link_res == 0)
		    break;
		}
	      else if ((archive_format == POSIX_FORMAT
			|| archive_format == GNUTAR_FORMAT)
		       && file_hdr.c_tar_linkname
		       && file_hdr.c_tar_linkname [0] != '\0')
		{
		  int	link_res;
		  link_res = link_to_name (file_hdr.c_name,
					   file_hdr.c_tar_linkname);
		  if (link_res < 0)
		    {
		      error (0, errno, _("cannot link %s to %s"),
			     file_hdr.c_tar_linkname, file_hdr.c_name);
		      /* Something must be wrong, because we couldn't find the
			 file to link to.  But can we assume that the device
			 maj/min numbers are correct and fall through to the
			 mknod?  It's probably safer to just break, rather
			 than possibly creating a bogus device file.  */
		    }
		  break;
		}

	      res = mknod (file_hdr.c_name, file_hdr.c_mode,
			makedev (file_hdr.c_rdev_maj, file_hdr.c_rdev_min));
	      if (res < 0 && make_directories_option)
		{
		  create_all_directories (file_hdr.c_name);
		  res = mknod (file_hdr.c_name, file_hdr.c_mode,
			makedev (file_hdr.c_rdev_maj, file_hdr.c_rdev_min));
		}
	      if (res < 0)
		{
		  error (0, errno, "%s", file_hdr.c_name);
		  continue;
		}
	      if (!no_preserve_owner_option)
		if ((chown (file_hdr.c_name,
			    set_owner_flag ? set_owner : file_hdr.c_uid,
			    set_group_flag ? set_group : file_hdr.c_gid) < 0)
		    && errno != EPERM)
		  error (0, errno, "%s", file_hdr.c_name);
	      /* chown may have turned off some permissions we wanted. */
	      if (chmod (file_hdr.c_name, file_hdr.c_mode) < 0)
		error (0, errno, "%s", file_hdr.c_name);
	      if (preserve_modification_time_option)
		{
		  times.actime = times.modtime = file_hdr.c_mtime;
		  if (utime (file_hdr.c_name, &times) < 0)
		    error (0, errno, "%s", file_hdr.c_name);
		}
	      break;
#endif

#ifdef CP_IFLNK
	    case CP_IFLNK:
	      {
		if (archive_format != V7_FORMAT && archive_format != POSIX_FORMAT
		    && archive_format != GNUTAR_FORMAT)
		  {
		    link_name = (char *) xmalloc ((unsigned int) file_hdr.c_filesize + 1);
		    link_name[file_hdr.c_filesize] = '\0';
		    tape_buffered_read (link_name, in_file_des, file_hdr.c_filesize);
		    tape_skip_padding (in_file_des, file_hdr.c_filesize);
		  }
		else
		  {
		    link_name = xstrdup (file_hdr.c_tar_linkname);
		  }

		res = UMASKED_SYMLINK (link_name, file_hdr.c_name,
				       file_hdr.c_mode);
		if (res < 0 && make_directories_option)
		  {
		    create_all_directories (file_hdr.c_name);
		    res = UMASKED_SYMLINK (link_name, file_hdr.c_name,
					   file_hdr.c_mode);
		  }
		if (res < 0)
		  {
		    /* If we aren't allowed to create intermediate directories,
		       make the error message mention the parent directory.  */
		    if (!make_directories_option)
		      {
			char *dirpart = dir_name (file_hdr.c_name);
			struct stat dirpart_stat;

			if (stat (dirpart, &dirpart_stat) < 0)
			  error (0, errno, "%s", dirpart);
			free (dirpart);
		      }
		    else
		      error (0, errno, "%s", file_hdr.c_name);
		    free (link_name);
		    link_name = NULL;
		    continue;
		  }
#ifdef HAVE_LCHOWN
		/* On systems without lchown(), simply using chown()
		   is wrong.  */
		if (!no_preserve_owner_option)
		  if ((lchown (file_hdr.c_name,
			       set_owner_flag ? set_owner : file_hdr.c_uid,
			   set_group_flag ? set_group : file_hdr.c_gid) < 0)
		      && errno != EPERM)
		    error (0, errno, "%s", file_hdr.c_name);
#endif /* HAVE_LCHOWN */
		free (link_name);
		link_name = NULL;
	      }
	      break;
#endif /* CP_IFLNK */

	    default:
	      error (0, 0, _("%s: unsupported file type"), file_hdr.c_name);
	      tape_toss_input (in_file_des, file_hdr.c_filesize);
	      tape_skip_padding (in_file_des, file_hdr.c_filesize);
	    }

	  if (verbose_option)
	    fprintf (stderr, "%s\n", file_hdr.c_name);
	  if (dot_option)
	    fputc ('.', stderr);

	  /* FIXME shouldn't do this for every file; should maintain a
	     dstring somewhere.  */
	  free (file_hdr.c_name);
	  file_hdr.c_name = NULL;
	}
    }

  if (dot_option)
    fputc ('\n', stderr);

  if (append_option)
    return;

  if (archive_format == NEW_ASCII_FORMAT || archive_format == CRC_ASCII_FORMAT)
    create_final_defers ();

  if (! quiet_option)
    {
      res = (input_bytes + io_block_size - 1) / io_block_size;
      if (res == 1)
	fprintf (stderr, _("1 block\n"));
      else
	fprintf (stderr, _("%d blocks\n"), res);
    }
}

/*---------------------------------------------------------------------------.
| Print the file described by FILE_HDR in long format.  If LINK_NAME is      |
| nonzero, it is the name of the file that this file is a symbolic link to.  |
`---------------------------------------------------------------------------*/

void
long_format (struct new_cpio_header *file_hdr, char *link_name)
{
  char mbuf[11];
  char tbuf[40];
  time_t when;
  const char *name;

#if DOSWIN
  /* The S_IFfoo bits are different from the corresponding CP_IFfoo.  */
  cpio_mode_string (file_hdr->c_mode, mbuf);
#else
  mode_string (file_hdr->c_mode, mbuf);
#endif
  mbuf[10] = '\0';

  /* Get time values ready to print.  */
  when = file_hdr->c_mtime;
  strcpy (tbuf, ctime (&when));
  if (current_time - when > 6L * 30L * 24L * 60L * 60L
      || current_time - when < 0L)
    {
      /* The file is older than 6 months, or in the future.
	 Show the year instead of the time of day.  */
      strcpy (tbuf + 11, tbuf + 19);
    }
  tbuf[16] = '\0';

  printf ("%s %3u ", mbuf, file_hdr->c_nlink);

#ifndef __MSDOS__
  if (!numeric_uid_gid_option && (name = getuser (file_hdr->c_uid), name))
    printf ("%-8.8s ", name);
  else
#endif
    printf ("%-8u ", (unsigned int) file_hdr->c_uid);

#ifndef __MSDOS__
  if (!numeric_uid_gid_option && (name = getgroup (file_hdr->c_gid), name))
    printf ("%-8.8s ", name);
  else
#endif
    printf ("%-8u ", (unsigned int) file_hdr->c_gid);

#ifndef __MSDOS__
  if ((file_hdr->c_mode & CP_IFMT) == CP_IFCHR
      || (file_hdr->c_mode & CP_IFMT) == CP_IFBLK)
    printf ("%3u, %3u ", file_hdr->c_rdev_maj, file_hdr->c_rdev_min);
  else
#endif
    printf ("%8lu ", file_hdr->c_filesize);

  printf ("%s ", tbuf + 4);

  print_name_with_quoting (file_hdr->c_name);
  if (link_name)
    {
      printf (" -> ");
      print_name_with_quoting (link_name);
    }
  putc ('\n', stdout);
}

void
print_name_with_quoting (char *p)
{
  unsigned char c;

  while (c = *p++, c)
    {
      switch (c)
	{
#ifndef __MSDOS__
	case '\\':
	  printf ("\\\\");
	  break;
#endif

	case '\n':
	  printf ("\\n");
	  break;

	case '\b':
	  printf ("\\b");
	  break;

	case '\r':
	  printf ("\\r");
	  break;

	case '\t':
	  printf ("\\t");
	  break;

	case '\f':
	  printf ("\\f");
	  break;

	case ' ':
	  printf ("\\ ");
	  break;

	case '"':
	  printf ("\\\"");
	  break;

	default:
	  if (c > 040 &&
#ifdef __MSDOS__
	      c < 0377 && c != 0177
#else
	      c < 0177
#endif
	    )
	    putchar (c);
	  else
	    printf ("\\%03o", (unsigned int) c);
	}
    }
}

/*-----------------------------------------------------------------------.
| Read a pattern file (for the -E option).  Put a list of `num_patterns' |
| elements in `save_patterns'.  Any patterns that were already in        |
| `save_patterns' (from the command line) are preserved.                 |
`-----------------------------------------------------------------------*/

static void
read_pattern_file (void)
{
  int max_new_patterns;
  char **new_save_patterns;
  int new_num_patterns;
  int i;
  dynamic_string pattern_name;
  FILE *pattern_fp;

  if (num_patterns < 0)
    num_patterns = 0;
  max_new_patterns = 1 + num_patterns;
  new_save_patterns = (char **) xmalloc (max_new_patterns * sizeof (char *));
  new_num_patterns = num_patterns;
  ds_init (&pattern_name, 128);

  pattern_fp = fopen (pattern_file_name, "r");
  if (pattern_fp == NULL)
    error (1, errno, "%s", pattern_file_name);
  while (ds_fgetstr (pattern_fp, &pattern_name, '\n') != NULL)
    {
      if (new_num_patterns >= max_new_patterns)
	{
	  max_new_patterns += 1;
	  new_save_patterns = (char **)
	    xrealloc ((char *) new_save_patterns,
		      max_new_patterns * sizeof (char *));
	}
      new_save_patterns[new_num_patterns] = xstrdup (pattern_name.string);
      new_num_patterns++;
    }
  if (ferror (pattern_fp) || fclose (pattern_fp) == EOF)
    error (1, errno, "%s", pattern_file_name);

  for (i = 0; i < num_patterns; i++)
    new_save_patterns[i] = save_patterns[i];

  save_patterns = new_save_patterns;
  num_patterns = new_num_patterns;
}

/*---------------------------------------------------------------------------.
| Skip the padding on IN_FILE_DES after a header or file, up to the next     |
| header.  The number of bytes skipped is based on OFFSET -- the current     |
| offset from the last start of a header (or file) -- and the current header |
| type.                                                                      |
`---------------------------------------------------------------------------*/

void
tape_skip_padding (int in_file_des, int offset)
{
  int pad;

  switch (archive_format)
    {
    default:
      pad = 0;
      break;

    case BINARY_FORMAT:
    case HPUX_BINARY_FORMAT:
      pad = PADDING (offset, 2);
      break;

    case CRC_ASCII_FORMAT:
    case NEW_ASCII_FORMAT:
      pad = PADDING (offset, 4);
      break;

    case GNUTAR_FORMAT:
    case POSIX_FORMAT:
    case V7_FORMAT:
      pad = PADDING (offset, BLOCKSIZE);
      break;
    }

  if (pad != 0)
    tape_toss_input (in_file_des, pad);
}

/* The newc and crc formats store multiply linked copies of the same file
   in the archive only once.  The actual data is attached to the last link
   in the archive, and the other links all have a filesize of 0.  When a
   file in the archive has multiple links and a filesize of 0, its data is
   probably "attached" to another file in the archive, so we can't create
   it right away.  We have to "defer" creating it until we have created
   the file that has the data "attached" to it.  We keep a list of the
   "defered" links on deferments.  */
struct deferment *deferments = NULL;

/*---------------------------------------------------------------------------.
| Add a file header to the deferments list.  For now they all just go on one |
| list, although we could optimize this if necessary.                        |
`---------------------------------------------------------------------------*/

static void
defer_copyin (struct new_cpio_header *file_hdr)
{
  struct deferment *d = create_deferment (file_hdr);

  d->next = deferments;
  deferments = d;
}

/*---------------------------------------------------------------------------.
| We just created a file that (probably) has some other links to it which    |
| have been defered.  Go through all of the links on the deferments list and |
| create any which are links to this file.                                   |
`---------------------------------------------------------------------------*/

static void
create_defered_links (struct new_cpio_header *file_hdr)
{
  struct deferment *d;
  struct deferment *d_prev;
  int ino = file_hdr->c_ino;
  int maj = file_hdr->c_dev_maj;
  int min = file_hdr->c_dev_min;
  int link_res;

  d = deferments;
  d_prev = NULL;
  while (d != NULL)
    {
      if (d->header.c_ino == ino
	  && d->header.c_dev_maj == maj
	  && d->header.c_dev_min == min)
	{
	  struct deferment *d_free;
	  link_res = link_to_name (d->header.c_name, file_hdr->c_name);
	  if (link_res < 0)
	    {
	      error (0, errno, _("cannot link %s to %s"),
		     d->header.c_name, file_hdr->c_name);
	    }
	  if (d_prev != NULL)
	    d_prev->next = d->next;
	  else
	    deferments = d->next;
	  d_free = d;
	  d = d->next;
	  free_deferment (d_free);
	}
      else
	{
	  d_prev = d;
	  d = d->next;
	}
    }
}

/*---------------------------------------------------------------------------.
| If we had a multiply linked file that really was empty then we would have  |
| defered all of its links, since we never found any with data "attached",   |
| and they will still be on the deferment list even when we are done reading |
| the whole archive.  Write out all of these empty links that are still on   |
| the deferments list.                                                       |
`---------------------------------------------------------------------------*/

static void
create_final_defers (void)
{
  struct deferment *d;
  int	link_res;
  int	out_file_des;
  struct utimbuf times;		/* For setting file times.  */
  /* Initialize this in case it has members we don't know to set.  */
  memset (&times, 0, sizeof (struct utimbuf));

  for (d = deferments; d != NULL; d = d->next)
    {
      link_res = link_to_maj_min_ino (d->header.c_name,
				      d->header.c_dev_maj,
				      d->header.c_dev_min,
				      d->header.c_ino);
      if (link_res == 0)
	continue;

      out_file_des = open (d->header.c_name,
			   O_CREAT | O_WRONLY | O_BINARY, 0600);
      if (out_file_des < 0 && make_directories_option)
	{
	  create_all_directories (d->header.c_name);
	  out_file_des = open (d->header.c_name,
			       O_CREAT | O_WRONLY | O_BINARY,
			       0600);
	}
      if (out_file_des < 0)
	{
	  error (0, errno, "%s", d->header.c_name);
	  continue;
	}

      if (close (out_file_des) < 0)
	error (0, errno, "%s", d->header.c_name);

      /* File is now copied; set attributes.  */
      if (!no_preserve_owner_option)
	if ((chown (d->header.c_name,
		    set_owner_flag ? set_owner : d->header.c_uid,
	       set_group_flag ? set_group : d->header.c_gid) < 0)
	    && errno != EPERM)
	  error (0, errno, "%s", d->header.c_name);
      /* chown may have turned off some permissions we wanted. */
      if (chmod (d->header.c_name, (int) d->header.c_mode) < 0)
	error (0, errno, "%s", d->header.c_name);
      if (preserve_modification_time_option)
	{
	  times.actime = times.modtime = d->header.c_mtime;
	  if (utime (d->header.c_name, &times) < 0)
	    error (0, errno, "%s", d->header.c_name);
	}
    }
}
