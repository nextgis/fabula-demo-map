#!/bin/sh

sed -i '1!b;s/street/_street/' result.csv
sed -i 's#-\+;\?##g' result.csv
ogr2ogr -f GeoJSON result.geojson result.vrt
