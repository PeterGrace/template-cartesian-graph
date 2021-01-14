#!/bin/bash -x
rm -f *.svg
rm -f *.png
FILENAME=${1:-"file.svg"}
convert /app/${FILENAME%%.*}.{svg,png}
