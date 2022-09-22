#! /usr/bin/env bash

#if the command is less then or equal to 
if [[ $# -le 0 ]]
then
    echo "You did not pass any files as arguments to the script."
    echo "Usage:" "$0" "my-file"
    exit
fi

file=$1

if [ ! -f "$file" ]
then
    echo "File does not exist!"
fi

while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "$line"
done < "${file}"