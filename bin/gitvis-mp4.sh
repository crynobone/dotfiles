#!/bin/zsh

ffmpeg -y -r 60 -f image2pipe -vcodec ppm -i gource.ppm -vcodec libx264 -preset ultrafast -crf 1 -threads 0 -bf 0 gource.mp4
