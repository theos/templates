#!/usr/local/bin/fish

./build.sh

pushd build

for n in ../*.nic.tar
	set nicname (string replace -r 'iphone_(.*).nic.tar' '$1' (basename $n))
	set projname $nicname"_example"
	nic.pl -p $nicname -n $projname -u X --nic $n
	pushd (string replace "-" "" $projname)
	make all
	popd
end

popd

rm -r build/*
