��    �      �  �   <      �  +   �  K   %  ?   q  -  �  �  �  �   h  �  �  7  �       !   .  7   P  +   �  �   �     k     z  �   �        	   9  "   C     f  2   �     �     �  $   �          0     H     `     |     �     �  #   �  "   �          "     :     S     i     �     �     �     �  2   �       (   ,  "   U     x     �  "   �  5   �     �               <     Z     m     �     �     �     �  <   �          ,     C     \     p     �     �  "   �  $   �     �     	            1      O      ^      r   !   �   +   �   !   �   #   �   "   !     A!  #   T!     x!     �!     �!  "   �!     �!  0   "  A   3"     u"  #   �"  "   �"  (   �"     #  ,   %#     R#     f#      s#     �#     �#     �#     �#     �#     $  ,   $     H$     \$     t$  2   �$     �$  ,   �$     �$  Y  	%     c&     |&     �&     �&     �&     �&     �&     �&  +   '     H'     ^'     t'     �'     �'     �'  1   �'  )   �'  /   '(  2   W(  4   �(  (   �(  1   �(  %   )  0   @)  +   q)  1   �)     �)     �)     �)     	*  %   *  (   ;*  <   d*     �*     �*     �*     �*     �*  %   �*  �    +     �+     �+     �+  &   ,     .,     :,     X,     m,     �,     �,     �,  !   �,     �,     -  +   -  3   E-     y-     �-     �-     �-     �-     �-  1  �-  2   /  I   B/  ?   �/  Y  �/  5  &1  �   \4  3  �4  �  %8     :  #   5:  ;   Y:  0   �:  �   �:     �;     �;  �   �;     �<  
   �<  )   �<  #   �<  7   =  #   K=     o=  3   �=     �=  4   �=  #   >  "   9>     \>     n>     �>  *   �>  <   �>  %   ?  *   5?  *   `?  "   �?      �?  1   �?  <   @     >@     [@  8   s@     �@      �@  2   �@     A     6A  $   SA  9   xA  #   �A     �A  ,   �A  (   #B  (   LB  #   uB     �B     �B      �B  "   �B  I   C     `C     vC  !   �C     �C     �C  +   �C     D  -   .D  *   \D     �D     �D  #   �D  -   �D     E     ,E  ;   LE  -   �E  8   �E  &   �E  &   F  4   =F     rF  .   �F  !   �F  &   �F  !   G  ;   )G  4   eG  :   �G  E   �G  -   H  1   IH  !   {H  -   �H  !   �H     �H     
I     I  $   6I  !   [I  !   }I     �I     �I     �I     �I  F   J     LJ     bJ     ~J  A   �J     �J  .   �J  "   !K  <  DK     �L  #   �L     �L     �L  !   �L     M  .   .M     ]M  ,   {M     �M     �M     �M  '   �M     $N     :N  3   RN  +   �N  1   �N  4   �N  6   O  *   PO  <   {O  .   �O  ?   �O  5   'P  <   ]P     �P     �P     �P  	   �P  0   �P  +   Q  :   ?Q     zQ     �Q     �Q  &   �Q  $   �Q  )   R  �   BR  #   �R     S      -S  )   NS  #   xS  8   �S     �S     �S     T     T     ,T  *   JT  !   uT     �T  >   �T  3   �T  "   "U      EU     fU     vU  
   �U     �U     �          4       �   @          x               �       u       W   Z   q   N   �   �   Y   =           s   �   j   �   �   2   ]       �   H   w   �   t   P   T   �   �   L          X   �   9          �   �       #   �   i   8           �   �   /       d      �          f       �   7   `   R       !   (   �   �   �       D   V                 ,       �          �   .   \   *       6   I              '   |      v           �   +   n   C   0   A               �       �   -   �   �       S       �          _   G      m   >   �   b       B   �      
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
PO-Revision-Date: 1997-05-07 15:48 MET DST
Last-Translator: Christian Kirsch <ck@held.mind.de>
Language-Team: German <de@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
Version: 1
 Medium #%d f�r %s einlegen und "Return" dr�cken:  
Copyright � 1988, 92, 93, 94, 95, 96, 97 Free Software Foundation, Inc.
 
Copyright (C) 1995, 1996, 1997 Free Software Foundation, Inc.
 
Blockung des Ger�tes:
  -b, --block-size=BL�CKE    BL�CKE � 512 Bytes pro Record
      --record-size=GR�SSE   GR�SSE Bytes pro Record, Vielfaches von 512
  -i, --ignore-zeros         Bl�cke mit Nullen im Archiv ignorieren 
                             (bedeutet EOF)
  -B, --read-full-blocks     Blockung beim Lesen �ndern (f�r 4.2BSD "Pipes")
 
Ger�teauswahl und -einstellung:
  -f, --file=ARCHIV              Ger�t oder Datei ARCHIV benutzen
      --force-local              Archiv-Datei ist lokal, auch wenn der Name
                                 einen Doppelpunkt enth�lt
      --rsh-command=BEFEHL       statt �rsh� den BEFEHL benutzen
  -[0-7][lmh]                    Laufwerk und Schreibdichte angeben
  -M, --multi-volume             mehrteiliges Archiv anlegen/listen/auspacken
  -L, --tape-length=ZAHL         Medium wechseln, wenn ZAHL KBytes 
                                 geschrieben sind
  -F, --info-script=DATEI        am Ende jedes Mediums das Skript DATEI
                                 ausf�hren (impliziert '-M')
      --new-volume-script=DATEI  wie '-F DATEI'
      --volno-file=DATEI         Teil-Nummer in DATEI benutzen/aktualisieren
 
Wenn eine lange Option ein Argument erfordert, ist es f�r die entsprechende
kurze Option auch erforderlich. Dasselbe gilt f�r optionale Argumente.
 
Auswahl der lokalen Dateien:
  -C, --directory=VERZEICHNIS  zu VERZEICHNIS wechseln
  -T, --files-from=DATEI       Namen der zu bearbeitenden Dateien 
                               aus DATEI lesen
      --null                   '-T' lies Null-terminierte Namen, verbiete '-C'
      --exclude=MUSTER         Dateien �berspringen, auf die MUSTER pa�t
  -X, --exclude-from=DATEI     Dateien �berspringen, auf die in DATEI 
                               angegebene Muster passen
  -P, --absolute-paths         f�hrende `/'-Zeichen in den Dateinamen erhalten
  -h, --dereference            Dateien statt symbolischer Links sichern
      --no-recurse             keine Verzeichnisse sichern
  -l, --one-file-system        beim Erzeugen Dateisystem nicht wechseln
  -K, --starting-file=NAME     mit NAME im Archiv beginnen
 
Die Namenserweiterung f�r Sicherheitskopien ist `~', wenn nicht mit --suffix
oder der Umgebungsvariablen SIMPLE_BACKUP_SUFFIX etwas anderes 
eingestellt ist. Die Versionskontrolle kann mit --backup oder 
der Umgebungsvariable VERSION_CONTROL gesetzt werden. M�gliche Werte sind:

  t, numbered     nummerierte Sicherheitskopien
  nil, existing   nummerierte Sicherheitskopien, wenn schon nummerierte 
                  vorhanden sind, sonst einfache
  never, simple   immer einfache Sicherheitskopien
 
Aufruf: %s [OPTION]...
 
Aufruf: %s [OPTION]... [DATEI]...
 
Entwickelt von Fran�ois Pinard <pinard@iro.umontreal.ca>.
 
Geschrieben von John Gilmore und Jay Fenlason.
   -N, --newer=DATUM          nur Dateien j�nger als DATUM sichern
      --newer-mtime          Datum und Zeit nur vergleichen, wenn sich der
                             Datei-Inhalt ge�ndert hat
      --after-date=DATUM     wie '-N'
  (Speicherabzug geschrieben).  Link auf '%s'.
  n [NAME]   F�r das n�chste Medium (und die folgenden) neuen Dateinamen angeben
 q          �tar� abbrechen
 !          Shell in einem Unterproze� starten
 ?          Diese Liste ausgeben
  unbekannter Dateityp '%c'.
 %d bei %d
 Dieser Teil ist keine Fortsetzung von %s. %s ist ein Archiv; nicht gesichert. %s: Konnte Zugriffs- und Ver�nderungszeit nicht �ndern. %s: Kann Verzeichnis nicht anlegen. %s: Kann Datei nicht anlegen. %s: Kann keinen symbolischen Link auf '%s' anlegen. %s: Kann nicht zu '%s' linken. %s: Kann "fifo" (= file in, file out) nicht anlegen. %s: Kann Ger�tedatei nicht anlegen. %s: Kann nicht in Datei schreiben. %s: L�sche '%s'.
 %s: Fehler beim Schlie�en. %s: Nicht im Archiv gefunden. %s: Unbekannter Dateityp; Datei ignoriert. %s: Konnte keine Sicherheitskopie von dieser Datei erstellen %s: ist unver�ndert; nicht gesichert. ((Kind-Proze�)) Pipe zur Standard-Eingabe. ((Kind-Proze�)) Pipe zur Standard-Ausgabe. (Kind) "Pipe" zu Standard-Eingabe. (Kind) Pipe zu Standard-Ausgabe. Enkel (`(grandchild)') Pipe zur Standard-Eingabe. Enkel (`(grandchild)') Pipe zur Standard-Ausgabe (`stdout'). --Verst�mmelte Dateinamen--
 --Vorspann des Teils--
 Setze Schreib- und Ausf�hrungsrechte f�r Verzeichnis %s. Mehrdeutiges Muster `%s' Wirklich geschriebene Menge %d.
 Archiv nicht gekennzeichnet, um zu `%s' zu passen. Archiv von Standard-Eingabe. Archiv auf Standard-Ausgabe. Am Anfang des Mediums, beende jetzt. Versuche symbolische Links als harte Links herauszuholen. Kann Verzeichnis %s nicht erzeugen. Kann Datei %s nicht hinzuf�gen. Kann keinen Speicher f�r Puffer reservieren. Kann nicht zu Verzeichnis '%s' wechseln. Kann nicht zu Verzeichnis '%s' wechseln. Kann Deskriptor %d nicht schlie�en. Kann Datei #%d nicht schlie�en. Kann %s nicht ausf�hren. Kann keine `Shell' %s ausf�hren. Kann Remote-Shell nicht ausf�hren. Kann '%s' nicht herausholen -- Datei ist Fortsetzung eines anderen Teils. Kann %s nicht �ffnen. Kann Archiv '%s' nicht �ffnen. Kann Verzeichnis %s nicht �ffnen. Kann Datei '%s' nicht �ffnen. Kann Pipe nicht �ffnen. Kann %s nicht duplizieren (Fehler in dup2). Kann %s nicht lesen. Kann keine Best�tigung vom Benutzer bekommen. Kann nicht vom Kompressionsprogramm lesen. Kann Link `%s' nicht lesen. Kann %s nicht entfernen. Kann '%s' nicht in '%s' umbenennen. Kann nicht auf %ld in Datei %s positionieren. `stat' auf %s fehlgeschlagen. `stat' auf '%s' fehlgeschlagen. Kann keinen symbolischen Link von '%s' auf '%s' einrichten. Kann komprimierte Archive nicht aktualisieren Kann keine mehrteiligen komprimierten Archive verwenden. Kann komprimierte Archive nicht pr�fen Kann mehrteilige Archive nicht pr�fen. Kann Archive auf Standard-Ein-/Ausgabe nicht pr�fen. Kann nicht auf %s schreiben. Kann nicht zum Kompressionsprogramm schreiben. Kind-Proze� kann nicht "fork'en". Kind-Proze� mit Signal %d%s gestorben. Kind-Proze� gab Status %d zur�ck. Optionen des Archiv-Formats schlie�en sich gegenseitig aus. Kompressionsoptionen schlie�en sich gegenseitig aus. Konnte keinen Speicher f�r Blockungsfaktor %d reservieren. Kann Archiv-Datei nicht zur�cksetzen; k�nnte ohne `-i' unlesbar sein. Konnte aktuelles Verzeichnis nicht ermitteln. Konnte aktuelles Verzeichnis nicht ermitteln: %s. Konnte Datei nicht positionieren. Konnte Archiv zur Pr�fung nicht zur�ckspulen. Konnte nur %d von %ld Bytes lesen Kein leeres Archiv angelegt. Erzeuge Verzeichnis: unterschiedliche Daten L�sche nicht-Kopfteil aus dem Archiv Ger�tenummer ist unterschiedlich. Verzeichnis '%s' wurde umbenannt. Verzeichnis '%s' ist neu. Nicht vorhanden Fehler beim Schlie�en von %s. Fehler beim L�schen von '%s'. Extrahiere zusammenh�ngende Dateien (`contiguous files') als regul�re. Datei nicht vorhanden Dateiname %s%s ist zu lang. Dateiname %s/%s ist zu lang. GNU-Erweiterungen bei einem inkompatiblen Archiv-Format verlangt. Ung�ltiges Kommando. Dateien f�r die Tests von GNU-�tar� erzeugen.
 Gruppenkennung ist unterschiedlich Notwendige Argumente f�r Optionen in Langform sind auch f�r die
Kurzform notwendig.
  -l, --file-length=L�NGE  L�NGE der erzeugten Datei
  -p, --pattern=MUSTER     MUSTER ist \"default\" oder \"zeros\"
      --help               zeige nur diese Hilfe an
      --version            zeige nur die Version von �tar� an
 Ung�ltiges Datumsformat `%s'. Ung�ltige Zugriffsrechte angegeben. Kein Speicher mehr Dateiname nach '-C' fehlt. �nderungszeit ist unterschiedlich `mode' ist unterschiedlich Modus- oder Ger�tenummer sind unterschiedlich. Mehr als ein Datum angegeben. Verteilte Archive verlangen die Option '-M'. Kein Archiv-Name angegeben Ist kein Verzeichnis mehr. Kein neues Medium; halte an.
 Datei oder Verzeichnis nicht vorhanden. Keine regul�re Datei. Nicht auf `%s' gelinkt. Veraltete Option, ersetzt durch '--absolute-names'. Veraltete Option, ersetzt durch '--backup'. Veraltete Option, ersetzt durch '--block-number'. Veraltete Option, ersetzt durch '--blocking-factor'. Veraltete Option, ersetzt durch '--read-full-records'. Veraltete Option, ersetzt durch '--touch'. Veraltete Option, jetzt bei '--blocking-factor' inbegriffen. Die alte Option '%c' ben�tigt einen Parameter. Die beiden Optionen '-%s' und '-%s' verlangen Standard-Eingabe. Die Optionen '-Aru' sind nicht kompatibel mit '-f -'. Die Optionen '-[0-7][lmh]' unterst�tzt _dieses_ �tar� nicht. Vorzeitiges Dateiende. Lese Checkpoint %d. Lesefehler bei %s. Lese %s.
 Die Recordgr��e  mu� ein Vielfaches von %d sein. Entferne f�hrenden `/' von absoluten Links. Entferne f�hrenden `/' von absoluten Dateinamen im Archiv. Benenne '%s' in '%s' um. Gr��e ist unterschiedlich Springe zum n�chsten Kopfteil. Symbolischer Link ist unterschiedlich. Symbolischer Link von '%s' auf '%s'. Das sieht nicht wie ein �tar�-Archiv aus. Dieses Programm ist freie Software; die Quellen enthalten 
die Kopierbedingungen. Es gibt KEINE Garantie, auch nicht 
hinsichtlich des Einsatzes f�r einen bestimmten Zweck.
 Dieser Teil ist nicht an der Reihe. Zu viele Fehler, beende. Gesamtzahl geschriebener Bytes:  `%s --help' zeigt weitere Informationen.
 Benutzerkennung ist unterschiedlich Unbekanntes Kommando �%s� beim Zusammensetzen von Namen. Unbekanntes Muster `%s' Unbekannter Systemfehler. Pr�fe  Teil `%s' pa�t nicht zu `%s'. WARNUNG: Archiv unvollst�ndig WARNUNG: Kann %s nicht schlie�en (%d, %d). WARNUNG: Kein Kopfteil vorhanden. Schreibe Checkpoint %d. Konnte letzte %d Bytes nicht zu Kompressionsprogramm ausgeben. Von den Optionen '-Acdtrux' ist nur _eine_ erlaubt. exec/tcp: Service nicht verf�gbar. rmtd: Ung�ltiges Kommando '%c'.
 Standardeingabe Standardausgabe tar (Kind) tar Enkel (`tar (grandchild)'). 