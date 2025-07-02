#mckinnon
#!/bin/bash

#echo "Type in a file type to backup $0"

FILE_TYPE="sh"
KEY_WORD="mckinnon"
DEST_DIR="/home/wmckinnon/Backups"



	find ~ -type f -name "*.$FILE_TYPE" -user "wmckinnon" 2>/dev/null | while read -r FILE; do
		if [ -r "$FILE" ] && head -n 1 "$FILE" | grep -q "$KEY_WORD"; then
			echo "$FILE"
			rsync $FILE $DEST_DIR
		fi
	done

#test
#test
