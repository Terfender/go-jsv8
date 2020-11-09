#!/bin/bash

rm -rf ./libv8-darwin/ ./libv8-linux/

VERSION=8.4.255.0

wget https://gems.ruby-china.com/downloads/libv8-${VERSION}-x86_64-linux.gem
wget https://gems.ruby-china.com/downloads/libv8-${VERSION}-x86_64-darwin-16.gem

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
mv vendor/v8/out.gn/libv8/obj ./libv8
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
mv vendor/v8/out.gn/libv8/obj ./libv8
rm -rf vendor
