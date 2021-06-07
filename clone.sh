#!/bin/bash

DST="" #Enter your destination ID

readarray -t content < links.txt
for link in "${content[@]}"; do
	node copy $link $DST -S #add -S to use service accounts
done