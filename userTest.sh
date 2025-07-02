#mckinnon

#!/bin/bash

echo "Would you like to create a folder? (Y/N)"
read user_response

create_folder() {
	echo "Please enter a folder name: "
	read folderName

	DIR_PATH="/home/wmckinnon/Documents/$folderName"
	mkdir -p "$DIR_PATH"

	echo "Created a folder named $folderName "
}


if [[ "$user_response" == "Y" || "$user_response" == "y" ]]; then
	create_folder
else
	echo "Program ended"
fi

while true; do
	echo "Would you like to create another? (Y/N)"
	read user_response
	if [[ "$user_response" == "Y" || "$user_response" == "y" ]]; then
		create_folder
	else
		echo "Program ended"
		break
	fi
done
