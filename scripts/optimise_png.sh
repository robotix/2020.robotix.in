#!/bin/bash

echo "Optimizing all PNG files in img/ directory"
echo "Please wait..."

find ../img/ -name '*.png' -exec pngquant --verbose --ext .png --quality 40-90 {} \;
