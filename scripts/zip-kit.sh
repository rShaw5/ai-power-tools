#!/bin/sh
# zip-kit.sh — zip all non-git-ignored items into output/<parent>.zip
# Usage: sh scripts/zip-kit.sh (run from the repo root)
set -eu
cd "$(dirname "$0")/.."
mkdir -p output
name="$(basename "$PWD")"
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT INT TERM
git archive HEAD | tar -x -C "$tmp"
rm -f "output/${name}.zip"
(cd "$tmp" && ditto -c -k --norsrc . "$OLDPWD/output/${name}.zip")
echo "Wrote output/${name}.zip"
unzip -l "output/${name}.zip"
