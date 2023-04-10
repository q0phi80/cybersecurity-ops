#!/bin/bash

for f in /etc/*
do
	if [ "${f}" == "/etc/resolv.conf" ]
	then
		countNameservers=$(grep -c nameserver /etc/resolv.conf)
		echo "Total of ${countNameservers} nameservers found in ${f}"
		break
	fi
done
