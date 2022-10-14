#!/bin/bash

if [ "$2" = '+' ]
then
	res=$(( $1 + $3 ))
	echo $res
elif [ "$2" = '-' ]
then
	res=$(( $1 - $3 ))
	echo $res
elif [ "$2" = 'x' ]
then
	res=$(( $1 * $3 ))
	echo $res
elif [ "$2" = '/' ]
then
	res=$(( $1 / $3 ))
	echo $res
fi
