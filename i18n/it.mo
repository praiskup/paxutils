��    v      �  �   |      �	  +   �	  -  
  �  K     �     �     �  "        5  2   S     �     �  $   �     �     �          /     K     \     t  #   �     �     �     �  2   �     ,     =  "   O  5   r     �     �     �     �     	     $     :     I     `  <   |     �     �     �     �            "   ,  $   O     t     �     �     �     �     �     �  +   	  #   5  "   Y     |  #   �     �     �     �  "   �       0   =  A   n     �  #   �  "   �  (     ,   @     m     �     �     �     �  ,   �       2   '     Z     s     �     �  +   �     �  1     /   ?  2   o  4   �  (   �  1      %   2  0   X  +   �  1   �     �     �          !  %   -     S     d     |  %   �     �     �     �  &        +     I     ^     f  !   �     �     �  +   �  3        5  0  U  .   �  �  �    l     u!     �!     �!      �!  -   �!  ?   "  %   O"      u"  ;   �"  "   �"  .   �"      $#  )   E#     o#     �#     �#  &   �#  #   �#     $     $$  C   =$     �$     �$  %   �$  <   �$     	%  C   )%  &   m%  )   �%  $   �%     �%     &     &  '   7&  J   _&     �&     �&      �&     �&  2   '     M'  '   b'  /   �'  $   �'     �'     �'  2   (  )   F(  /   p(  6   �(  .   �(  )   )  ,   0)     ])  /   v)  2   �)  1   �)  +   *  #   7*  (   [*  S   �*  V   �*  5   /+  9   e+  2   �+  6   �+  3   	,     =,  +   P,     |,     �,  %   �,  +   �,  %   -  A   )-  "   k-  $   �-  ,   �-     �-  *   �-     &.  7   E.  5   }.  5   �.  7   �.  +   !/  B   M/  0   �/  >   �/  /    0  ,   00     ]0     u0     �0  	   �0  7   �0     �0       1  "   !1  (   D1      m1     �1  '   �1  .   �1  %   �1     "2  	   @2  &   J2  *   q2  (   �2     �2  M   �2  3   33  "   g3     e   :          0       6           T   	   d          I   1   U              a   B   ^                _                  R   t       W   +           N   3   %   8      K   o      ;         q   \   J          f   h      u      ]   ,      Z       j   D   >      P                   G   k   [   `   M          b       g             Q      s   c              -   i   n   5   .          O   *   @   $   X   l   4   !         E   V   A   
              /       (   =   ?       )                  v           m   r   &   C   2   p   9       "   F   7      S          L       #       '   <   H       Y    Prepare volume #%d for %s and hit return:  
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
  link to %s
  unknown file type `%c'
 %s is not continued on this volume %s is the archive; not dumped %s: Could not change access and modification times %s: Could not create directory %s: Could not create file %s: Could not create symlink to `%s' %s: Could not link to `%s' %s: Could not make fifo %s: Could not make node %s: Could not write to file %s: Deleting %s
 %s: Error while closing %s: Not found in archive %s: Unknown file type; file ignored %s: is unchanged; not dumped --Mangled file names--
 --Volume Header--
 Added write and execute permission to directory %s Archive to stdin Archive to stdout At beginning of tape, quitting now Attempting extraction of symbolic links as hard links Cannot add file %s Cannot allocate buffer space Cannot change to directory %s Cannot chdir to %s Cannot close descriptor %d Cannot close file #%d Cannot exec %s Cannot exec a shell %s Cannot execute remote shell Cannot extract `%s' -- file is continued from another volume Cannot open %s Cannot open archive %s Cannot open directory %s Cannot open file %s Cannot open pipe Cannot read %s Cannot read confirmation from user Cannot read from compression program Cannot read link %s Cannot remove %s Cannot rename %s to %s Cannot seek to %ld in file %s Cannot stat %s Cannot stat file %s Cannot symlink %s to %s Cannot use multi-volume compressed archives Cannot verify multi-volume archives Cannot verify stdin/stdout archive Cannot write to %s Cannot write to compression program Child cannot fork Child died with signal %d%s Child returned status %d Conflicting archive format options Conflicting compression options Could not allocate memory for blocking factor %d Could not backspace archive file; it may be unreadable without -i Could not get current directory Could not get current directory: %s Could not re-position archive file Could not rewind archive file for verify Cowardly refusing to create an empty archive Creating directory: Directory %s has been renamed Directory %s is new Error while closing %s Error while deleting %s Extracting contiguous files as regular files File name %s%s too long GNU features wanted on incompatible archive format Invalid date format `%s' Invalid mode given on option Missing file name after -C More than one threshold date Multiple archive files requires `-M' option No new volume; exiting.
 Obsolete option name replaced by --absolute-names Obsolete option name replaced by --block-number Obsolete option name replaced by --blocking-factor Obsolete option name replaced by --read-full-records Obsolete option name replaced by --touch Obsolete option, now implied by --blocking-factor Old option `%c' requires an argument. Options `-%s' and `-%s' both want standard input Options `-Aru' are incompatible with `-f -' Options `-[0-7][lmh]' not supported by *this* tar Premature end of file Read checkpoint %d Read error on %s Reading %s
 Record size must be a multiple of %d. Renamed %s to %s Skipping to next header Symlinked %s to %s This does not look like a tar archive This volume is out of sequence Too many errors, quitting Total bytes written:  Try `%s --help' for more information.
 Unknown demangling command %s Unknown system error Verify  WARNING: Archive is incomplete WARNING: Cannot close %s (%d, %d) WARNING: No volume header Write checkpoint %d Write to compression program short %d bytes You may not specify more than one `-Acdtrux' option exec/tcp: Service not available Project-Id-Version: GNU tar 1.11.11
POT-Creation-Date: 1998-02-19 21:41-0500
PO-Revision-Date: 1996-10-16 14:25-0200
Last-Translator: Lele Gaifax <lele@nautilus.eclipse.it>
Language-Team: Italian <it@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8-bit
 Prepara il volume #%d per %s e premi return:  
Bloccaggio dispositivi:
  -b, --blocking-factor=BLOCKS   usa record di dimensioni BLOCKS x 512 bytes
      --record-size=SIZE         usa record di dimensioni SIZE bytes,
                                 multiplo di 512
  -i, --ignore-zeros             ignora blocchi annullati nel archivio
  -B, --read-full-records        riorganizza in blocchi mentre leggi (per
                                 comunicazione tramite pipes su 4.2BSD)
 
Selezione del dispositivo:
  -f, --file=ARCHIVIO            usa come archivio il file o il dispositivo
                                 ARCHIVIO
      --force-local              l'archivio e' locale anche se contiene `:'
      --rsh-command=COMANDO      usa COMANDO come shell remota al posto di rsh
  -[0-7][lmh]                    specifica il nastro e la densita'
  -M, --multi-volume             crea/lista/estrai archivi multi-volume
  -L, --tape-length=NUM          cambia nastro dopo aver scritto NUMx1024 bytes
  -F, --info-script=FILE         esegui lo script FILE alla file di ogni nastro
                                 (implica -M)
      --new-volume-script=FILE   equivalente a -F FILE
      --volno-file=FILE          usa/aggiorna il numero del volume in FILE
 
Uso: %s [OPZIONI]...
  collegamento a %s
  tipo di file sconosciuto `%c'
 %s non continua in questo volume %s e' presente nell'archivio; non lo archivio %s: non riesco a cambiarne i tempi di accesso e ultima modifica %s: non ho potuto creare la directory %s: non ho potuto creare il file %s: non ho potuto creare un collegamento simbolico con `%s' %s: non ho potuto collegare a `%s' %s: non ho potuto creare il file speciale fifo %s: non ho potuto creare il nodo %s: Non sono riuscito a scrivere nel file %s: Cancello %s
 %s: errore durante la chiusura %s: non trovato nell'archivio %s: Tipo di file sconosciuto: ignorato %s: non modificato; non lo archivio --Nomi distorti dei file--
 --Intestazione Volume--
 Ho aggiunto i permessi di scrittura ed esecuzione alla directory %s Archivio da stdin Archivio su stdout All'inizio del nastro, termino adesso Cerco di estrarre i collegamenti simbolici come tradizionali Non posso aggiungere il file %s Non ho potuto ottenere la memoria necessaria per la bufferizzazione Non posso spostarmi nella directory %s Non riusco a spostarmi nella directory %s Non posso chiudere il descrittore %d Non posso chiudere il file #%d Non posso eseguire %s Non posso eseguire la shell %s Non riesco ad eseguire una shell remota Non posso estrarre `%s' -- il file e' una continuazione da un altro volume Non posso aprire %s Non posso aprire l'archivio %s Non posso aprire la directory %s Non posso aprire il file %s Non posso aprire il canale di comunicazione (pipe) Non posso leggere %s Non posso ottenere conferma dall'utente Non posso leggere dal programma di compressione Non posso leggere il collegamento %s Non posso rimuovere %s Non posso rinominare %s a %s Non posso spostarmi alla posizione %ld nel file %s Non riesco ad ottenere informazioni su %s Non riesco ad ottenere informazioni sul file %s Non posso creare il collegamento simbolico tra %s e %s Non posso usare archivi multi-volume compressi Non posso verificare archivi multi-volume Non posso verificare archivi su stdin/stdout Non posso scrivere su %s Non posso scrivere al programma di compressione Il sottoprocesso non riesce a crearne un ulteriore Il sottoprocesso e' terminato con un segnale %d%s Il sottoprocesso ha ritornato uno status %d Conflitto tra le opzioni di formato Conflitto tra le opzioni di compressione Non sono riuscito ad ottenere la memoria necessaria per un fattore di bloccaggio %d Non posso riavvolgere il file archivio; potrebbe essere illeggibile senza l'opzione -i Non sono riuscito a determinare la directory corrente Non sono riuscito a determinare la directory corrente: %s Non sono riuscito a riposizionare il file archivio Non posso riavvolgere il file archivio per la verifica Codardamente mi rifiuto di creare un archivio vuoto Creo la directory: E' stato cambiato il nome alla directory %s La directory %s e' nuova Errore nella chiusura di %s Errore durante la cancellazione di %s Estraggo i file contigui come file regolari Il nome del file %s%s e' troppo lungo Richiesta una funzionalita' GNU su formato archivio incompatibile Formato della data non valido `%s' Modo non valido in una delle opzioni Manca un nome di directory dopo l'opzione -C Piu' di una data di soglia Archivi multipli richiedono l'opzione `-M' Nessun nuovo volume; termino.
 Nome di opzione obsoleto sostituito da --absolute-names Nome di opzione obsoleto sostituito da --block-number Nome opzione obsoleto sostituito da --blocking-factor Nome opzione obsoleto sostituito da --read-full-records Nome opzione obsoleto sostituito da --touch Opzione obsoleta, ora implicitamente definita da --blocking-factor L'opzione abbreviata `%c' richiede un argomento. Entrambe le opzioni `-%s' e `-%s' richiedono lo standard input Le opzioni `-Aru' sono incompatibili con `-f -' Le opzioni `-[0-7][lmh]' non sono supportate Prematura fine del file Lettura punto di controllo %d Errore di lettura da %s Leggo %s
 La dimensione del record deve essere un multiplo di %d. Rinominato %s a %s Salto alla prossima intestazione Collegato simbolicamente %s con %s Questo non assomiglia ad un archivio tar Questo volume non e' in sequenza Troppi errori, termino Numero bytes scritti complessivamente:  Prova `%s --help' per ulteriori informazioni.
 Comando di distorsione sconosciuto %s Errore di sistema sconosciuto Verifica  ATTENZIONE: L'archivio non e' completo ATTENZIONE: Non posso chiudere %s (%d, %d) ATTENZIONE: intestazione volume mancante Scrittura punto di controllo %d La scrittura al programma di compressione e' risultata piu' corta di %d bytes Non puoi specificare piu' di una opzione `-Acdtrux' exec/tcp: servizio non disponibile 