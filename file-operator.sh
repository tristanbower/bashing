#! /usr/bin/env bash

# test -[OPERATOR] [FILE]
# Operators:
#   -a      File exists
#   -b      File exists and is a block special file
#   -c      File...

if [[ $# -le 0 ]]
then
    echo "You did not pass any files as arguments to the script."
    echo "Usage:" "$0" "my-file-1 my-file-2" 
    exit
fi

for arg in "$@"
do 
    # Does it actually exist?
    if [[ ! -e "$arg" ]]
    then 
        echo "* Skipping ${arg}"
        continue
    fi

    if [ -f "$arg" ]
    then 
        echo "* $arg is a regular file!"
    else
        echo "* $arg us not a regular file!"
    fi

    [ -b "$arg" ] && echo "* $arg is a block device."
    [ -d "$arg" ] && echo "* $arg is a a directory."
    [ ! -d "$arg" ] && echo "* $arg is not a directory"

    [ -x "$arg" ] && echo "* $arg is executable."
    [ ! -x "$arg" ] && echo "* $arg is not executable."

    [[ -h "$arg" ]] && echo "* $arg is a symbolic link."
    [ ! -h "$arg" ] && echo "* $arg is not a symbolic link."

    [[ -s "$arg" ]] && echo "* $arg has nonzero size."
    [ ! -s "$arg" ] && echo "* $arg has zero size."

    [[ -r "$arg" && -d "$arg" ]] && echo "* $arg is a readable directory."
    [[ -r "$arg" && -f "$arg" ]] && echo "* $arg is a readable regular file."
done