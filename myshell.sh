#!/bin/bash
NAME=$1
LAST_NAME=$2
SHOW=$3
if [[ $SHOW == "true" ]]
then 
	echo " $NAME $LAST_NAME"
else
	echo " Not allowed to show the names "
fi
