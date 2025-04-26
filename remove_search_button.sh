#!/bin/bash

# Script to remove search button from mobile menu in all HTML files
echo "Removing search button from mobile menu in all HTML files..."

# Use find to locate all HTML files and pipe to xargs to process them
find . -name "*.html" -type f -print0 | xargs -0 -I{} sed -i '' 's/<button content_id="gmm-content-2" class="gmm-menu-item gmm-menu-item-menu-item-fourths menu-item-fourths"><div class="wrap">Search<\/div> <\!-- end .wrap --><\/button>//g' {}

echo "Done! Removed search button from mobile menu in HTML files." 