��    �      �  �   <      �  +   �  K   %  ?   q  -  �  �  �  �   h  �  �  7  �       !   .  7   P  +   �  �   �     k     z  �   �        	   9  "   C     f  2   �     �     �  $   �          0     H     `     |     �     �  #   �  "   �          "     :     S     i     �     �     �     �  2   �       (   ,  "   U     x     �  "   �  5   �     �               <     Z     m     �     �     �     �  <   �          ,     C     \     p     �     �  "   �  $   �     �     	            1      O      ^      r   !   �   +   �   !   �   #   �   "   !     A!  #   T!     x!     �!     �!  "   �!     �!  0   "  A   3"     u"  #   �"  "   �"  (   �"     #  ,   %#     R#     f#      s#     �#     �#     �#     �#     �#     $  ,   $     H$     \$     t$  2   �$     �$  ,   �$     �$  Y  	%     c&     |&     �&     �&     �&     �&     �&     �&  +   '     H'     ^'     t'     �'     �'     �'  1   �'  )   �'  /   '(  2   W(  4   �(  (   �(  1   �(  %   )  0   @)  +   q)  1   �)     �)     �)     �)     	*  %   *  (   ;*  <   d*     �*     �*     �*     �*     �*  %   �*  �    +     �+     �+     �+  &   ,     .,     :,     X,     m,     �,     �,     �,  !   �,     �,     -  +   -  3   E-     y-     �-     �-     �-     �-     �-  4  �-  6   /  E   I/  =   �/  U  �/  �  #2  �   6  �  �6  �  c;     =  $   ,=  6   Q=  )   �=  W  �=     
?     #?  �   2?     �?  	   @  '   %@  %   M@  :   s@      �@     �@  .   �@  &   A  #   CA     gA  #   �A     �A      �A  )   �A  ,   B  $   2B  )   WB  &   �B  &   �B  1   �B  2   C  +   4C  ,   `C     �C     �C  @   �C     D  .   D  2   ED     xD      �D  "   �D  E   �D      "E     CE  &   aE  %   �E  %   �E      �E     �E     F     ,F  '   IF  C   qF     �F  "   �F     �F     G      -G  '   NG     vG  )   �G  2   �G     �G     �G     H  6   +H     bH     uH  .   �H  /   �H  G   �H  *   :I  ;   eI  A   �I     �I  0   �I  4   +J  0   `J  +   �J  .   �J  &   �J  ;   K  _   OK  &   �K  )   �K  2    L  8   3L  *   lL  5   �L     �L     �L  .   M  -   2M     `M     �M     �M  !   �M     �M  E   �M     .N     GN     fN  ?   �N     �N  D   �N     O  i  0O  !   �P     �P     �P  (   �P  $   Q     9Q  0   VQ     �Q  A   �Q     �Q  &   �Q  (   $R  !   MR  &   oR     �R  -   �R  4   �R  +   S  .   DS  0   sS  $   �S  :   �S  :   T  G   ?T  :   �T  K   �T      U     /U     OU     hU  9   wU  3   �U  J   �U     0V     @V  (   WV      �V  !   �V  1   �V  �   �V     �W      �W     �W  /   X     >X  #   QX     uX     �X     �X  &   �X  (   �X  )   	Y  +   3Y  "   _Y  ?   �Y  C   �Y  !   Z     (Z     FZ     LZ     SZ     aZ     �          4       �   @          x               �       u       W   Z   q   N   �   �   Y   =           s   �   j   �   �   2   ]       �   H   w   �   t   P   T   �   �   L          X   �   9          �   �       #   �   i   8           �   �   /       d      �          f       �   7   `   R       !   (   �   �   �       D   V                 ,       �          �   .   \   *       6   I              '   |      v           �   +   n   C   0   A               �       �   -   �   �       S       �          _   G      m   >   �   b       B   �      
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
 stdin stdout tar (child) tar (grandchild) Project-Id-Version: GNU tar 1.12
POT-Creation-Date: 1998-02-19 21:41-0500
PO-Revision-Date: 1997-04-25 19:34 -0500
Last-Translator: Michel Robitaille <robitail@IRO.UMontreal.CA>
Language-Team: French <fr@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 Charger le volume #%d pour %s et appuyer sur ENTR�E:  
Copyright � 1988, 92, 93, 94, 95, 96 Free Software Foundation, Inc.
 
Copyright � 1995, 1996, 1997 Free Software Foundation, Inc.
 
Facteur de blocage du p�riph�rique:
  -b, --blocking-factor=N    utiliser un facteur de blocage de
                             512 octets par enregistrement
      --record-size=N        utiliser un facteur de blocage de
                             N octets par enregistrement
                             (N doit �tre un multiple de 512)
  -i, --ignore-zeros         ignorer les blocs de z�ros de l'archive
                             (c'est-�-dire les EOF)
  -B, --read-full-records    changer le facteur de blocage lors
                             de la lecture (pour les pipes de BSD 4.2)
 
S�lection de p�riph�rique et aiguillage:
  -f, --file=ARCHIVE         utiliser le fichier ou le p�riph�rique
                             d'ARCHIVE
      --force-local          le fichier d'archive est local malgr�
                             la pr�sence de ':'
      --rsh-command=COMMANDE utiliser la t�l�-COMMANDE au lieu de �rsh�
  -[0-7][lmh]                sp�cifier la densit� du p�riph�rique
                             d'archivage
  -M, --multi-volume         cr�er/afficher/extraire une archive �
                             multiples volumes
  -L, --tape-length=N        utiliser un autre ruban apr�s l'�criture
                             de N x 1024 octets
  -F, --info-script=SCRIPT   ex�cuter le SCRIPT � la fin de chaque
                             ruban (implique -M)
      --new-volume-script=FICHIER
                             identique � -F FICHIER
      --volno-file=FICHIER   utiliser/mettre � jour le num�ro de volume
                             dans le FICHIER
 
Un param�tre obligatoire pour une option de forme longue l'est aussi
pour une option de forme courte.  La m�me r�gle s'applique
� un param�tre indiqu� comme �tant optionnel.
 
S�lection locales des fichiers:
  -C, --directory R�P        op�rer � partir du R�Pertoire
  -T, --files-from=NOM       rep�rer les noms � extraire ou �
                             cr�er � partir du fichier portant le NOM
      --null                 lire les noms se terminant par des nuls,
                             d�sactivation de l'option -C, -T est
                             implicite
      --exclude=PATRON       exclure les fichiers indiqu�s par le
                             PATRON d'escamotage
  -X, --exclude-from=FICHIER exclure les patrons d'escamotage
                             apparaissant dans le FICHIER
  -P, --absolute-names       ne pas �liminer le caract�res `/' de t�te
                             des noms de fichiers
  -h, --dereference          �liminer les liens symboliques de fichiers
      --no-recursion         �viter de parcourir automatiquement
                             l'arborescence des r�pertoires
  -l, --one-file-system      demeurer dans le syst�me local de fichiers
                             lors de la cr�ation d'une archive
  -K, --starting-file=NOM    d�buter l'archivage avec le fichier
                             portant le NOM
 
Le suffixe d'archive est ~, � moins que l'option --suffix ou 
SIMPLE_BACKUP_SUFFIX en utilise un autre. Le contr�le de version peut �tre
initialis� avec --backup ou VERSION_CONTROL selon les valeurs suivantes:

  t, numbered     faire des archives num�rot�es
  nil, existing   num�roter si des archives  num�rot�es existent,
                  ne pas num�roter autrement
  never, simple   toujours faire des archives de type simple
 
Usage: %s [OPTION]...
 
Usage: %s [OPTION]... [FICHIER]...
 
�crit par Fran�ois Pinard <pinard@iro.umontreal.ca>.
 
Con�u par John Gilmore et Jay Fenlason.
   -N, --newer=DATE           conserver seulement les fichiers ayant
                             une date plus r�cente que la DATE
      --newer-mtime          comparer les dates et les heures
                             lorsque seulement
                             les donn�es ont �t� modifi�es
      --after-date=DATE      identique � -N
  (vidange de la m�moire)  lien vers %s
  n [nom]    Donner un nouveau nom de fichier pour le prochain
            (ainsi que pour les subs�quents) volume(s)
 q          Stopper �tar�
 !          Lancer un shell
 ?          Afficher la liste
  type inconnu de fichier `%c'
 %d de %d
 La suite de %s n'est pas sur ce volume. %s est l'archive; n'a pas �t� rejet�. %s: ne peut modifier les dates d'acc�s et de modification. %s: ne peut cr�er le r�pertoire. %s: ne peut cr�er le fichier. %s: ne peut cr�er un lien symbolique vers `%s' %s: ne peut �tablir un lien vers `%s'. %s: ne peut cr�er un relais (fifo). %s: ne peut cr�er un noeud. %s: ne peut �crire dans le fichier. %s: retrait de %s
 %s: erreur lors de la fermeture. %s: ne peut �tre retrouv� dans l'archive. %s: type de fichier inconnu; fichier ignor�. %s: incapable d'archiver ce fichier. %s: demeure inchang�; n'a pas �t� rejet�. Relais vers l'entr�e standard (child)  Relais vers la sortie standard (child) (processus enfant) Relais vers l'entr�e standard. (processus enfant) Relais vers la sortie standard. Relais vers l'entr�e standard (grandchild). Relais vers la sortie standard (grandchild)  --Noms de fichiers mutil�s--
 --En-t�te de Volume--
 Ajout des permissions d'�criture et d'ex�cution au r�pertoire %s Patron ambigu `%s' Total actuellement �crit est (je l'esp�re) %d
 L'archive sans �tiquette ne peut concorder � `%s'. Archive vers l'entr�e standard. Archive vers la sortie standard. Au d�but du ruban, fin pr�matur�e. Tentative d'extraction des liens symboliques comme des liens directs. Ne peut ajouter le r�pertoire %s Ne peut ajouter le fichier %s Ne peut allouer un tampon de stockage. Ne peut changer pour le r�pertoire %s Ne peut changer de r�pertoire pour %s Ne peut fermer le descripteur %d Ne peut fermer le fichier #%d %s ne peut �tre ex�cut�. Ne peut lancer un 'shell' %s Ne peut ex�cuter un shell t�l�command�. Ne peut extraire `%s' -- le fichier est la suite d'un autre volume. %s ne peut �tre ouvert. L'archive %s ne peut �tre ouverte. Ne peut ouvrir le r�pertoire %s Ne peut ouvrir le fichier %s Ne peut �tablir le relais (pipe) Ne peut effectuer la duplication de %s. Ne peut lire %s Ne peut lire la confirmation de l'usager. Ne peut lire � partir du programme de compression. Ne peut lire le lien %s Ne peut enlever %s %s ne peut �tre renomm� � %s Ne peut se placer � la position %ld dans le fichier %s Ne peut �valuer %s Ne peut �valuer le fichier %s Ne peut cr�er un lien symbolique de %s vers %s Ne peut mettre � jour des archives compress�es. Ne peut traiter des archives compress�es portant sur plusieurs volumes. Ne peut v�rifier des archives compress�es. Ne peut v�rifier des archives comportant plusieurs volumes. Ne peut v�rifier des archives utilisant l'entr�e/sortie standard. Ne peut �crire vers %s Ne peut �crire vers un programme de compression. Processus enfant ne peut proc�der par clonage (fork) Processus enfant a �t� stopp� par le signal %d%s Le processus enfant a retourn� le statut %d Options conflictuelles de formatage d'archive. Options conflictuelles de compression. Ne peut allouer de la m�moire pour le facteur de blocage %d Ne peut effacer par recul un fichier d'archive;
elle pourrait �tre illisible sans l'option -i . Ne peut rep�rer le r�pertoire courant. Ne peut rep�rer le r�pertoire courant: %s Ne peut se repositionner sur le fichier d'archive. Ne peut rembobiner le fichier d'archive pour v�fication. Ne peut lire que %d octets sur %ld octets. Refus cat�gorique de cr�er un fichier d'archive vide. Cr�ation du r�pertoire: Les donn�es sont diff�rentes. Rejet d'une en-t�te non conforme de l'archive. Les num�ros du p�riph�rique ont �t� modifi�s. Le r�pertoire %s a �t� renomm�. Le r�pertoire %s est nouveau. N'existe pas. Erreur lors de la fermeture de %s Erreur lors du retrait %s Extraction des fichiers contigu�s comme des fichiers de type r�gulier Le fichier n'existe pas. Nom de fichier %s%s trop long. Nom de fichier %s/%s trop long. Options de GNU demand�es pour un format d'archive incompatible. Commande rejet�e. G�n�rer les fichiers de donn�es pour la suite des tests de GNU tar.
 Les Gid diff�rent. Si une option de forme longue requiert un param�tre obligatoire,
il est alors obligatoire �galement pour une option de forme courte.

  -l, --file-length     longueur du fichier g�n�r�
  -p, --pattern=PATRON  PATRON doit �tre "default" ou "zeros"
      --help            afficher l'aide-m�moire
      --version         afficher le nom et la version du logiciel
 Format de date invalide dans `%s' Mode invalide donn� en option M�moire occup�e. Apr�s -C le nom de fichier est manquant. Les dates de modification diff�rent. Les modes d'acc�s diff�rent. Le mode ou le type de p�riph�rique a �t� modif�. Plus d'une date de seuil L'option `-M' est requise pour des fichiers � multiples archives. Aucun nom d'archive donn�. N'est pr�sentement plus un r�pertoire. Pas de nouveau volume; fin d'ex�cution.
 Fichier ou r�pertoire inexistant. N'est pas un fichier de type r�gulier. Ne poss�de pas de lien vers %s Option d�su�te remplac�e par --absolute-names L'option --backup remplace l'option devenue d�su�te. Option d�su�te remplac�e par --block-number Option d�su�te remplac�e par --blocking-factor Option d�su�te remplac�e par --read-full-records Option d�su�te remplac�e par --touch Option d�su�te, maintenant implicite par --blocking-factor Vieille option `%c'  requiert un param�tre suppl�mentaire. Les options `-%s' et`-%s' requi�rent toutes les deux l'entr�e standard. Les option  `-Aru' sont incompatibles avec l'option `-f -' Les options `-[0-7][lmh]' ne sont pas support�es par cette version de �tar� Fin de fichier pr�matur�e (EOF). Lecture du point de contr�le %d Erreur de lecture sur %s Lecture de %s
 La taille des enregistrements doit �tre un multiple de %d Retrait du caract�re '/' de t�te des liens absolus. Retrait du caract�re '/' de t�te des noms de chemins absolus de l'archive. %s renomm� � %s Les tailles diff�rent. Escamotage jusqu'� la prochaine en-t�te. Les liens symboliques diff�rent. %s reli� par lien symbolique � %s Ceci ne ressemble pas � une archive de type �tar� Ce logiciel est gratuit; voir les sources pour les conditions de
reproduction. AUCUNE garantie n'est donn�e; tant pour des raisons
COMMER�IALES que pour R�PONDRE � UN BESOIN PARTICULIER.
 Ce volume est hors s�quence. Trop d'erreurs, fin d'ex�cution. Nombre total d'octets �crits:  Pour en savoir davantage, faites: `%s --help'.
 Les Uid diff�rent. Commande %s de correction inconnue. Patron inconnu `%s' Erreur syst�me inconnue. V�rification en cours. Le volume `%s' ne concorde pas � `%s'. AVERTISSEMENT: l'archive est incompl�te. AVERTISSEMENT: ne peut fermer %s (%d, %d) AVERTISSEMENT: pas d'en-t�te sur le volume. �criture d'un point de contr�le %d �criture de %d octets (short) vers un programme de compression. Vous ne pouvez pas s�lectionner plus d'une option parmi `-Acdtrux'  exec/tcp: service non disponible. �rmtd�: commande %c rejet�e.
 stdin stdout �tar� (child) �tar� (grandchild) 