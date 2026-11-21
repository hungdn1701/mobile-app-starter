#!/usr/bin/env bash
# Smoke test: the mock API (json-server) answers with JSON on the published port.
# Usage: bash scripts/smoke-test.sh   (start the mock API first with `make api-up`)
# Replaced the mock with your own backend? Point SMOKE_URL at one of its endpoints:
#   SMOKE_URL=http://localhost:8080/health bash scripts/smoke-test.sh
set -euo pipefail
cd "$(dirname "$0")/.."
[ -f .env ] && set -a && . ./.env && set +a
URL="${SMOKE_URL:-http://localhost:${API_PORT:-3000}/db}"

for _ in $(seq 1 30); do
  if body=$(curl -fsS "$URL" 2>/dev/null); then
    case "$body" in
      \{*|\[*) echo "OK: $URL answers with JSON"; exit 0 ;;
      *) echo "FAIL: $URL answered, but not with JSON:"; printf '%s\n' "${body:0:300}"; exit 1 ;;
    esac
  fi
  sleep 1
done

echo "FAIL: no answer from $URL after 30s"
docker compose ps || true
docker compose logs --tail=50 api || true
exit 1
