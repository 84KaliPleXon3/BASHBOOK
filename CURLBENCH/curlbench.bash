#!/bin/bash

URL="https://yoursite.com/"
LOG="/tmp/curl_bench.log"
THREAD=25

function sendReq() {
	URL="${1}"
	OUT=$(curl -s "${URL}" -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36' -w 'response time %{time_total}s - http status [%{http_code}]\n' -o /dev/null)
	echo "[$(date +"%Y-%m-%d %H:%M:%S")] ${URL} - ${OUT}"
	echo "[$(date +"%Y-%m-%d %H:%M:%S")] ${URL} - ${OUT}" >> ${LOG}
}

(
	while true
	do 
		((cthread=cthread%THREAD)); ((cthread++==0)) && wait
		sendReq "${URL}" & 
	done
	wait
)
