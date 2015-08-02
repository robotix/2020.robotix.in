#!/bin/bash

echo "Optimizing all JPG files in img/ directory"
echo "Please wait..."

find . -name '*.jpg' -exec jpegoptim --all-progressive -t -f -m 40 {} \;
