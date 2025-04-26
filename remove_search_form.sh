#!/bin/bash

# Script to remove search form from all HTML files
echo "Removing search form from all HTML files..."

# Use find to locate all HTML files and pipe to xargs to process them
find . -name "*.html" -type f -print0 | xargs -0 -I{} sed -i '' '/<form method="get" class="searchform search-form"/,/<\/form>/d' {}

echo "Done! Removed search form from HTML files." 