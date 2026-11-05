#!/bin/sh
# Build the site: compiles each page in typst/ into a toplevel .html file
# (typst/index.typ -> index.html, typst/teaching.typ -> teaching.html, ...).
# typst/template.typ holds the shared layout and is not a page itself.
set -e
cd "$(dirname "$0")"
for src in typst/*.typ; do
  name=$(basename "$src" .typ)
  [ "$name" = template ] && continue
  typst compile --features html --format html --root . "$src" "$name.html"
  echo "built $name.html"
done
