#! /usr/bin/env bash

if [[ $# -le 0 ]]
then
    echo "You did not pass any files as arguments to the script."
    echo "Usage:" "$0" "my-file"
    exit
fi

file=$1

#check to see if the file exists
if [ ! -f "$file" ]
then
    echo "File does not exist!"
fi

# for each word in file print the word
for word in $(cat "${file}")
do
    echo "$word"
done