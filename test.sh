#!/usr/bin/env bash

./build.sh

mkdir -p build
pushd build

for n in ../*.nic.tar
do
	nicname=$(basename $n .nic.tar)
	projname=${nicname#*_}"_example"
	echo | $THEOS/bin/nic.pl -p $nicname -n $projname -u X --nic $n
	pushd ${projname/"-"/""}
	make all
	popd
done

popd

rm -r build
