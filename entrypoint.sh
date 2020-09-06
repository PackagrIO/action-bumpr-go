#!/bin/bash -l

echo "::add-path::/srv/packagr"
echo "::add-path::/go/bin"
echo "::add-path::/usr/local/go/bin"

env

echo "Starting Bumpr $1"
version=$(/srv/packagr/packagr-bumpr start --scm github --package_type golang)
echo "::set-output name=version::$version"
