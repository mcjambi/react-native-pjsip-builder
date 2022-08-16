#!/bin/bash
set -e

rm -rf ./dist;
./build_android.sh;
# ./build_ios.sh;

cd ./dist;

tar -czvf ../release.tar.gz ./
#remove all in docker, clear cache and image and container
#docker system prune -a