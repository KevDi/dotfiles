#!/usr/bin/env bash

wlan="$(nmcli -t -f name,type connection show --order name --active 2>/dev/null | grep wireless | head -1 | cut -d ':' -f 1)"

if [ -n "$wlan" ]; then
	nmcli con down id $wlan
else
	nmcli con up id mk_wlan
fi
