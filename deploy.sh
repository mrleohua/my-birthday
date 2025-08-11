#!/usr/bin/env bash
set -euo pipefail
repo="${1:-mimis-birthday-noaddress}"
if ! command -v gh >/dev/null 2>&1; then
  echo "Please install GitHub CLI (gh) first: https://cli.github.com/" >&2
  exit 1
fi

git init
git add .
git commit -m "Initial commit: Mimi's birthday chatbot (no address)"
gh repo create "$repo" --public --source=. --remote=origin --push
echo "Opened repo: https://github.com/$(gh api user -q .login)/$repo"
echo "Enable GitHub Pages in Settings → Pages: set Source=Deploy from a branch, Branch=main, Folder=/ (root)."
