#!/bin/sh
# Wraps game.html into a standalone, installable web app in docs/ (served by GitHub Pages or any static host).
set -e
cd "$(dirname "$0")"
mkdir -p docs
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  printf '<meta name="theme-color" content="#D9466F">\n'
  printf '<link rel="manifest" href="manifest.webmanifest">\n<link rel="icon" href="icon.svg">\n'
  printf '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}</style>\n'
  printf '</head>\n<body>\n'
  cat game.html
  printf '\n</body>\n</html>\n'
} > docs/index.html
cp manifest.webmanifest sw.js icon.svg docs/
echo "Built docs/index.html"
