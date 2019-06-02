#!/bin/sh

# For each directory containing a valid NIC template source folder
templateDirs=$(find . -type d -name NIC -exec dirname {} \; | xargs -n1 dirname | sort -u)
for d in $templateDirs; do
	if [[ -d $d ]]; then
		pushd $d &> /dev/null
		# For each valid NIC template source folder
		templateSubDirs=$(find . -type d -name NIC -exec dirname {} \;)
		for f in $templateSubDirs; do
			if [[ -d $f ]]; then
				# Build the template
				nicify.pl $f
			fi
		done
		popd &> /dev/null
	fi
done
