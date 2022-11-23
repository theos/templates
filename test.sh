#!/usr/bin/env bash

./build.sh

if [[ -d build ]]; then
	rm -r build
fi

mkdir -p build
pushd build &> /dev/null

# For each NIC template
for n in ../*.nic.tar; do
	nicname=$(basename $n .nic.tar)
	projname=${nicname#*_}
	# Pkg names can't have anything other than alphanum and -+.
	# Class names can't have anything other than alphanum
	# So strip all but alphanum so projects that pull the project name compile
	valid_projname=${projname//[^[:alnum:]]/}
	# Initialize a project (and accept defaults for special fields)
	yes | $THEOS/bin/nic.pl -p $nicname -n $valid_projname -u X --nic $n
	pushd $valid_projname &> /dev/null
	# Build the project
	make all
	popd &> /dev/null
done

popd &> /dev/null

rm -r build
