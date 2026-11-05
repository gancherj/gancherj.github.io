#!/bin/sh
# Build the site and open it locally for a look.
set -e
cd "$(dirname "$0")"
./build.sh
open index.html
