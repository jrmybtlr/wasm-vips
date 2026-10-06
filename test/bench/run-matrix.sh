#!/usr/bin/env bash
set -euo pipefail

for concurrency in 1 2 4 6 8 12; do
  echo
  echo "===== VIPS_CONCURRENCY=$concurrency ====="
  VIPS_CONCURRENCY="$concurrency" npm test
done
