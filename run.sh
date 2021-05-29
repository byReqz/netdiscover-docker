#!/bin/bash

if [[ -z "$port" ]];then
	port=8080
fi
if [[ -n "$userpass" ]];then
	creds="-c "$userpass""
fi
if [[ -z "$title" ]];then
	title=netdiscover-docker
fi
./gotty -p "$port" $creds --title-format "$title" netdiscover
