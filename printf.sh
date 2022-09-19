#! /usr/bin/env bash

#The '-v var' option causes output of printf to be stored in a variable
#Example
# printf -v myvar "%d\n" "OxF9"
# #echo $myvar

# %s formats argument as a string
# %f prints floating point values
# %d prints argument as a integer
for i in $( seq 1 10)
do
    printf "%04d\t" "$i"
done
echo

# '%x' prints value as hexidecimal
for i in $( seq 1 10 )
do 
    printf "%x\t" "$i"
done
echo

# '%X' prints value as Uppercase hexidecimal
for i in $( seq 1 10 )
do
    printf "%X\t" "$i"
done
echo

for i in $( seq 10 15 )
do
    printf "%04d\t is %X\t in HEX.\n" "$i" "$i"
done
echo

for i in $( seq 5 10 )
do 
    printf "%.10s is %X in HEX.\n" "$i.............." "$i"
done
echo