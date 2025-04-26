#!/bin/bash

# Script to remove mobile search form from all HTML files
echo "Removing mobile search form from all HTML files..."

# Use find to locate all HTML files and pipe to xargs to process them
find . -name "*.html" -type f -print0 | xargs -0 -I{} sed -i '' '/<div id="gmm-content-2" class="gmm-menu-item-content gmm-menu-item-content-menu-item-fourths"><form method="get" class="searchform search-form"/,/<\/form><\/div>/d' {}

# Replace with empty div
find . -name "*.html" -type f -print0 | xargs -0 -I{} sed -i '' 's/<div id="gmm-content-2" class="gmm-menu-item-content gmm-menu-item-content-menu-item-fourths">.*<\/div>/<div id="gmm-content-2" class="gmm-menu-item-content gmm-menu-item-content-menu-item-fourths"><\/div>/g' {}

echo "Done! Removed mobile search form from HTML files." 