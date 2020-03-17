# Multi-Processing Example

Script:
```
#!/bin/bash

function someFunction() {
	sleep 0.$(shuf -i 1-9 | head -1)s
	echo "TEST PROC $1"
}

MPROC=5 # push 5 process simultaneously

(
	for thing in {1..20}; do 
		((cproc=cproc%MPROC)); ((cproc++==0)) && wait
		someFunction "$thing" & 
	done
	wait
)
```
