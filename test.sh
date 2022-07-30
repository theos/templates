#!/usr/bin/env bash

./build.sh

mkdir -p build
pushd build &> /dev/null

# For each NIC template
for n in ../*.nic.tar; do
	nicname=$(basename $n .nic.tar)
	projname=${nicname#*_}"_example"
	# Initialize a project (and accept defaults for special fields)
	echo | $THEOS/bin/nic.pl -p $nicname -n $projname -u X --nic $n
	pushd ${projname/"-"/""} &> /dev/null
	# Build the project
	make all
	popd &> /dev/null
done

popd &> /dev/null

rm -r build
