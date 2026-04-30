#!/usr/bin/env bash
set -euo pipefail

# One-command publish helper for GitHub Pages updates.
# Usage:
#   ./publish.sh "your commit message"
#   ./publish.sh              # uses default message

DEFAULT_MESSAGE="Update portfolio site"
COMMIT_MESSAGE="${1:-$DEFAULT_MESSAGE}"

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "Error: not inside a git repository."
  exit 1
fi

echo "==> Pulling latest changes (auto-stash enabled)"
git pull --rebase --autostash

echo "==> Staging files"
git add .

if git diff --cached --quiet; then
  echo "No changes to publish."
  exit 0
fi

echo "==> Committing"
git commit -m "$COMMIT_MESSAGE"

echo "==> Pushing to GitHub"
git push

echo ""
echo "Published successfully."
echo "Live URL: https://abrarsavan123.github.io/abrar-portfolio/"
