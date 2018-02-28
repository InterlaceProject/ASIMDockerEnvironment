#!/bin/bash
if [ -d "ASIMSpec" ]; then
  cd ASIMSpec
  git pull
  cd ..
else
  git clone https://github.com/InterlaceProject/ASIMSpec
fi
docker build -t asim .