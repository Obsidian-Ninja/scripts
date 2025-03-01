# Author : Gurvansh Gupta
# Date : Sat 01 Mar 2025 12:38:57 PM UTC

#Archiving logs greater than a particular size threshold

#shebang line
#!/bin/bash

#Variables
base_dir=/home/desktop/file  #Change this to your base directory path
days=10
depth=1
run=0

#check if the directory is present
if [ ! -d $base_dir ]
then 
  echo "directory does not exists: $base_dir"
  exit 1
fi

#create archive folder if not present
if [ ! -d $base_dir/archive ]
then
  mkdir $base_dir/archive
fi

#find the list of files greater than 20MB
for i in `find $base_dir -maxdepth $depth -type f -size +20M`
do
  if [ $run -eq 0]
  then
    echo "archiving $i ==> $base_dir/archive"
    gzip $i || exit 1
    mv $i.gz $base_dir/archive || exit 1
  fi
done

#end
exit
