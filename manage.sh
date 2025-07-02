#mckinnon

#sudo mv /folder_r/* /home/wmckinnon/folder_h/

#sudo cp -r /home/wmckinnon/folder_h/* /folder_r/

sudo rsync -av /folder_r/ /home/wmckinnon/folder_h/

DIR_PATH="/folder_r/folder_T"
mkdir -p "$DIR_PATH"


FILE_PATH="/folder_r/text2.txt"
echo "Text1" > "$FILE_PATH"

