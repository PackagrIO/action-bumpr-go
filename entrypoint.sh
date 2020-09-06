#!/bin/sh -l

echo "Starting Bumpr $1"
version=$(/srv/packagr/packagr-bumpr start --scm github --package_type golang)
echo "::set-output name=version::$version"
