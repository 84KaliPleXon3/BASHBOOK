# Inline Loading in BASH
![Loading](https://raw.githubusercontent.com/panophan/BASHBOOK/master/loading-inline/loader-bash.gif)

Sample:
```
function _loading {
    let _progress=(${1}*100/${2}*100)/100
    let _done=(${_progress}*4)/10
    let _left=40-$_done
    _fill=$(printf "%${_done}s")
    _empty=$(printf "%${_left}s")
	printf "\r <[${_fill// /\#}${_empty// /-}]> ${_progress}%%"
}

last=10
for ((i=0;i<=$last;i++))
do
	_loading "$i" "${last}"
	sleep 0.1 
done
```
