#!/bin/zsh

gource --auto-skip-seconds 1 --seconds-per-day 1 --bloom-multiplier 1.2 --bloom-intensity 1.2 --background 2F3030 -e 0.1 --max-files 0 --max-file-lag 1 --multi-sampling -1280x720 -o gource.ppm --user-image-dir .git/avatar/
