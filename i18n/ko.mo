��    �      4  �   L
      �  K   �  ?     -  U  �  �       !   $  7   F  +   ~  �   �     a     p  �   }       "   /     R  2   p     �     �  $   �               4     L     h     y     �  #   �  "   �     �          &     ?     U     l     �     �  2   �     �  (      "   )     L     ]  "   o  5   �     �     �     �          .     A     \     r     �     �  <   �     �                0     D     U     r  "   �  $   �     �     �     �            !   ,  +   N  !   z  #   �  "   �     �  #   �          ,     H  "   a     �  0   �     �  #   �  "     (   <     e     �     �      �     �     �     �               6  ,   N     {     �     �     �  ,   �     �  Y  	     c     |     �     �     �     �     �  +   �     +      A      W      p      �      �   1   �   )   �   /   
!  2   :!  4   m!  (   �!  1   �!  %   �!  0   #"  +   T"  1   �"     �"     �"     �"     �"  %   �"  (   #  <   G#     �#     �#     �#     �#     �#  %   �#     $     "$     <$  &   R$     y$     �$     �$     �$     �$     �$  !   �$     %     2%  3   F%     z%     �%     �%     �%     �%     �%  %  �%  H   '  <   M'  Z  �'  �  �(     �+      �+  ;   ,  -   N,  �   |,     4-     C-  �   O-     �-  %   .  "   5.  ,   X.     �.     �.  +   �.     �.     /     '/     C/     ]/     l/     �/  '   �/  "   �/  &   �/     
0     *0     J0     h0     �0     �0     �0  -   �0     �0  (   1  +   91     e1     ~1  "   �1  )   �1      �1     2     "2      A2      b2     �2     �2     �2     �2     �2  D   3     Q3     e3     �3     �3     �3     �3     �3      4  *   &4     Q4     l4  !   �4     �4      �4  $   �4  .   5  $   15  '   V5  )   ~5     �5     �5     �5     �5  "   6     76     S6  3   f6     �6  "   �6  &   �6  .   7  +   27     ^7     t7  !   �7     �7  !   �7     �7     �7     	8     "8  '   =8     e8     ~8     �8     �8  .   �8     �8  7  9     =:     U:     s:     �:     �:     �:     �:  +   �:  #   ;     0;     H;     _;     };     �;  1   �;  +   �;  /   <  /   3<  4   c<  (   �<  -   �<  %   �<  0   =  ,   F=  1   s=     �=     �=     �=     �=  (   �=  &   >  9   6>     p>     �>     �>     �>     �>  '   �>     �>     ?     ;?  ,   N?     {?     �?     �?     �?  $   �?     �?  $   �?     $@     9@  1   J@     |@     �@     �@     �@  
   �@  
   �@        �       9   L   s           �   
           [   m      A              f              i   �   !   q   t   @   �   X   �   4   `   �   z   S   8   <   W               M      l   3       c          G              v   \      )   C   *      ^   B   {       �      J   #       �           �   �   ]          >          e   �      �   �   (          &   6   +   �   x       N      2   �       T       ~   �           u   �   r       �       a   %   j          I   F       H       U   h                    w   P           �   �   0       ,   Z   -   V   o   p      =       �   .   R   g   �   �   K       }   �   �       /   O   �   :   �                   �   �           |       d             �   ?   5   $                         n                  7   �   "   Q       y   _   �   ;   Y   D                 1   �          '   �   E   k   b   �   	   �           
Copyright (C) 1988, 92, 93, 94, 95, 96, 97 Free Software Foundation, Inc.
 
Copyright (C) 1995, 1996, 1997 Free Software Foundation, Inc.
 
Device blocking:
  -b, --blocking-factor=BLOCKS   BLOCKS x 512 bytes per record
      --record-size=SIZE         SIZE bytes per record, multiple of 512
  -i, --ignore-zeros             ignore zeroed blocks in archive (means EOF)
  -B, --read-full-records        reblock as we read (for 4.2BSD pipes)
 
Device selection and switching:
  -f, --file=ARCHIVE             use archive file or device ARCHIVE
      --force-local              archive file is local even if has a colon
      --rsh-command=COMMAND      use remote COMMAND instead of rsh
  -[0-7][lmh]                    specify drive and density
  -M, --multi-volume             create/list/extract multi-volume archive
  -L, --tape-length=NUM          change tape after writing NUM x 1024 bytes
  -F, --info-script=FILE         run script at end of each tape (implies -M)
      --new-volume-script=FILE   same as -F FILE
      --volno-file=FILE          use/update the volume number in FILE
 
Usage: %s [OPTION]...
 
Usage: %s [OPTION]... [FILE]...
 
Written by Fran�ois Pinard <pinard@iro.umontreal.ca>.
 
Written by John Gilmore and Jay Fenlason.
   -N, --newer=DATE             only store files newer than DATE
      --newer-mtime            compare date and time when data changed only
      --after-date=DATE        same as -N
  (core dumped)  link to %s
  n [name]   Give a new file name for the next (and subsequent) volume(s)
 q          Abort tar
 !          Spawn a subshell
 ?          Print this list
  unknown file type `%c'
 %s is not continued on this volume %s is the archive; not dumped %s: Could not change access and modification times %s: Could not create directory %s: Could not create file %s: Could not create symlink to `%s' %s: Could not link to `%s' %s: Could not make fifo %s: Could not make node %s: Could not write to file %s: Deleting %s
 %s: Error while closing %s: Not found in archive %s: Unknown file type; file ignored %s: Was unable to backup this file %s: is unchanged; not dumped ((child)) Pipe to stdin ((child)) Pipe to stdout (child) Pipe to stdin (child) Pipe to stdout (grandchild) Pipe to stdin (grandchild) Pipe to stdout --Volume Header--
 Added write and execute permission to directory %s Ambiguous pattern `%s' Amount actually written is (I hope) %d.
 Archive not labelled to match `%s' Archive to stdin Archive to stdout At beginning of tape, quitting now Attempting extraction of symbolic links as hard links Cannot add directory %s Cannot add file %s Cannot allocate buffer space Cannot change to directory %s Cannot chdir to %s Cannot close descriptor %d Cannot close file #%d Cannot exec %s Cannot exec a shell %s Cannot execute remote shell Cannot extract `%s' -- file is continued from another volume Cannot open %s Cannot open archive %s Cannot open directory %s Cannot open file %s Cannot open pipe Cannot properly duplicate %s Cannot read %s Cannot read confirmation from user Cannot read from compression program Cannot read link %s Cannot remove %s Cannot rename %s to %s Cannot stat %s Cannot symlink %s to %s Cannot update compressed archives Cannot use multi-volume compressed archives Cannot verify compressed archives Cannot verify multi-volume archives Cannot verify stdin/stdout archive Cannot write to %s Cannot write to compression program Child cannot fork Child died with signal %d%s Child returned status %d Conflicting archive format options Conflicting compression options Could not allocate memory for blocking factor %d Could not get current directory Could not get current directory: %s Could not re-position archive file Could not rewind archive file for verify Could only read %d of %ld bytes Creating directory: Data differs Deleting non-header from archive Device numbers changed Directory %s has been renamed Directory %s is new Does not exist Error while closing %s Error while deleting %s Extracting contiguous files as regular files File does not exist File name %s%s too long File name %s/%s too long Garbage command Generate data files for GNU tar test suite.
 Gid differs If a long option shows an argument as mandatory, then it is mandatory
for the equivalent short option also.

  -l, --file-length=LENGTH   LENGTH of generated file
  -p, --pattern=PATTERN      PATTERN is `default' or `zeros'
      --help                 display this help and exit
      --version              output version information and exit
 Invalid date format `%s' Invalid mode given on option Memory exhausted Missing file name after -C Mod time differs Mode differs Mode or device-type changed Multiple archive files requires `-M' option No archive name given No longer a directory No new volume; exiting.
 No such file or directory Not a regular file Not linked to %s Obsolete option name replaced by --absolute-names Obsolete option name replaced by --backup Obsolete option name replaced by --block-number Obsolete option name replaced by --blocking-factor Obsolete option name replaced by --read-full-records Obsolete option name replaced by --touch Obsolete option, now implied by --blocking-factor Old option `%c' requires an argument. Options `-%s' and `-%s' both want standard input Options `-Aru' are incompatible with `-f -' Options `-[0-7][lmh]' not supported by *this* tar Premature end of file Read checkpoint %d Read error on %s Reading %s
 Record size must be a multiple of %d. Removing leading `/' from absolute links Removing leading `/' from absolute path names in the archive Renamed %s to %s Size differs Skipping to next header Symlink differs Symlinked %s to %s This does not look like a tar archive This volume is out of sequence Too many errors, quitting Total bytes written:  Try `%s --help' for more information.
 Uid differs Unknown pattern `%s' Unknown system error Verify  Volume `%s' does not match `%s' WARNING: Archive is incomplete WARNING: Cannot close %s (%d, %d) WARNING: No volume header Write checkpoint %d You may not specify more than one `-Acdtrux' option exec/tcp: Service not available rmtd: Garbage command %c
 stdin stdout tar (child) tar (grandchild) Project-Id-Version: GNU tar 1.12
POT-Creation-Date: 1998-02-19 21:41-0500
PO-Revision-Date: 1997-05-30 22:55+0900
Last-Translator: Bang Jun-Young <bangjy@nownuri.net>
Language-Team: Korean <ko@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=EUC-KR
Content-Transfer-Encoding: 8-bit
 
���۱� (C) 1988, 92, 93, 94, 95, 96, 97 Free Software Foundation, Inc.
 
���۱� (C) 1995, 1996, 1997 Free Software Foundation, Inc.
 
��ġ ���� ����:
  -b, --blocking-factor=BLOCK    ���ڵ�� BLOCK x 512 ����Ʈ
      --record-size=SIZE         ���ڵ�� SIZE ����Ʈ, 512�� ���
  -i, --ignore-zeros             ��ī�̺꿡�� ������ �� ������ �����մϴ�
                                 (EOF�� �ǹ���)
  -B, --read-full-records        ���� ���� �����ȭ�մϴ� (4.2BSD ������������)
 
��ġ ���ð� ��ȯ:
  -f, --file=ARCHIVE             ��ī�̺� ���� �Ǵ� ARCHIVE ��ġ�� ����մϴ�
      --force-local              �̸��� �ݷ��� �ִ� ��ī�̺� ���ϵ� ���� ���Ϸ�
                                 �ν��մϴ�
      --rsh-command=COMMAND      rsh ��� ���� COMMAND�� ����մϴ�
  -[0-7][lmh]                    ����̺�� ��� �е��� �����մϴ�
  -M, --multi-volume             ���� ���� ��ī�̺긦 ����/���/�����մϴ�
  -L, --tape-length=NUM          NUM x 1024 ����Ʈ�� �� �ڿ� �������� �ٲߴϴ�
  -F, --info-script=FILE         �� �������� ������ ��ũ��Ʈ�� �����մϴ�
                                 (-M�� ������)
      --new-volume-script=FILE   -F FILE�� ����
      --volno-file=FILE          FILE �ȿ� �ִ� ���� ��ȣ�� ���/�����մϴ�
 
����: %s [�ɼ�]...

 
����: %s [�ɼ�]... [����]...
 
Fran�ois Pinard <pinard@iro.umontreal.ca>�� ��������ϴ�.
 
John Gilmore�� Jay Fenlason�� ��������ϴ�.
   -N, --newer=DATE             DATE ������ ���ϵ鸸 �����մϴ�
      --newer-mtime            �����Ͱ� �ٲ���� ���� ��¥�� �ð��� ���մϴ�
      --after-date=DATE        -N�� ����
  (�ھ� ��µ�)  %s�� ��ũ
  n [�̸�]   ����(�� �� ������) ������ ���� �� ���� �̸��� �����մϴ�
 q          tar�� �ߴ��մϴ�
 !          ������� �����մϴ�
 ?          �� ����� �μ��մϴ�
  �� �� ���� ���� Ÿ�� `%c'
 %s�� �� ������ ���ӵǾ� ���� �ʽ��ϴ� %s�� ��ī�̺��Դϴ�; �������� ���� %s: ���� �ð��� ���� �ð��� �ٲ� �� �����ϴ� %s: ���丮�� ���� �� �����ϴ� %s: ������ ���� �� �����ϴ� %s: `%s'�� ���� ��ȣ��ũ�� ���� �� �����ϴ� %s: `%s'�� ��ũ�� �� �����ϴ� %s: fifo�� ���� �� �����ϴ� %s: ��带 ���� �� �����ϴ� %s: ���Ͽ� �� �� �����ϴ� %s: %s�� ����
 %s: �ݴ� ���� ���� �߻� %s: ��ī�̺꿡 ���� %s: �� �� ���� ���� Ÿ��; ������ ���õ� %s: �� ������ ����� �� �������ϴ� %s: ������� �ʾҽ��ϴ�; �������� ���� ((�ڽ�)) ǥ���Է¿� ���� ������ ((�ڽ�)) ǥ����¿� ���� ������ (�ڽ�) ǥ���Է¿� ���� ������ (�ڽ�) ǥ����¿� ���� ������ (����) ǥ���Է¿� ���� ������ (����) ǥ����¿� ���� ������ --���� ���--
 %s ���丮�� ����� ���� ������ �ΰ��߽��ϴ� ��ȣ�� ���� `%s' ������ ������ ���� (�ٶ�Ǵ�) %d�Դϴ�.
 `%s'�� ��ġ�ϵ��� ���� ���� ���� ��ī�̺� ǥ���Է¿� ���� ��ī�̺� ǥ����¿� ���� ��ī�̺� �������� ���� �κп��� ���� ������ ��ȣ ��ũ�� �ϵ� ��ũ�� �����ϰ� �ֽ��ϴ� %s ���丮�� �߰��� �� �����ϴ� ���� %s�� �߰��� �� �����ϴ� ���� ������ �Ҵ��� �� �����ϴ� %s�� ���丮�� �ٲ� �� �����ϴ� %s�� ���丮�� �ٲ� �� �����ϴ� ����� %d�� ���� �� �����ϴ� ���� #%d�� ���� �� �����ϴ� %s�� ������ �� �����ϴ� %s ���� ������ �� �����ϴ� ���� ���� ������ �� �����ϴ� `%s'�� ������ �� �����ϴ� -- �� ������ �ٸ� ������ ���ӵǾ� �ֽ��ϴ� %s�� �� �� �����ϴ� %s ��ī�̺긦 �� �� �����ϴ� %s ���丮�� �� �� �����ϴ� %s ������ �� �� �����ϴ� �������� �� �� �����ϴ� %s�� ����� ������ �� �����ϴ� %s�� ���� �� �����ϴ� ������� Ȯ���� ���� �� �����ϴ� ���� ���α׷����κ��� �о���� �� �����ϴ� ��ũ %s�� ���� �� �����ϴ� %s�� ���� �� �����ϴ� %s�� %s�� �̸��� �ٲ� �� �����ϴ� %s�� stat�� �� �����ϴ� %s�� %s�� ��ȣ��ũ�� �� �����ϴ� ����� ��ī�̺긦 ������ �� �����ϴ� ����� ����-���� ��ī�̺긦 ����� �� �����ϴ� ����� ��ī�̺긦 ������ �� �����ϴ� ����-���� ��ī�̺긦 ������ �� �����ϴ� ǥ����/��� ��ī�̺긦 ������ �� �����ϴ� %s�� �� �� �����ϴ� ���� ���α׷��� �� �� �����ϴ� �ڽ��� fork�� �� �����ϴ� �ڽ��� ��ȣ %d%s�� �Բ� �׾��� �ڽ��� ���� %d�� �ǵ��� �־����ϴ� �򰥸��� ��ī�̺� ���� �ɼ� �򰥸��� ���� �ɼ� ���� ��� %d�� �����ϴ� �޸𸮸� �Ҵ��� �� �����ϴ� ���� ���丮�� �� �� �����ϴ� ���� ���丮�� �� �� �����ϴ�: %s ��ī�̺� ������ ����ġ��ų �� �����ϴ� ������ ���� ��ī�̺� ������ �ǰ��� �� �����ϴ� %d ����Ʈ(%ld ����Ʈ ��)�� ���� �� �ֽ��ϴ� ���丮�� ����� ��: �ڷᰡ �ٸ��ϴ� ��ī�̺꿡�� ����� �κ��� ������ ��ġ ��ȣ�� �ٲ���� %s ���丮�� �̸��� �ٲ�����ϴ� %s�� �� ���丮�Դϴ� �� �������� �ʽ��ϴ� %s�� �ݴ� ���� ���� �߻� %s�� ����� ���� ���� �߻� ���ӵǾ� �ִ� ������ �Ϲ� ���Ϸ� ������ ������ �������� �ʽ��ϴ� ���� �̸� %s%s�� �ʹ� ��ϴ� ���� �̸� %s/%s�� �ʹ� ��ϴ� ������� ���� GNU tar ���� ������ ������ ������ �����մϴ�.
 gid�� �ٸ��ϴ� �� �ɼǿ� �ΰ��Ǵ� �μ��� ���� ��, �̴� ������ �ǹ��� ª�� �ɼǿ���
����˴ϴ�.

  -l, --file-length=����     �����Ǵ� ������ ����
  -p, --pattern=����         ������ `default'�� `zeros'�Դϴ�
      --help                 �� ������ �����ְ� ��Ĩ�ϴ�
      --version              ���� ������ ����ϰ� ��Ĩ�ϴ�
 �������� ��¥ ���� `%s' �ɼǿ� �������� ��尡 �־��� �޸𸮰� �ٴڳ� -C �ڿ� ���� �̸��� ������ ���� �ð��� �ٸ��ϴ� ��尡 �ٸ��ϴ� ��� �Ǵ� ��ġ Ÿ���� ����� ���� ��ī�̺� ������ `-M' �ɼ��� �ʿ��մϴ� ��ī�̺� �̸��� �־����� �ʾҽ��ϴ� �� �̻� ���丮�� �ƴ� �� ������ �ƴ�; ����.
 �׷� �����̳� ���丮�� ���� �Ϲ����� ������ �ƴ� %s�� ������� ���� --absolute-names�� ��ü�Ǿ� ������� �� �ɼ� �̸� --backup���� ��ü�Ǿ� ������� �� �ɼ� �̸� --block-number�� ��ü�Ǿ� ������� �� �ɼ� �̸� --block-factor�� ��ü�Ǿ� ������� �� �ɼ� �̸� --read-full-records�� ��ü�Ǿ� ������� �� �ɼ� �̸� --touch�� ��ü�Ǿ� ������� �� �ɼ� �̸� --blocking-factor�� ���ԵǾ� ������� �� �ɼ� ������ �ɼ� `%c'�� �μ��� �ʿ��մϴ�. `-%s'�� `-%s' �ɼ��� ��� ǥ�� �Է��� �ʿ��մϴ� `-Aru' �ɼ��� `-f -'�� ���ÿ� �� �� �����ϴ� `-[0-7][lmh]' �ɼ��� �� tar���� �������� �ʽ��ϴ� �߸��� ���� �� �˻����� %d�� ���� %s���� �б� ���� %s�� �д� ��
 ���ڵ� ũ��� %d�� ����� �Ǿ�� �մϴ�. ���� ��ũ�鿡�� �տ� ���� `/'�� ������ ��ī�̺� �ȿ� �ִ� ���� ��θ����� �տ� ���� `/'�� ������ %s�� %s�� �̸� �ٲ� ũ�Ⱑ �ٸ��ϴ� ���� ����� �ǳ� �� ��ȣ��ũ�� �ٸ��ϴ� %s���� %s�� ��ȣ��ũ�Ǿ��� �̰��� tar ��ī�̺�ó�� ������ �ʽ��ϴ� �� ������ ������ ������ϴ� ������ �ʹ� ���Ƽ� �����մϴ� �� ������ ����Ʈ:  �� ���� ������ ������ `%s --help' �Ͻʽÿ�.
 uid�� �ٸ��ϴ� �� �� ���� ���� `%s' �� �� ���� �ý��� ���� ����  ���� `%s'�� `%s'�� ��ġ���� �ʽ��ϴ� ���: ��ī�̺갡 �ҿ����մϴ� ���: %s�� ���� �� �����ϴ� (%d, %d) ���: ���� ��� ���� �˻����� %d�� �� `-Acdtrux' �ɼ� �� �ϳ� �̻��� �����ϸ� �� �˴ϴ� exec/tcp: �� �� ���� ���� rmtd: ������� ���� %c
 ǥ���Է� ǥ����� tar (�ڽ�) tar (����) 