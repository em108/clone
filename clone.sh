#!/bin/bash

DST="" #Enter your destination ID
re='([-\w]{18,})'
readarray -t content < links.txt
for link in "${content[@]}"; do
	id=$( echo "$link" | grep --perl-regexp $re --only-matching )
	node copy $id $DST -S #add -S to use service accounts
done
