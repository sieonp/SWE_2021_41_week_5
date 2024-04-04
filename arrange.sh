#!/bin/bash

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

target_dir="$script_dir/files"

for file in "$target_dir"/*; do
    first_letter=$(basename "$file" | cut -c 1 | tr '[:upper:]' '[:lower:]')
    mv "$file" "$script_dir/$first_letter/"
done
