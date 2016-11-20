#!/bin/sh

if [ $# -lt 3 ] 
then
	echo "Error: Invalid number of arguments."
	echo "Usage: ./set_version.sh <major> <minor> <patch>"
	exit 1
fi

cp -vf template_Dockerfile Dockerfile 
sed -i "s/__QT_MAJOR__/${1}/g" Dockerfile
sed -i "s/__QT_MINOR__/${2}/g" Dockerfile
sed -i "s/__QT_PATCH__/${3}/g" Dockerfile
if [ -z ${4+x} ]
then
	sed -i 's/__QT_FIX__/${QT_FIX}/g' Dockerfile
else
	sed -i "s/__QT_FIX__/-${4}/g" Dockerfile
fi

cp -vf template_setup.qs setup.qs
sed -i "s/__QT_MAJOR__/${1}/g" setup.qs
sed -i "s/__QT_MINOR__/${2}/g" setup.qs
sed -i "s/__QT_PATCH__/${3}/g" setup.qs

