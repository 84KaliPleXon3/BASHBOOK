#!/bin/bash

THREAD=5 # push 5 process simultaneously

(
	for thing in {1..20}; do 
		((cthread=cthread%THREAD)); ((cthread++==0)) && wait
		someFunction "$thing" & 
	done
	wait
)
