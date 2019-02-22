#!/bin/bash
set -e

last_tag=$(git describe --abbrev=0 --tags)
echo $last_tag
