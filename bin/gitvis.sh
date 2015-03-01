#!/bin/zsh
DIMENSION=${1:-1280x720}

gource --auto-skip-seconds 1 --seconds-per-day 1 --bloom-multiplier 1.2 --bloom-intensity 1.2 --background 2F3030 -e 0.1 --max-files 0 --max-file-lag 1 --multi-sampling -$DIMENSION -o gource.ppm --user-image-dir .git/avatar/
