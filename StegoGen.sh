!/bin/bash

# StegGen
# Description: EMH script to generate stego files for CTFs
# Author: datadraconis

# Generate flag content
TEXT=$(python3 flagGen.py 3 wordlist.txt)

FLAG="{$TEXT}"

# Generate flag text file
echo "$FLAG" > tmp.tmp

# Generate stego image

cat image.jpeg tmp.tmp > stego.jpeg

# Generate clue file
echo "$FLAG" > stego.clu

# Cleanup
rm tmp.tmp
