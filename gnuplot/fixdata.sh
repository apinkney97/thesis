#!/bin/bash
FILENAME=$1
START=1.5
INCR=0.5
END=10
j=1

for i in `seq $START $INCR $END`
do
	echo Running pass $i of $END
	sed -i "s/.txt-$i.js/,$j/" $FILENAME
	((j++))
done
