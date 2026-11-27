#!/usr/bin/env bash
# Package a skill directory as a zip for upload to claude.ai (Settings → Capabilities → Skills).
# Skills enabled on claude.ai load automatically into cloud sessions of every project.
#
# Usage: scripts/build-skill-zip.sh <skill-dir> [out-dir]
set -euo pipefail
[ $# -ge 1 ] || { sed -n '2,5p' "$0"; exit 2; }
skill="$(cd "$1" && pwd)"; name="$(basename "$skill")"
out="$(mkdir -p "${2:-.}" && cd "${2:-.}" && pwd)"
rev="$(git -C "$skill" rev-parse --short HEAD 2>/dev/null || echo local)"
zip="$out/$name-$rev.zip"
tmp="$(mktemp -d)"; trap 'rm -rf "$tmp"' EXIT
rsync -a --exclude='.git' --exclude='.gitignore' --exclude='.DS_Store' "$skill/" "$tmp/$name/"
(cd "$tmp" && zip -qr "$zip" "$name")
echo "$zip"
