#!/bin/sh
#armando mercado (c) 2018
#released under mit license
#requires perl shasum and globstar works on macos, debian, and fedora
#shouldnt be bash specific ive checked for bashisms
FILE="$1"
DIR="$2"
HASHES="$(shasum -a 256 $DIR/**/*)"
echo $HASHES | tr " " "\n" > $FILE
echo 'printing hashes for secure dir'
cat $FILE
