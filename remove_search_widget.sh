#!/bin/bash

# Script to remove search widget from all HTML files
echo "Removing search widget from all HTML files..."

# Use find to locate all HTML files and pipe to xargs to process them
find . -name "*.html" -type f -print0 | xargs -0 -I{} sed -i '' '/<div id="search-3" class="widget widget_search">/,/<\/div><\/div>/d' {}

echo "Done! Removed search widget from HTML files." 