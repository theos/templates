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
	valid_projname=${projname//[-]/_}
	# Initialize a project (and accept defaults for special fields)
	yes | $THEOS/bin/nic.pl -p $nicname -n $valid_projname -u X --nic $n
	pushd ${valid_projname//[_]/} &> /dev/null
	# Build the project
	make all
	popd &> /dev/null
done

popd &> /dev/null

rm -r build
