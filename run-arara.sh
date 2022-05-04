#!/usr/bin/env sh

build_path="./build"

while getopts c flag
do
    case $flag in
        c)  git clean -ffdx     # clean everything
            mkdir -p $build_path/src   # prepare folder structure
            ;;
    esac
done

# prepare build folder structure

# repeat 'arara' until no more 'rerunfilecheck'
while : ; do
	arara Thesis -v || { grep -irnE "^!" $build_path/Thesis.log; exit 1; };	# abort in case arara has failed
	grep "Warning" $build_path/Thesis.log | grep -i rerun || break
done
