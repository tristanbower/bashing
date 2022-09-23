#!/usr/bin/env bash

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

while read -r -n1 char; do
    echo "$char"
done < "${file}"