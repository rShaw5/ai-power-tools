#!/bin/sh
# zip-kit.sh — zip all non-git-ignored items into output/<parent>.zip
# Gmail-safe: leaves out scripts/ and ships *.mjs as *.mjs.txt
# (Gmail blocks .mjs/.js attachments even inside zips).
# Usage: sh scripts/zip-kit.sh (run from the repo root)
set -eu
cd "$(dirname "$0")/.."
mkdir -p output
name="$(basename "$PWD")"
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT INT TERM
git archive HEAD | tar -x -C "$tmp"
rm -rf "$tmp/scripts"
find "$tmp" -name '*.mjs' | while IFS= read -r f; do
  {
    printf '%s\n' "// NOTE: this file ships as .txt so the zip passes Gmail's attachment filter."
    printf '%s\n' "// Save it back as '$(basename "$f")' to run it. Originals: https://github.com/rShaw5/ai-power-tools"
    printf '\n'
    cat "$f"
  } > "$f.txt"
  rm "$f"
done
rm -f "output/${name}.zip"
(cd "$tmp" && ditto -c -k --norsrc . "$OLDPWD/output/${name}.zip")
echo "Wrote output/${name}.zip"
unzip -l "output/${name}.zip"
