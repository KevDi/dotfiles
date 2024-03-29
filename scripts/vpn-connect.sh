#!/usr/bin/env bash

vpn="$(nmcli -t -f name,type connection show --order name --active 2>/dev/null | grep vpn | head -1 | cut -d ':' -f 1)"

if [ -n "$vpn" ]; then
	nmcli con down id $vpn
else
	nmcli con up id ca.hideservers.net
fi
