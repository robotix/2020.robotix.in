#!/bin/bash

echo "Optimizing scripts.js to scripts.min.js"
java -jar yuicompressor-2.4.8.jar ../js/scripts.js -o ../js/scripts.min.js

echo "Optimizing default.js to default.min.js"
java -jar yuicompressor-2.4.8.jar ../js/default.js -o ../js/default.min.js
