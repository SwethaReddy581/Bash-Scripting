#!/bin/bash

echo "Enter the directory name"
read dir

if [ -d "$dir" ]
then
	echo "Directory already exists"
else
	mkdir "$dir" 
	echo "Directory Created successfully"
fi
