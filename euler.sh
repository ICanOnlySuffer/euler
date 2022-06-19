#!/bin/env sh

euler () {
	for arg in "$@"; do
		if [ -d $arg ]; then
			if [ -f "$arg/problem.md" ]; then
				echo -e "\033[1;32m`head -n1 $arg/problem.md`\033[37m"
				sed 1d "$arg/problem.md"
			fi
			if [ -f "$arg/result.txt" ]; then
				cat $arg/result.txt | read result
				echo -e "\033[36m$result\033[37m <- result"
			fi
			euler $arg/*
			result=''
			echo
		elif [ -f $arg ]; then
			case $arg in
			*.c) cc $arg -lm && ./a.out; rm -r a.out;;
			*.rs) rustc $arg && ./main; rm -r main;;
			*.sh) $SHELL $arg;;
			*.py) python $arg;;
			*.rb) ruby $arg;;
			*) echo skip;;
			esac | read output
			
			if [ "$result" = "" ]; then
				result_file="`dirname $arg`/result.txt"
				if [ -f "$result_file" ]; then
					cat "$result_file" | read result
				fi
			fi
			if [ "$output" != 'skip' ]; then
				echo -en "\033[1m"
				if [ "$output" = "$result" ]; then
					echo -en "\033[32m$output"
				else
					echo -en "\033[31m$output"
				fi
				echo -e "\033[37m <- `basename $arg`"
			fi
		fi
	done
	echo -en "\033[0m"
}
