#!/usr/bin/env bash

# A simple script to prevent me having to remember how to grab headers with netcat#

host=$1
port=$2
output="$1_$2"
echo "Grabbing header for $host on $port."
echo "Outputting to file."
echo "GET / HTTP/1.0\r\n\r\n" | nc $host $port > "$output".txt
echo "Writing complete. Exiting."

usage()
{
	# display usage message #
	echo
	echo "Usage format is <scriptname> <ip address> <port>"
	echo
}
