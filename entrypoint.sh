#!/usr/bin/env bash

PATH=/srv/packagr:/go/bin:/usr/local/go/bin:$PATH

if [[ ! -z "${CUSTOM_WORKING_DIRECTORY}" ]]; then
  cd "${CUSTOM_WORKING_DIRECTORY}"
fi

echo "Starting Bumpr $1"
packagr-bumpr start --scm github --package_type golang
