#!/bin/sh
FILES=$(ls -Al | grep -v -e \^d | grep -e \^- | awk '{print $9}')
git ls-tree --name-only master > __dirs
for f in $FILES
do
		cat __dirs > __temp
		grep -v -e $f __temp > __dirs
done
cat __dirs
rm __dirs __temp
