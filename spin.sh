#!/usr/bin/env bash

spinner=( Tristan tRistan trIstan triStan trisTan tristAn tristaN )

spin(){
while [ 1 ]
	do 
	for i in "${spinner[@]}"
	do
	echo -ne "\r$i"
	sleep 0.3
done
done
}

spin
