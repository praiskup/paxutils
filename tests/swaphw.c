#include "system.h"

/*---------------------------------------------------------------------------.
| Prints a file with its halfwords (16 bits) swapped if the file has an even |
| number of halfwords.  If it does not have an even number of halfwords,     |
| swaphw prints the file unchanged.                                          |
`---------------------------------------------------------------------------*/

/* $ cat foo
   abc
   $ ./swaphw foo
   c
   ba$ cat bar
   de
   $ ./swaphw bar
   de
   $
*/

main (argc, argv)
     int argc;
     char *argv[];
{
  int length;
  int fd;
  short	buf[2];
  short	c;

  fd = open (argv[1], 0);
  if (fd < 0)
    exit (1);
  length = lseek (fd, 0, SEEK_END);
  lseek (fd, 0, SEEK_SET);
  if (length % 4 != 0)
    justcopy (fd);
  while (read (fd, buf, 4) == 4) {
    c = buf[0];
    buf[0] = buf[1];
    buf[1] = c;
    write (1, buf, 4);
  }
  exit (0);
}

justcopy (fd)
     int fd;
{
  char buf[512];
  int bytes_read;

  while (bytes_read = read (fd, buf, 512), bytes_read > 0)
    write (1, buf, bytes_read);
  exit (1);
}
