#!/bin/bash

rm -rf ./libv8-darwin/ ./libv8-linux/

VERSION=6.3.292.48.1

wget https://rubygems.org/downloads/libv8-${VERSION}-x86_64-linux.gem
wget https://rubygems.org/downloads/libv8-${VERSION}-x86_64-darwin-16.gem

mkdir -p ./libv8-darwin/ ./libv8-linux/

mv libv8-${VERSION}-x86_64-darwin-16.gem ./libv8-darwin
mv libv8-${VERSION}-x86_64-linux.gem ./libv8-linux

cd ./libv8-darwin
tar xf libv8-${VERSION}-x86_64-darwin-16.gem
rm -rf libv8-${VERSION}-x86_64-darwin-16.gem
rm -rf checksums.yaml.gz
rm -rf metadata.gz
tar xzf data.tar.gz
rm -rf data.tar.gz
rm -rf ext
rm -rf lib

mv vendor/v8/include ./include
mv vendor/v8/out/x64.release ./libv8
rm -rf vendor
cd ../

cd ./libv8-linux
tar xf libv8-${VERSION}-x86_64-linux.gem
rm -rf libv8-${VERSION}-x86_64-linux.gem
rm -rf checksums.yaml.gz
rm -rf metadata.gz
tar xzf data.tar.gz
rm -rf data.tar.gz
rm -rf ext
rm -rf lib

mv vendor/v8/include ./include
mv vendor/v8/out/x64.release ./libv8
rm -rf vendor
