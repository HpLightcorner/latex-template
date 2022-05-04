#!/usr/bin/env sh

while getopts c flag
do
    case $flag in
        c) git clean -ffdx;;	# clean everything
    esac
done

# repeat 'arara' until no more 'rerunfilecheck'
while : ; do
	arara Thesis -v || { grep -irnE "^!" Thesis.log; exit 1; };	# abort in case arara has failed
	grep "Warning" Thesis.log | grep -i rerun || break
done
