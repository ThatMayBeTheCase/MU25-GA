#!/usr/bin/env bash

set -euo pipefail

echo "Projektinformation"
echo "------------------"

repository="${GITHUB_REPOSITORY:-$(basename "$PWD")}"
branch="${GITHUB_REF_NAME:-$(git branch --show-current)}"
event="${GITHUB_EVENT_NAME:-Lokal Körning}"
tracked_files="$(git ls-files | wc -l)"
readme_lines="$(wc -l < README.md)"

echo "Repository: $repository"
echo "Branch: $branch"
echo "Händelse: $event"
echo "Antal spårade filer: $tracked_files"
echo "Rader i README.md: $readme_lines"

