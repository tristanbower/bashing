#!/usr/bin/env bash

echo "Enter the number corresponding to your favorite color:"

select COLOR in blue red green yellow purple orange
do
    echo "Your selection is: $COLOR"
    break
done