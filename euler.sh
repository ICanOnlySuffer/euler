#!/bin/env sh


euler () {
	run-c () {
		cc $1 -lm || return 'skip'
		./a.out $2 | read output || return 'skip'
		rm a.out
		return $output
	}
	
	run-rust () {
		rustc $1 || return 'skip'
		./main $2 | read output || return 'skip'
		rm main
		return $output
	}
	
	run-awk () {
		
	}
	
	for arg in "$@"; do
		if [ -d $arg ]; then
			if [ -f "$arg/problem.md" ]; then
				echo
				echo -e "\033[1;32m`head -n1 $arg/problem.md`\033[37m"
				sed 1d "$arg/problem.md"
			fi
			if [ -f "$arg/result.txt" ]; then
				cat $arg/result.txt | read result
				echo -e "\033[36m$result\033[37m <- result"
			fi
			euler $arg/*
			result=''
		elif [ -f $arg ]; then
			input="`dirname $arg`/input.txt"
			
			case $arg in
			*.c)
				cc $arg -lm && ./a.out "$input"; rm -r a.out;;
			*.rs) rustc $arg && ./main "$input"; rm -r main;;
			*.awk) awk -f $arg "$input";;
			*.py) python $arg "$input";;
			*.rb) ruby $arg "$input";;
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

