#!/bin/bash

# This script check memory usage by process name ( or by command that executes process )
# for example if you want to know how much memory eats google-chrome execute: ./mem_stat google

usage() { 
	echo "Show memory usage of processes resolved by name (string)"
	echo "Usage: $0 [ARG1] [OPTIONS]
	-v		also show VSZ - virtual memory size"
	echo -e "\n$0 [ARG1]"
	echo "Where [ARG1] is name of process, or some string associated with desired process"
	exit 1;
}

while getopts vh opts; do
	case ${opts} in
		v) SHOW_VSZ=true;
			;;
		h) usage
			;;
	esac
done

find_rss(){
	ps aux --sort=-vsz,-rss | grep "$1" | awk '{print $6}' |awk '{s+=$1} END {print "==========\n\nRSS - resident set size, the non-swapped physical memory that a task has used: \n" s/1024  " Mb or " s/1024/1024 " Gb"}'
}

find_vsz(){
	ps aux --sort=-vsz,-rss | grep "$1" | awk '{print $5}' |awk '{s+=$1} END {print "==========\n\nVSZ - virtual memory size of the process in: \n" s/1024  " Mb or " s/1024/1024 " Gb\n=========="}'
}

if [[ $# < 1 ]] || [[ $# > 2 ]];then
	usage
	exit 1;
fi


if [[ ! -z "$SHOW_VSZ" ]];then
	find_rss "$2"
	find_vsz "$2"
else
	find_rss "$1"
fi


