#!/bin/bash

# Maintenance task to insert name and ID number as top of all .ts files in directory
find ./ -name "*.ts" -print | while read f; do
    sed -i "" "1s/.*/\/\/Anjali Kathait 1592277/" $f
done
echo "Maintenance task done"