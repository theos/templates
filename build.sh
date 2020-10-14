#!/bin/sh
set -e

if [[ "$#" -gt 1 || "$1" == "--help" || "$1" == "-h" ]]; then
	echo "Usage: $0 [template_name|-h|--help]"
	exit 1
fi

if [[ "$#" == 1 ]]; then
	templateName="$1"
fi

# For each directory containing one or more valid NIC templates' source
templateDirs=$(find . -type d -name NIC -exec dirname {} \; | xargs -n1 dirname | sort -u)
for d in $templateDirs; do
	pushd $d &> /dev/null
	# For each valid NIC template source
	templateSubDirs=$(find . -type d -name NIC -exec dirname {} \;)
	for f in $templateSubDirs; do
		# Build the template
		if [[ -z $templateName || $templateName == $(basename $f) ]]; then
			$THEOS/bin/nicify.pl $f
			mv *.nic.tar ../
		fi
	done
	popd &> /dev/null
done
