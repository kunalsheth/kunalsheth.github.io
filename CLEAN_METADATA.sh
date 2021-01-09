#!/bin/bash

cd assets || exit 1

mogrify -auto-orient -strip **/*.png
mogrify -auto-orient -strip **/*.jpg

list=$(find ./ -name "**/*.mp4")
tmp=/tmp/clean_metadata.mp4

for video in **/*.mp4
do
  ffmpeg -i "$video" -map_metadata -1 -c:v copy -c:a copy "$tmp"
  mv "$tmp" "$video"
done