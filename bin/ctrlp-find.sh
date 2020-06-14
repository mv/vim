#!/bin/bash

if [ -z "$1" ] 
then args="./"
else args="$@"
fi 

/usr/local/bin/gfind "$@" -type f | sort


