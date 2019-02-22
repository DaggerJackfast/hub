#!/bin/bash
set -e

current_branch=$(git rev-parse --abbrev-ref HEAD)
full_hash=$(git rev-parse HEAD)
short_hash=${full_hash:0:7}
release_version=$(< ../VERSION)
if [ "$current_branch" == "development" ]; then    
    current_version=${release_version}-${short_hash}
else
    current_version=release_version
fi
echo $current_version
