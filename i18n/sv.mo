��    �      �  �   <      �  +   �  K   %  ?   q  -  �  �  �  �   h  �  �  7  �       !   .  7   P  +   �  �   �     k     z  �   �        	   9  "   C     f  2   �     �     �  $   �          0     H     `     |     �     �  #   �  "   �          "     :     S     i     �     �     �     �  2   �       (   ,  "   U     x     �  "   �  5   �     �               <     Z     m     �     �     �     �  <   �          ,     C     \     p     �     �  "   �  $   �     �     	            1      O      ^      r   !   �   +   �   !   �   #   �   "   !     A!  #   T!     x!     �!     �!  "   �!     �!  0   "  A   3"     u"  #   �"  "   �"  (   �"     #  ,   %#     R#     f#      s#     �#     �#     �#     �#     �#     $  ,   $     H$     \$     t$  2   �$     �$  ,   �$     �$  Y  	%     c&     |&     �&     �&     �&     �&     �&     �&  +   '     H'     ^'     t'     �'     �'     �'  1   �'  )   �'  /   '(  2   W(  4   �(  (   �(  1   �(  %   )  0   @)  +   q)  1   �)     �)     �)     �)     	*  %   *  (   ;*  <   d*     �*     �*     �*     �*     �*  %   �*  �    +     �+     �+     �+  &   ,     .,     :,     X,     m,     �,     �,     �,  !   �,     �,     -  +   -  3   E-     y-     �-     �-     �-     �-     �-  7  �-  9   /  I   O/  =   �/  R  �/  �  *1  �   4  �  �4  ~  ^7     �8  %   �8  7    9  +   X9  �   �9     ::     K:  �   Z:     ;  
   ;       ;     A;  1   _;     �;     �;  -   �;     �;     <     .<     M<     l<     }<     �<  !   �<     �<  !   �<     =     .=     G=     c=     =     �=     �=     �=  ;   �=     >  ,   6>  -   c>     �>     �>     �>  5   �>      ?     6?     S?     m?     �?     �?     �?     �?     �?     @  B   -@     p@     �@     �@     �@     �@     �@     �@  )   
A  *   4A     _A     uA      �A  !   �A     �A     �A  $   B  &   )B  -   PB  &   ~B  #   �B  '   �B     �B  ,   	C     6C     LC  "   gC     �C      �C  ,   �C  @   �C  !   9D  1   [D  %   �D  8   �D     �D      E     ,E     <E  $   JE     oE     �E     �E     �E     �E  $   �E  1   F     4F     IF     eF  4   �F     �F  )   �F     �F  ?  �F     =H  %   WH     }H     �H     �H     �H  %   �H     �H  '   I     8I     II     `I      {I     �I     �I  ,   �I  $   �I  *   J  -   @J  /   nJ  #   �J  7   �J  '   �J  9   "K  +   \K  ;   �K     �K     �K     �K  	   �K  (   L  +   -L  7   YL     �L     �L     �L     �L     �L  '   M  �   :M  &   �M      N     N  ,   4N     aN     nN     �N     �N     �N  '   �N  !   �N  $   O     (O     BO  5   [O  -   �O  &   �O     �O     P     P  
   P     $P     �          4       �   @          x               �       u       W   Z   q   N   �   �   Y   =           s   �   j   �   �   2   ]       �   H   w   �   t   P   T   �   �   L          X   �   9          �   �       #   �   i   8           �   �   /       d      �          f       �   7   `   R       !   (   �   �   �       D   V                 ,       �          �   .   \   *       6   I              '   |      v           �   +   n   C   0   A               �       �   -   �   �       S       �          _   G      m   >   �   b       B   �      
   ;          l   o         �   F      :                   3   �   k   <      ?       �   z   �   �   "      )             U   �       �   ~   1      M   y          J       Q   �   p              �   E       �   }   ^   h          	   a   {   g   5   �   e         [       �       �   �           K   r   �   $   �   �   &           %   O   c                   �       Prepare volume #%d for %s and hit return:  
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
If a long option shows an argument as mandatory, then it is mandatory
for the equivalent short option also.  Similarly for optional arguments.
 
Local file selection:
  -C, --directory=DIR          change to directory DIR
  -T, --files-from=NAME        get names to extract or create from file NAME
      --null                   -T reads null-terminated names, disable -C
      --exclude=PATTERN        exclude files, given as a globbing PATTERN
  -X, --exclude-from=FILE      exclude globbing patterns listed in FILE
  -P, --absolute-names         don't strip leading `/'s from file names
  -h, --dereference            dump instead the files symlinks point to
      --no-recursion           avoid descending automatically in directories
  -l, --one-file-system        stay in local file system when creating archive
  -K, --starting-file=NAME     begin at file NAME in the archive
 
The backup suffix is `~', unless set with --suffix or SIMPLE_BACKUP_SUFFIX.
The version control may be set with --backup or VERSION_CONTROL, values are:

  t, numbered     make numbered backups
  nil, existing   numbered if numbered backups exist, simple otherwise
  never, simple   always make simple backups
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
 %d at %d
 %s is not continued on this volume %s is the archive; not dumped %s: Could not change access and modification times %s: Could not create directory %s: Could not create file %s: Could not create symlink to `%s' %s: Could not link to `%s' %s: Could not make fifo %s: Could not make node %s: Could not write to file %s: Deleting %s
 %s: Error while closing %s: Not found in archive %s: Unknown file type; file ignored %s: Was unable to backup this file %s: is unchanged; not dumped ((child)) Pipe to stdin ((child)) Pipe to stdout (child) Pipe to stdin (child) Pipe to stdout (grandchild) Pipe to stdin (grandchild) Pipe to stdout --Mangled file names--
 --Volume Header--
 Added write and execute permission to directory %s Ambiguous pattern `%s' Amount actually written is (I hope) %d.
 Archive not labelled to match `%s' Archive to stdin Archive to stdout At beginning of tape, quitting now Attempting extraction of symbolic links as hard links Cannot add directory %s Cannot add file %s Cannot allocate buffer space Cannot change to directory %s Cannot chdir to %s Cannot close descriptor %d Cannot close file #%d Cannot exec %s Cannot exec a shell %s Cannot execute remote shell Cannot extract `%s' -- file is continued from another volume Cannot open %s Cannot open archive %s Cannot open directory %s Cannot open file %s Cannot open pipe Cannot properly duplicate %s Cannot read %s Cannot read confirmation from user Cannot read from compression program Cannot read link %s Cannot remove %s Cannot rename %s to %s Cannot seek to %ld in file %s Cannot stat %s Cannot stat file %s Cannot symlink %s to %s Cannot update compressed archives Cannot use multi-volume compressed archives Cannot verify compressed archives Cannot verify multi-volume archives Cannot verify stdin/stdout archive Cannot write to %s Cannot write to compression program Child cannot fork Child died with signal %d%s Child returned status %d Conflicting archive format options Conflicting compression options Could not allocate memory for blocking factor %d Could not backspace archive file; it may be unreadable without -i Could not get current directory Could not get current directory: %s Could not re-position archive file Could not rewind archive file for verify Could only read %d of %ld bytes Cowardly refusing to create an empty archive Creating directory: Data differs Deleting non-header from archive Device numbers changed Directory %s has been renamed Directory %s is new Does not exist Error while closing %s Error while deleting %s Extracting contiguous files as regular files File does not exist File name %s%s too long File name %s/%s too long GNU features wanted on incompatible archive format Garbage command Generate data files for GNU tar test suite.
 Gid differs If a long option shows an argument as mandatory, then it is mandatory
for the equivalent short option also.

  -l, --file-length=LENGTH   LENGTH of generated file
  -p, --pattern=PATTERN      PATTERN is `default' or `zeros'
      --help                 display this help and exit
      --version              output version information and exit
 Invalid date format `%s' Invalid mode given on option Memory exhausted Missing file name after -C Mod time differs Mode differs Mode or device-type changed More than one threshold date Multiple archive files requires `-M' option No archive name given No longer a directory No new volume; exiting.
 No such file or directory Not a regular file Not linked to %s Obsolete option name replaced by --absolute-names Obsolete option name replaced by --backup Obsolete option name replaced by --block-number Obsolete option name replaced by --blocking-factor Obsolete option name replaced by --read-full-records Obsolete option name replaced by --touch Obsolete option, now implied by --blocking-factor Old option `%c' requires an argument. Options `-%s' and `-%s' both want standard input Options `-Aru' are incompatible with `-f -' Options `-[0-7][lmh]' not supported by *this* tar Premature end of file Read checkpoint %d Read error on %s Reading %s
 Record size must be a multiple of %d. Removing leading `/' from absolute links Removing leading `/' from absolute path names in the archive Renamed %s to %s Size differs Skipping to next header Symlink differs Symlinked %s to %s This does not look like a tar archive This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 This volume is out of sequence Too many errors, quitting Total bytes written:  Try `%s --help' for more information.
 Uid differs Unknown demangling command %s Unknown pattern `%s' Unknown system error Verify  Volume `%s' does not match `%s' WARNING: Archive is incomplete WARNING: Cannot close %s (%d, %d) WARNING: No volume header Write checkpoint %d Write to compression program short %d bytes You may not specify more than one `-Acdtrux' option exec/tcp: Service not available rmtd: Garbage command %c
 stdin stdout tar (child) tar (grandchild) Project-Id-Version: tar 1.12
POT-Creation-Date: 1998-02-19 21:41-0500
PO-Revision-Date: $Date: 1997-05-01 14:55:12+02:00 $
Last-Translator: Jan Dj�rv <Jan.Djarv@mbox200.swipnet.se>
Language-Team: Swedish <sv@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
 G�r iordning volym nummer %d f�r %s och tryck vagnretur: 
Copyright � 1988, 92, 93, 94, 95, 96, 97 Free Software Foundation, Inc.
 
Copyright � 1995, 1996, 1997 Free Software Foundation, Inc.
 
Blockhantering:
  -b, --blocking-factor=BLOCK    BLOCK x 512 byte per post
      --record-size=ANTAL        ANTAL byte per post, multipel av 512
  -i, --ignore-zeros             ignorera block med enbart nolltecken
                                 (betyder filslut)
  -B, --read-full-records        omblocka vid l�sning (f�r 4.2BSD-r�r)
 
Enhetsval och enhetsbyte:
  -f, --file=ARKIV               anv�nd arkivfil eller enhet ARKIV
      --force-local              arkivfilen �r lokal �ven om namnet har kolon
      --rsh-command=KOMMANDO     anv�nd KOMMANDO i st�llet f�r rsh.
  -[0-7][lmh]                    ange enhet och densitet
  -M, --multi-volume             skapa/visa/extrahera ett flervolymsarkiv
  -L, --tape-length=ANTAL        byt band efter det att ANTAL x 1024
                                 byte skrivits
  -F, --info-script=FIL          k�r kommandofil FIL vid slutet av varje band
                                 (flaggan -M s�tts ocks�)
      --new-volume-script=FIL    samma som -F FIL
      --volno-file=FIL           anv�nd/uppdatera volymnummer i FIL
 
Om en l�ng flagga visar ett argument som obligatoriskt d� �r det �ven
obligatoriskt f�r den korta flaggan.  Motsvarande g�ller f�r frivilliga
argument.
 
Filval:
  -C, --directory=KATALOG    byt katalog till KATALOG
  -T, --files-from=NAMN      h�mta namn att extrahera fr�n filen NAMN
      --null                 -T l�ser namn �tskilda med nolltecken, -C obrukbar
      --exclude=M�NSTER      tag inte med filer som matchar M�NSTER
  -X, --exclude-from=FIL     tag inte med filer som matchar m�nster i filen FIL
  -P, --absolute-names       tag inte bort inledande "/" fr�n namn
  -h, --dereference          arkivera det som symboliska l�nkar pekar p�
      --no-recurse           g� inte automatiskt ned i kataloger
  -l, --one-file-system      byt inte filsystem n�r arkivet skapas
  -K, --starting-file=NAMN   b�rja med fil NAMN i arkivet
 
S�kerhetskopie�ndelse �r "~", om den inte s�tts med --suffix eller
SIMPLE_BACKUP_SUFFIX.
Versionshanteringen kan styras med --backup eller VERSION_CONTROL,
d�r v�rdena kan vara:

  t, numbered     g�r numrerade s�kerhetskopior
  nil, existing   numrerade s�kerhetskopior om det redan finns s�dana,
                   enkla annars
  never, simple   g�r alltid enkla s�kerhetskopior
 
Anv�ndning: %s [FLAGGA]...
 
Anv�ndning: %s [FLAGGA]... [FIL]...
 
Skriven av Fran�ois Pinard <pinard@iro.umontreal.ca>.
 
Skriven av John Gilmore och Jay Fenlason.
   -N, --newer=DATUM          arkivera bara filer nyare �n DATUM
      --newer-mtime          j�mf�r datum och tid endast f�r data�ndringar
      --after-date=DATUM     samma som -N
  (minnet sparat)  l�nk till %s
  n [namn]   Ge ett nytt filnamn f�r n�sta (och efterf�ljande) volym(er)
 q          Avsluta programmet
 !          Starta ett underskal
 ?          Skriv denna lista
  ok�nd filtyp "%c"
 %d vid %d
 %s forts�tter inte i denna volym %s �r arkivet; inte arkiverat %s: Kunde inte �ndra �tkomst- och modifieringstid %s: Kunde inte skapa katalog %s: Kunde inte skapa fil %s: Kunde inte skapa symbolisk l�nk till "%s" %s: Kunde inte l�nka till "%s" %s: Kunde inte skapa fifo %s: Kunde inte skapa enhetsfil %s: Kunde inte skriva till fil %s: Tar bort %s
 %s: Fel vid st�ngning %s: Fanns inte i arkivet %s: Ok�nd filtyp; filen ignorerad %s kunde inte s�kerhetskopieras %s: �r of�r�ndrad; inte arkiverad ((barn)) R�r till standard in ((barn)) R�r standard ut (barn) R�r till standard in (barn) R�r till standard ut (barnbarn) R�r till standard in (barnbarn) R�r till standard ut --Kodade filnamn--
 --Volymhuvud--
 Lade till skriv- och exekveringsr�ttigheter till katalog %s Tvetydigt m�nster "%s" Verkligen skriven m�ngd �r %d (hoppas jag).
 Arkivet �r inte m�rkt f�r att st�mma med "%s" Arkiv till standard in Arkiv till standard ut Vid bandets b�rjan, avslutar nu F�rs�ker extrahera symboliska l�nkar som h�rda l�nkar Kan inte l�gga till katalogen %s Kan inte l�gga till filen %s Kan inte allokera buffert Kan inte g� till katalogen %s Kan inte g� till katalogen %s Kan inte st�nga filnummer %d Kan inte st�nga fil #%d Kan inte exekvera %s Kan inte exekvera ett skal %s Kan inte exekvera fj�rrskal Kan inte extrahera "%s" -- filen forts�tter fr�n en tidigare volym Kan inte �ppna %s Kan inte �ppna arkivet %s Kan inte �ppna katalogen %s Kan inte �ppna filen %s Kan inte �ppna r�r Kan inte duplicera %s Kan inte l�sa %s Kan inte l�sa bekr�ftelse fr�n anv�ndaren Kan inte l�sa fr�n komprimeringsprogrammet Kan inte l�sa l�nk %s Kan inte ta bort %s Kan inte byta namn p� %s till %s Kan inte s�ka till %ld i filen %s Kan inte ta status p� %s Kan inte ta status p� filen %s Kan inte symboliskt l�nka %s till %s Komprimerade arkiv kan inte uppdateras Kan inte anv�nda komprimerade flervolymsarkiv Komprimerade arkiv kan inte verifieras Flervolymsarkiv kan inte verifieras Kan inte verifiera standard in/ut-arkiv Kan inte skriva till %s Kan inte skriva till komprimeringsprogrammet Barnet kan inte grena Barnet dog med signal %d%s Barnet avslutade med slutstatus %d Motstridiga arkivformatsflaggor Motstridiga komprimeringsflaggor Kunde inte allokera minne f�r blockfaktor %d Kunde inte s�ka bak�t i arkivfilen, den kan vara ol�sbar utan -i Kunde inte avg�ra aktuell katalog Kunde inte komma �t namnet p� aktuell katalog: %s Kunde inte byta position i arkivfilen Kunde inte g� till b�rjan p� arkivfilen f�r verifikation Kunde bara l�sa %d av %ld byte V�grar fegt skapa ett tomt arkiv Skapar katalog: Data �r olika Tar bort icke-huvuddata fr�n arkivet Enhetsnummer har �ndrats Katalogen %s har bytt namn Katalogen %s �r ny Existerar inte Fel vid st�ngning av %s Fel intr�ffade vid borttagning av %s Extraherar sammanh�ngande filer som vanliga filer Filen existerar inte Filnamnet %s%s �r f�r l�ngt Filnamnet %s/%s �r f�r l�ngt GNU-finesser �nskade i ett inkompatibelt arkivformat Ok�nt kommando Generera datafiler f�r GNU tar testsvit.
 Gid �r olika Obligatoriska argument f�r l�nga flaggor �r obligatoriska �ven f�r korta.

  -l, --file-length=L�NGD    L�NGD p� genererad fil
  -p, --pattern=M�NSTER      M�NSTER �r "default" eller "zeros"
      --help                 visa denna hj�lptext och avsluta
      --version              visa versionsinformation och avsluta
 Ogiltigt datumformat "%s" Ogiltiga r�ttigheter givna f�r flagga Minnet slut Filnamn efter -C saknas Modifieringstiderna �r olika R�ttigheterna �r olika R�ttighet eller enhetstyp har �ndrats Mer �n en datumgr�ns Multipla arkivfiler kr�ver "-M" flaggan Arkivnamn saknas Inte l�ngre en katalog Ingen ny volym; avslutar.
 Filen eller katalogen finns inte Inte en normal fil Inte l�nkad till %s F�r�ldrad flagga ersatt med --absolute-names F�r�ldrad flagga ersatt med --backup F�r�ldrad flagga ersatt med --block-number F�r�ldrad flagga ersatt med --blocking-factor F�r�ldrad flagga ersatt med --read-full-records F�r�ldrad flagga ersatt med --touch F�r�ldrad flagga som nu impliceras av --blocking-factor Gammal flagga "%c" beh�ver ett argument Flaggorna "-%s" och "-%s" vill b�da l�sa fr�n standard in Flaggorna "-Aru" �r inkompatibla med "-f -" Flaggorna "-[0-7][lmh]" st�ds inte av *detta* "tar"-program F�r tidigt filslut L�ser kontrollpunkt %d L�sfel i %s L�ser %s
 Poststorlek m�ste vara en multipel av %d Tar bort inledande "/" fr�n absoluta l�nkar Tar bort inledande "/" fr�n absoluta s�kv�gar i arkivet Bytte namn p� %s till %s Storlekarna �r olika Hoppar till n�sta filhuvud Symboliska l�nkar �r olika %s symboliskt l�nkad till %s Det h�r ser inte ut som ett "tar"-arkiv Detta �r fri programvara; se k�llkoden f�r kopieringsvillkor.  Det finns INGEN
garanti; inte ens f�r S�LJBARHET eller L�MPLIGHET F�R N�GOT SPECIELLT �NDAM�L.
 Denna volym kommer inte i r�tt ordning F�r m�nga fel, avslutar Totalt antal byte skrivna:  F�rs�k med "%s --help" f�r mer information.
 Uid �r olika Ok�nt avkodningskommando %s Ok�nt m�nster "%s" Ok�nt systemfel Verifierar  Volym "%s" �verensst�mmer inte med "%s" VARNING: Arkivet �r ofullst�ndigt VARNING: Kan inte st�nga %s (%d, %d) VARNING: Inget volymhuvud Skriver kontrollpunkt %d Skriver till komprimeringsprogram men �r %d byte kort Du kan endast ange en av flaggorna "-Acdtrux" exec/tcp: Tj�nsten �r inte tillg�nglig rmtd: Ok�nt kommando "%c"
 standard in standard ut tar (barn) tar (barnbarn) 