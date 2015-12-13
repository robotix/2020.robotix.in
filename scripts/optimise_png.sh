#!/bin/bash

echo "Optimizing all PNG files in img/ directory"
echo "Please wait..."

find ../img/ -name '*.png' -exec pngquant --verbose --ext .png --skip-if-larger --force --quality 40-90 {} \;
