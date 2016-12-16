#!/bin/bash
# Basic imagemagick script to convert a black and white or grayscale image to PNG whilst making all 70+% white pixels have an alpha of 0.

for img in *.jpg; do
	filename=${img%.*}
convert -transparent white "$filename.jpg" "$filename.png"
done

# NOTE: Fine tune the script to accept white-sensitivity

