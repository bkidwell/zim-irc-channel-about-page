#!/bin/bash
cd "`dirname "$0"`"
cd ..

mkdir -p build
cd build
[ -e index.html ] && rm -rf *
cd ..
zim --export \
  --format=html --template=Print \
  --output=./build --index-page=sitemap \
  src

