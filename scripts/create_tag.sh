#!/bin/bash
set -e

version=$(source ./scripts/get_version.sh)
git tag -a ${version} -m "staging version: ${version}"
git tag --list
last_tag=$(source ./scripts/get_last_tag.sh)
echo "last tag: ${last_tag}"
