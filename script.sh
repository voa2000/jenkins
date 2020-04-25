#!/bin/bash
NAME=$1
LASTNAME=$2
SHOW=$3

if [ "$SHOW" = "true" ]; then
	echo "Hello, $NAME $LASTNAME this is from a script in the jenkins conrainer"
else
	echo "You have no show"
fi
