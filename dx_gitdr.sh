#!/usr/bin/env bash
# author:daixu
# date:04/04/2018

filep=$1
dr=0

dorde(){
	for i in `git branch -r`; do
		sr=`grep $i $1`
		if [ -z $sr ]; then
			git br -d -r $i
		fi
	done
}


if [  $# == 2 ]; then
	if [ $1 == "-r" ] ; then
	 	dr=1
	else 
		echo "error params"
		exit
	fi
fi


if [ $dr == 0 ]; then
	cat $1 |xargs git br -d -r
else
	dorde $2
fi
