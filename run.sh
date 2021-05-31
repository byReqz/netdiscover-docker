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
if [[ "$passive" == "true" ]];then
	passivearg="-p"
fi

./gotty -p "$port" $creds --title-format "$title" tmux new-session -A -s netdiscover netdiscover $passivearg
