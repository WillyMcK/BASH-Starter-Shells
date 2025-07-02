#mckinnon
#!/bin/bash

echo "Type in a file type then key phrase $0"

FILE_TYPE=$1
KEY_COMMAND=$2
KEY_WORD="mckinnon"




find ~ -type f -name "*.$FILE_TYPE" -user "wmckinnon" 2>/dev/null | while read -r FILE; do
	if [ -r "$FILE" ] && head -n 1 "$FILE" | grep -q "$KEY_WORD"; then
		grep --with-filename "$KEY_COMMAND" "$FILE"
	fi
done









#	if [ -r "$FILE" ]; then
#		FIRST_LINE=$(head -n 1 "$FILE")
#		if [[ "$FIRST_LINE" == *"$KEY_WORD"* ]]; then
#			echo "$FILE"
#		fi
#	fi
#done
