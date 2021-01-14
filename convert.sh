#!/bin/bash -x
# The viewport is too small, we gotta make it bigger -- edit viewport
rm -f *.svg
rm -f *.png
FILENAME=${1:-"file.dxf"}
/usr/share/inkscape/extensions/dxf_input.py /app/${FILENAME%%.*}.dxf > /app/${FILENAME%%.*}.svg
sed -E -i 's,dtd\" width=\".*?\" height=\".*?\">,dtd\" width="1404" height="1872">,g' /app/${FILENAME%%.*}.svg
convert /app/${FILENAME%%.*}.{svg,png}