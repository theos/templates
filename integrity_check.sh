#!/bin/bash

set -e

WORKSPACE_DIR=$(mktemp -d --tmpdir='' "templates.XXXXXXXXXX")
TEMPLATES_DIR=$(pwd)

# For each directory containing a valid NIC templates' source
TEMPLATES_SOURCES=$(find "${TEMPLATES_DIR}" -type d -name NIC -exec dirname {} \;)

cd "${WORKSPACE_DIR}"

EXIT_CODE=0

for TEMPLATES_SOURCE in $TEMPLATES_SOURCES; do
    "${THEOS}/bin/nicify.pl" "${TEMPLATES_SOURCE}" 2> /dev/null
    RESULT_FILE=$(ls *.nic.tar)
    EXTRACT_DIR=$(mktemp -d -p . "${RESULT_FILE}.XXXXXXXXXX")
    tar -xf "${TEMPLATES_DIR}/${RESULT_FILE}" -C "${EXTRACT_DIR}"
    # thanks to https://stackoverflow.com/a/49633090
    if ! diff -r --no-dereference --brief -x '.keep' "${TEMPLATES_SOURCE}" "${EXTRACT_DIR}"; then
        EXIT_CODE=1
        # per https://docs.github.com/en/actions/learn-github-actions/variables#default-environment-variables
        if [[ "${GITHUB_ACTIONS}" = "true" ]]; then
            # per https://docs.github.com/en/actions/using-workflows/workflow-commands-for-github-actions#setting-an-error-message
            echo "::error file=${RESULT_FILE},title=Mismatch::The NIC file does not match the template directory"
        fi
    fi
    rm -r "${EXTRACT_DIR}"
    rm "${RESULT_FILE}"
done

rm -r "${WORKSPACE_DIR}"

exit "${EXIT_CODE}"
