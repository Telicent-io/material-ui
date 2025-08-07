#!/usr/bin/env bash
set -euo pipefail


TARGET_DIR="./material-icons"
cd "$TARGET_DIR"

keep=(
  "location_on_24px.svg"
  "list_24px.svg"
  "add_24px.svg"
  "chevron_left_24px.svg"
  "chevron_right_24px.svg"
  "remove_24px.svg"
)

for file in ./*.svg; do
  name=${file##*/}
  skip=false
  for k in "${keep[@]}"; do
    [[ "$name" == "$k" ]] && { skip=true; break; }
  done
  $skip || rm -v "$file"
done