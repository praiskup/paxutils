��    �      �  �   ,      �  +   �  K     ?   a  -  �  �  �  �   X  �  �  7  �       !     +   @  �   l     #     2  �   ?     �  	   �  "   �       2   <     o     �  $   �     �     �                4     E     ]  #   v  "   �     �     �     �          !     8     S     o     �  2   �     �  (   �  "        0     A  "   S  5   v     �     �     �     �          %     @     V     e     |  <   �     �     �     �          (     9     V  "   e  $   �     �     �     �     �                 *   !   B   +   d   !   �   #   �   "   �      �   #   !     0!     B!     ^!  "   w!     �!  0   �!  A   �!     -"  #   M"  "   q"  (   �"     �"  ,   �"     
#     #      +#     L#     c#     �#     �#     �#     �#  ,   �#      $     $     ,$  2   E$     x$  ,   �$     �$  Y  �$     &     4&     Q&     b&     }&     �&     �&     �&  +   �&      '     '     ,'     E'     _'     r'  1   �'  )   �'  /   �'  2   (  4   B(  (   w(  1   �(  %   �(  0   �(  +   ))  1   U)     �)     �)     �)     �)  %   �)  (   �)  <   *     Y*     j*     w*     �*     �*  %   �*  �   �*     p+     �+     �+  &   �+     �+     �+     ,     %,     :,     B,     b,  !   �,     �,     �,  +   �,  3   �,     1-     Q-     k-     q-     x-     �-  ,  �-  1   �.  L   �.  @   A/  +  �/  �  �0  �   �3  �  04  `  7     �8  %   �8  /   �8  �   �8     �9     �9  �   �9     �:  	   �:     �:     �:  4   �:     (;     H;  3   f;      �;  /   �;     �;  #   <     ,<     @<     W<  ,   t<  .   �<     �<  (   �<  )   =  &   B=  '   i=  +   �=  ,   �=     �=     >  9   >     R>  2   l>  4   �>     �>     �>     ?  J   ,?     w?     �?     �?  %   �?     �?  "   @     7@     V@     l@  !   �@  A   �@     �@     �@     A     7A     RA     iA     �A  %   �A  *   �A     �A     B     B  (   6B     _B     rB  7   �B  +   �B  6   �B  +   (C  (   TC  4   }C     �C  ,   �C     �C     D     ,D  %   JD  !   pD  2   �D  D   �D  $   
E  (   /E  '   XE  5   �E  "   �E  4   �E     F     "F  #   1F     UF     nF     �F     �F     �F     �F  6   �F     G     (G     BG  ;   `G     �G  0   �G     �G  z  �G     lI      �I     �I     �I  #   �I     J     J     8J  0   UJ     �J     �J     �J     �J     �J     K  4   K  ,   TK  2   �K  5   �K  7   �K  +   "L  5   NL  &   �L  3   �L  0   �L  <   M     MM     iM     M  	   �M  ,   �M  0   �M  @   �M     >N     RN     hN  )   �N  0   �N  (   �N  �   O     �O     �O      �O  "   P     (P  !   6P     XP     nP  
   �P  &   �P      �P  &   �P     �P     Q  2   2Q  /   eQ  $   �Q     �Q     �Q     �Q  
   �Q      R     �          3       �   ?          w               �       t       V   Y   p   M   �   �   X   <           r   �   i   �   �   1   \       �   G   v   �   s   O   S   �   �   K          W   �   8          �   �       "   �   h   7           �   �   .       c      �           e       �   6   _   Q           '   �   �   �       C   U                 +       �          �   -   [   )       5   H              &   {      u           �   *   m   B   /   @               �       �   ,   �   �       R       �          ^   F      l   =   �   a       A   �      
   :          k   n         �   E      9                   2   �   j   ;      >       �   y   �   �   !   ~   (             T   �       �   }   0      L   x          I       P   �   o              �   D      �   |   ]   g          	   `   z   f   4   �   d         Z       �       �   �           J   q   �   #   �   �   %           $   N   b                          Prepare volume #%d for %s and hit return:  
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
PO-Revision-Date: 1996-09-26 12:15 MET DST
Last-Translator: Erick Branderhorst <branderh@debian.org>
Language-Team: Dutch <nl@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 Maak volume #%d klaar voor %s en druk op return:  
Kopierecht (C) 1988, 92, 93, 94, 95, 96, 97 Free Software Foundation, Inc.
 
Kopierecht (C) 1995, 1996, 1997 Free Software Foundation, Inc.
 
Apparaat blokken:
  -b, --blocking-factor=BLOCKS   BLOCKS x 512 bytes per record
      --record-size=SIZE         SIZE bytes per record, veelvoud van 512
  -i, --ignore-zeros             negeer genulde blokken (zelfde als EOF)
  -B, --read-full-records        reblock as we read (for 4.2BSD pipes)
 
Apparaat selektie en veranderen:
  -f, --file=ARCHIVE             gebruik archiefbestand of apparaat ARCHIVE
      --force-local              archiefbestand is lokaal zelfs al heeft 
                                 het een dubbele punt
      --rsh-command=COMMAND      gebruik `remote' COMMAND in plaats van rsh
  -[0-7][lmh]                    specificeer `drive' en `density'
  -M, --multi-volume             maak/toon/extraheer meerdelige archieven
  -L, --tape-length=NUM          verander tape na schrijven NUM x 1024 bytes
  -F, --info-script=BESTAND      voer script uit aan einde van elke tape (-M)
      --new-volume-script=BESTAND  zelfde als -F BESTAND
      --volno-file=BESTAND       gebruik/update het volume nummer in BESTAND
 
Als een lange optie een verplicht argument heeft, dan is dit ook verplicht
voor de equivalente korte optie.  Hetzelfde geldt voor optionele argumenten.
 
Lokale bestandsselektie:
  -C, --directory DIR        verander naar directory DIR
  -T, --files-from=NAAM      haal de te gebruiken bestandsnamen uit NAAM
      --null                 -T leest nul-getermineerde namen, disable -C
      --exclude=PATROON      excludeer bestanden, gegeven als `globbing' PATROON
  -X, --exclude-from=BESTAND excludeer `globbing' patronen getoond in BESTAND
  -P, --absolute-names       haal voorloop `/' niet weg bij bestandsnamen
  -h, --dereference          dump instead the files symlinks point to
      --no-recursion         voorkom automatisch afdalen in directory's
  -l, --one-file-system      gebruik een bestand systeem bij aanmaken archief
  -K, --starting-file=NAAM   start met bestand NAAM in het archief
 
Het reservekopie achtervoegsel is `~', tenzij ingesteld met --suffix of
SIMPLE_BACKUP_SUFFIX.  De versie kontrolle kan ingesteld worden met
--backup of VERSION_CONTROL, waarden zijn:

  t, numbered     maak genummerde reservekopien
  nil, existing   genummerde als genummerde bestand, ander simpel
  never, simple   maak altijd simpele reservekopien

 
Aanroep: %s [OPTIE]...
 
Aanroep: %s [OPTIE]... [BESTAND]...
 
Geschreven door John Gilmore en Jay Fenlason.
   -N, --newer=DATUM          bewaar alleen bestanden nieuwer dan DATUM
      --newer-mtime          vergelijk datum en tijd alleen bij gewijzigde data
      --after-date=DATUM     zelfde als -N
  (core dumped)  verwijzing naar %s
  n [name]   Geef een nieuwe bestandsnaam voor het volgende (en daaropvolgenden)
            volume
 q          Breek tar af
 !          Spawn a subshell
 ?          Toon deze lijst
  onbekend bestandstype `%c'
 %d op %d
 %s gaat niet verder op dit deel %s is een archief; niet gedumpt %s: Kan toegangs- en modificatietijd niet veranderen %s: Kan geen directory aanmaken %s: Kan bestand niet aanmaken %s: Kan geen symbolische verwijzing maken naar `%s' %s: Kan niet verwijzen naar `%s' %s: Kan geen fifo (first in first out) aanmaken %s: Kan `node' niet aanmaken %s: Kan niet schrijven naar bestand %s: Verwijderen %s
 %s: Fout bij afsluiten %s: Niet gevonden in archief %s: Onbekend bestandstype; bestand genegeerd %s: Was niet in staat dit bestand te backuppen %s: onverandered; niet gedumpt ((kind)) doorsturen naar standaardinvoer ((kind)) doorsturen naar standaarduitvoer (kind) doorsturen naar standaardinvoer (kind) doorsturen naar standaarduitvoer (kleinkind) doorsturen naar standaardinvoer (kleinkind) doorsturen naar standaarduitvoer --`Mangled' bestandsnamen--
 --Deel Header--
 Schrijf en uitvoer permissies toegevoegd aan directory %s Dubbelzinnig patroon `%s' Werkelijk geschreven hoeveelheid is %d (hoop ik).
 Archief niet gelabeled om te corresponderen met `%s' Archief naar standaardinvoer Archief naar standaarduitvoer Begin van `tape', ik stop nu Poging tot extractie van symbolische verwijzingen als `harde' verwijzingen Kan directory %s niet toevoegen Kan bestand %s niet toevoegen Kan geen bufferruimte vrijmaken Kan niet veranderen naar directory %s Kan niet `chdir' naar %s Kan `descriptor' %d niet afsluiten Kan bestand #%d niet afsluiten Kan %s niet uitvoeren Kan shell %s niet uitvoeren Kan `remote shell' niet uitvoeren Kan `%s' niet extraheren -- bestand is vervolgd op een ander deel Kan %s niet openen Kan archief %s niet openen Kan directory %s niet openen Kan bestand %s niet openen Kan `pipe' niet openen Kan %s niet dupliceren Kan %s niet lezen Kan niet veranderen naar directory %s Kan niet lezen vanuit compressie programma Niet verwijzing %s niet lezen Kan %s niet verwijderen Kan %s niet hernoemen tot %s Kan niet `seeken' naar %ld in bestand %s Kan niet `stat' %s Kan bestand %s niet `stat' Kan geen symbolische verwijzing aanmaken van %s naar %s Kan gecomprimeerde archieven niet `updaten' Kan meerdelige gecomprimeerde archieven niet gebruiken Kan gecomprimeerde archiven niet verifieren Kan meerdelige archieven niet verifieren Kan standaard-invoer/uitvoer archief niet verifieren Kan niet schrijven naar %s Kan niet schrijven naar compressie programma Kind kan niet `forken' Kind dood met signaal %d%s Kind komt terug met status %d Conflictuerende archiefformaat opties Conflictuerende compressie opties Kan geen geheugen vinden voor `blocking' faktor %d Kan niet terug in archief bestand; het kan onleesbaar zijn zonder -i Kan huidige directory niet krijgen?? Kan huidige directory niet krijgen: %s?? Kan archiefbestand niet herpositioneren Kan niet teruggaan in rewind archief om te verifieren Kan slechts %d van %ld bytes lezen Angstvallige weigering een leeg archief aan te maken Aanmaken directory: Data verschilt Verwijderen niet-header uit archief Device nummers gewijzigd Directory %s is hernoemd Directory %s is nieuw Bestaat niet Fout bij afsluiten %s Fout tijdens verwijderen %s Extraheren `contiguous' bestanden als gewone bestanden Bestand bestaat niet Bestandsnaam %s%s te lang Bestandsnaam %s/%s is te lang GNU extras gevraagd voor een niet compatibel archiefformaat Rommel commando Genereer databestanden voor GNU tar test suite.
 Gid is verschillend Als een argument verplicht is voor een lange optie, dan is het ook
verplicht voor de overeenkomstige korte optie.

  -l, --file-length=LENGTE  LENGTE van het gegenereerde bestand
  -p, --pattern=PATROON     PATROON is `default' of `zeros'
      --help                toon hulp-tekst en bekindig programma
      --version             toon versie-informatie en bekindig programma
 Ongeldig datum formaat "%s" Ongeldige mode gegeven bij optie Geen geheugen meer beschikbaar Ontbrekende bestandsnaam na -C Aanpassingstijdstip is verschillend Mode verschilt Mode of device-type gewijzigd Meer dan een threshold datum Meerdere archiefbestanden verwacht de `-M' optie Geen archief naam gegeven Niet langer een directory Geen nieuw `volume'; ik stop.
 Geen bestand of directory Geen gewoon bestand Geen verwijzing naar %s Overbodige optienaam vervangen door --absolute-names Overbodige optienaam vervangen door --backup Overbodige optienaam vervangen door --block-number Overbodige optienaam vervangen door --blocking-factor Overbodige optienaam vervangen door --read-full-records Overbodige optienaam vervangen door --touch Overbodige optienaam vervangen door --blocking-factor Oude optie `%c' verwacht een argument. Opties `-%s' en `-%s' willen beiden standaardinvoer Opties `-Aru' zijn niet uitwisselbaar met `-f -' Opties `-[0-7][lmh]' worden niet ondersteund door *deze* tar Prematuur einde van bestand Lees kontrollepunt %d Fout bij lezen van %s Lezen %s
 Recordgrootte moet een veelvoud zijn van %d. Verwijder voorloop `/' van absolute verwijzingen Verwijder voorloop `/' van absolute bestandsnamen in het archief %s hernoemd naar %s Verschillende grootte Overslaan tot volgende `header' Symbolische verwijzing is niet het zelfde Symbolische verwijzing aangemaakt van %s naar %s Dit ziet er niet uit als een tar archief Dit is vrije programmatuur; zie de broncode voor kopieervoorwaarden.
Er is GEEN garantie; zelfs niet voor VERKOOPBAARHEID of GESCHIKTHEID
VOOR EEN BEPAALD DOEL.
 Dit deel is buiten het bereik Te veel fouten, ik stop Totaal aantal geschreven bytes:  `%s --help' voor meer informatie.
 Uid verschilt Onbekend `demangling' commando %s Onbekend patroon `%s' Onbekende systeemfout Verifieer  Volume `%s' komt niet overeen met `%s' LET OP: Archief is niet kompleet LET OP: Kan %s niet afsluiten (%d, %d) LET OP: Geen deel `header' Schrijf kontrollepunt %d Schrijf naar compressie programma `short' %d bytes Niet meer specificeren dan een `-Acdtrux' optie exec/tcp: `Service' niet beschikbaar rmtd: Rommel commando %c
 standaardinvoer standaarduitvoer tar (kind) tar (kleinkind) 