#!/bin/bash

echo "Optimizing all PNG files in img/ directory"
echo "Please wait..."

find ../img/ -name '*.png' -exec pngquant --ext .png --force {} \;
