#!/bin/bash
make clean
make zip
cd dist
zip_path=$(ls | grep fullcalendar.*zip)
unzip $zip_path
cd $(find -maxdepth 1 -type d -name "fullcalendar*")/fullcalendar
compiled_file="fullcalendar.js"
echo "copying $compiled_file to $1/source/static/js/libs"
cp $compiled_file $1/source/static/js/libs/

