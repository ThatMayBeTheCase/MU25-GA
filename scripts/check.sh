#!/usr/bin/env bash

set -euo pipefail

echo "Startar Projektkontroller ..."

required_files=("README.md" "text.txt")

for file in "${required_files[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "Fel: $file saknas."
    exit 1
  fi

  echo "OK: $file finns."
done

if [[ ! -s "README.md" ]]; then
  echo "Fel: README.md är tom."
  exit 1
fi

echo "OK: README.md innehåller text."

for script in scripts/*.sh; do
  bash -n "$script"
  echo "OK: $script har giltig Bash syntax."
done

echo "Alla kontroller godkändes!"

