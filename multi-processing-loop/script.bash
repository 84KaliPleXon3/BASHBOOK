#!/bin/bash

MPROC=5 # push 5 process simultaneously

(
	for thing in {1..20}; do 
		((cproc=cproc%MPROC)); ((cproc++==0)) && wait
		someFunction "$thing" & 
	done
	wait
)
