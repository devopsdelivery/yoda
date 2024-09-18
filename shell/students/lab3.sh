ubuntu $ mkdir renamedir
ubuntu $ cd renamedir
ubuntu $ ls
ubuntu $ pwd
/root/renamedir
ubuntu $ touch ~/renamedir/file1.txt
ubuntu $ touch /renamedirfile2.txt
ubuntu $ touch /renamedirfile.txt

nano ~/renamedir/renomear.sh

#!/bin/bash

for FILE in "$DIR"/*.txt; do
    mv "$FILE" "$DIR/backup_$/basename "$"FILE")"
  done

  chmod +x  ~/renamedir/renomear.sh

   ~/renamedir/renomear.sh
