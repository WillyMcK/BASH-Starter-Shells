#mckinnon

#sed -i '25i THIS TEXT IS AT LINE 25' /home/wmckinnon/rsyncmanual.txt

#sed -i '/you/a INSERTED TEXT' /home/wmckinnon/rsyncmanual.txt

sed -i 's/INSERTED TEXT/ /g' /home/wmckinnon/rsyncmanual.txt
