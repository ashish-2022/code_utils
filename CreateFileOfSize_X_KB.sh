#!/bin/sh
size_in_kb=1024
file="test_file_of_${size_in_kb}_kb"
TEXT="Line to be written to the file, Line to be written to the file, Line to be written to the file, Line to be written to the file, Line to be written to the file, Line to be written to the file."
f_size=0

while [ $f_size -lt $size_in_kb ]
do
    echo $TEXT >> $file
    f_size=$(ls -s $file | awk '{print $1}')
    f_size=$(($f_size+0))
done
