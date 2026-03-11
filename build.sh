#!/bin/bash
set -e

if ! command -v pandoc &> /dev/null; then
  echo "Error: pandoc is not installed. Install with: brew install pandoc"
  exit 1
fi

pandoc index.md \
  --from markdown \
  --to html5 \
  --standalone \
  --template template.html \
  --metadata-file metadata.yml \
  --output index.html

echo "Built index.html"
