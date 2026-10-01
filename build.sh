#!/bin/sh
# Build the site: compiles typst/index.typ into the toplevel index.html.
set -e
cd "$(dirname "$0")"
typst compile --features html --format html --root . typst/index.typ index.html
