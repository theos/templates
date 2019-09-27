#!/usr/local/bin/fish

./build.sh
mv ios/*.nic.tar ./

pushd build

for n in ../*.nic.tar
	set nicname (string replace "iphone_" "" (string replace ".nic.tar" "" (basename $n)))
	set projname "$nicname.example"
	nic.pl -p $nicname -n $projname -u X --nic $n
end

for d in *
	pushd $d
	make all
	popd
end

popd

rm -r build/*
