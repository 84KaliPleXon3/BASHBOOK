#!/bin/bash

THREAD=5 # push 5 process simultaneously

(
	for thing in ((thing=1;thing<=20;thing++)); do 
		((cthread=cthread%THREAD)); ((cthread++==0)) && wait
		someFunction "$thing" & 
	done
	wait
)
