#!/usr/bin/env bash
set -Eeuo pipefail
shopt -s nullglob

# Explicitly operate in same directory as this script.
cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

./versions.sh "$@"
./apply-templates.sh "$@"
