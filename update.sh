#!/usr/bin/env bash
set -euo pipefail
apt-get update
apt-get upgrade -y
cd /opt || exit 1
find . -type d -maxdepth 1 -exec git --git-dir={}/.git --work-tree="$PWD"/{} pull origin master \;
