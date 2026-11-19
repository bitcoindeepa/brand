#!/usr/bin/env bash
# Build the public brand site into _site/ for GitHub Pages.
#   site/             the pages (brand guidelines and colour system) and their preview images
#   assets/           copied as-is, so every file has a stable public URL
#   downloads/*.zip   all assets, SVG only and PNG only, built fresh from assets/
set -euo pipefail
cd "$(dirname "$0")/.."

rm -rf _site
mkdir -p _site/downloads
cp -R site/. _site/
cp -R assets _site/assets
cp -R design-system _site/design-system

stage=$(mktemp -d)
trap 'rm -rf "$stage"' EXIT
mkdir -p "$stage/all" "$stage/svg" "$stage/png"
cp -R assets "$stage/all/Bitcoin-Deepa-Brand-Assets"
cp LICENSE TRADEMARK.md "$stage/all/Bitcoin-Deepa-Brand-Assets/"
for kind in svg png; do
  (cd assets && find . -type f -name "*.$kind" | while read -r f; do
    mkdir -p "$stage/$kind/Bitcoin-Deepa-Brand-Assets/$(dirname "$f")"
    cp "$f" "$stage/$kind/Bitcoin-Deepa-Brand-Assets/$f"
  done)
  cp LICENSE TRADEMARK.md "$stage/$kind/Bitcoin-Deepa-Brand-Assets/"
done
(cd "$stage/all" && zip -qr -X "$OLDPWD/_site/downloads/bitcoin-deepa-brand-assets.zip" .)
(cd "$stage/svg" && zip -qr -X "$OLDPWD/_site/downloads/bitcoin-deepa-brand-assets-svg.zip" .)
(cd "$stage/png" && zip -qr -X "$OLDPWD/_site/downloads/bitcoin-deepa-brand-assets-png.zip" .)

touch _site/.nojekyll
ls -lh _site/downloads
