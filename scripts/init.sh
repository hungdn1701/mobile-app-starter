#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

if [ ! -f .env ]; then
  cp .env.example .env
  echo "Created .env from .env.example"
else
  echo ".env already exists — skipped"
fi

echo "Next: start the mock API with 'make api-up', then create your app in app/ (GETTING_STARTED.md §4)."
