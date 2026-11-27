#!/usr/bin/env bash
# Vendor this rule base (and optionally a skill) into a consuming project.
#
# Why vendoring: cloud sessions (Claude Code on the web) clone only the project
# repository. They have no ~/.claude, and they do not reliably fetch git
# submodules, so a submodule or a personal skill is invisible there. A committed
# copy works everywhere — local, CI, and cloud.
#
# Usage:
#   scripts/sync-consumer.sh <project-dir> [--skill <skill-dir>]...
#
# Writes:
#   <project>/design-rules/            INDEX.md, rules/, docs/research/, CHANGELOG.md, VENDORED.md
#   <project>/.claude/skills/<name>/   each --skill directory (without .git)
# Then review and commit the changes in the project yourself.
set -euo pipefail

src="$(cd "$(dirname "$0")/.." && pwd)"
[ $# -ge 1 ] || { sed -n '2,17p' "$0"; exit 2; }
project="$(cd "$1" && pwd)"; shift
skills=()
while [ $# -gt 0 ]; do
  case "$1" in
    --skill) skills+=("$(cd "$2" && pwd)"); shift 2 ;;
    *) echo "unknown argument: $1" >&2; exit 2 ;;
  esac
done

dest="$project/design-rules"
if git -C "$project" config --file .gitmodules --get-regexp '^submodule\.design-rules\.' >/dev/null 2>&1; then
  echo "error: $dest is a git submodule. Remove it first:" >&2
  echo "  git -C '$project' submodule deinit -f design-rules && git -C '$project' rm -f design-rules" >&2
  exit 1
fi

rev="$(git -C "$src" rev-parse --short HEAD)"
dirty=""; [ -n "$(git -C "$src" status --porcelain)" ] && dirty=" (with uncommitted changes)"
version="$(sed -n 's/.*"version": *"\([^"]*\)".*/\1/p' "$src/.claude-plugin/plugin.json")"

mkdir -p "$dest"
rsync -a --delete \
  --include='INDEX.md' --include='CHANGELOG.md' \
  --include='rules/***' --include='docs/' --include='docs/research/***' \
  --exclude='*' "$src/" "$dest/"
cat > "$dest/VENDORED.md" <<MD
# Vendored copy — do not edit here

This directory is a copy of the universal design-rules base, version $version
(commit $rev$dirty), synced $(date +%Y-%m-%d).

Edit the rules in the rule-base repository, then re-run:

    scripts/sync-consumer.sh <this-project>

It is a plain committed copy rather than a submodule so that cloud sessions,
which clone only this repository, see the same rules as local sessions.
MD
echo "rules  → $dest  (v$version, $rev$dirty)"

for s in "${skills[@]:-}"; do
  [ -n "$s" ] || continue
  name="$(basename "$s")"
  sdest="$project/.claude/skills/$name"
  mkdir -p "$sdest"
  rsync -a --delete --exclude='.git' --exclude='.gitignore' --exclude='.DS_Store' "$s/" "$sdest/"
  srev="$(git -C "$s" rev-parse --short HEAD 2>/dev/null || echo unknown)"
  echo "skill  → $sdest  ($srev)"
done
