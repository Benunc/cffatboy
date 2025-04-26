#!/bin/bash

# Script to replace "hosted by WP Engine" with "hosted by WP Steward" in all HTML files
# The WP Engine link "http://bit.ly/R84bCA" will be replaced with "https://www.wpsteward.com"

echo "Replacing 'WP Engine' with 'WP Steward' in all HTML files..."

# Use find to locate all HTML files and apply the sed command to each
find . -name "*.html" -type f -exec sed -i '' 's|<a href="http://bit.ly/R84bCA" target="_blank">WP Engine</a>|<a href="https://www.wpsteward.com" target="_blank">WP Steward</a>|g' {} \;

echo "Replacement complete!" 