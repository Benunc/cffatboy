#!/bin/bash

# Script to remove eepurl links from all HTML files
echo "Removing eepurl links from all HTML files..."

# Use find to locate all HTML files and pipe to xargs to process them
find . -name "*.html" -type f -print0 | xargs -0 -I{} sed -i '' 's/<a class="page-title-button" href="http:\/\/eepurl.com\/nrUSb">posts \&raquo; inbox<\/a>//g' {}

echo "Done! Removed eepurl links from HTML files." 