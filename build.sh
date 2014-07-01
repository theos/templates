#!/bin/sh

for f in ./*; do
	if [[ -d $f ]]; then
		nicify.pl $f
	fi
done

sudo cp -t $THEOS/templates/iphone/ iphone_*
