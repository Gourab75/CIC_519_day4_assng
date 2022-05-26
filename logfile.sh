#!/bin/bash
for file in *.log
do
folderName= `echo $file | awk -F. '{print $1}'`;
echo "original file" $file;
echo "file name without extention"
$folderName;
date=$(date +"%d%m%Y%H%M");
echo "final name of copied file"
$date".log"
printf "\n";
if [ -d $folderName ]
then
rm -r $folderName;
fi
mkdir $folderName;
cp $file $folderName/$file;

#touch gourab.log "$(date +"%d-%m-%Y-%T")"

mv $folderName/$file $folderName/ 
$date.log;
done
