#!/bin/bash

echo "Optimizing all JPG files in img/ directory"
echo "Please wait..."

find ../img/ -name '*.jpg' -exec jpegoptim --all-progressive --strip-all -t --max=40 --threshold=5 {} \;
