#!/bin/bash
# Cleanup script for the Bitcoin Calendar Hugo site

echo "Starting cleanup of redundant files..."

# Remove exampleSite directory (common source of issues)
if [ -d "themes/gokarna/exampleSite" ]; then
  echo "Removing example site directory..."
  rm -rf themes/gokarna/exampleSite
  echo "Example site directory removed."
else
  echo "Example site directory not found. Skipping."
fi

# Remove extraneous .git file in theme
if [ -f "themes/gokarna/.git" ]; then
  echo "Removing .git file from theme..."
  rm -f themes/gokarna/.git
  echo ".git file removed from theme."
else
  echo ".git file not found in theme. Skipping."
fi

# Create a backup of shortcodes
echo "Creating backup of shortcodes..."
mkdir -p backup_shortcodes
cp -r layouts/shortcodes/* backup_shortcodes/
echo "Shortcodes backed up to backup_shortcodes directory."

# If your custom shortcodes are overriding theme shortcodes, decide which to keep
echo ""
echo "Theme center shortcode styling:"
cat themes/gokarna/layouts/shortcodes/center.html
echo ""
echo "Your custom center shortcode styling:"
cat layouts/shortcodes/center.html
echo ""
echo "You may want to standardize these for consistent styling."
echo ""

# Clean up empty directories
find . -type d -empty -not -path "*/\.*" -exec rm -rf {} \; 2>/dev/null || true
echo "Removed empty directories."

# Build the site to ensure everything still works
echo "Building site to verify changes..."
hugo --minify
echo "Site built successfully. Check the public directory for the output."

echo "Cleanup completed. Review the changes before committing."
echo "Run 'git status' to see what files have been modified or deleted." 