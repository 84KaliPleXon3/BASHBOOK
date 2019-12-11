# Multi-Thread Example

Script:
```
#!/bin/bash

function someFunction() {
	sleep 0.$(shuf -i 1-9 | head -1)s
	echo "TEST THREAD $1"
}

THREAD=5 # push 5 process simultaneously

(
	for thing in {1..20}; do 
		((cthread=cthread%THREAD)); ((cthread++==0)) && wait
		someFunction "$thing" & 
	done
	wait
)
```
