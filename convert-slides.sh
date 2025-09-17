#!/bin/bash

# Install Marp CLI if not already installed
if ! command -v marp &> /dev/null; then
    echo "Installing Marp CLI..."
    npm install -g @marp-team/marp-cli
fi

# Convert to PDF
echo "Converting to PDF..."
marp marp-config.md --pdf --output slides.pdf

# Convert to HTML
echo "Converting to HTML..."
marp marp-config.md --html --output slides.html

# Convert to PowerPoint
echo "Converting to PowerPoint..."
marp marp-config.md --pptx --output slides.pptx

echo "Done! Generated:"
echo "- slides.pdf"
echo "- slides.html" 
echo "- slides.pptx"