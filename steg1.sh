#!/bin/bash

# StegGen1
# Description: EMH script to generate stego files for CTFs using Steghide
# Author: datadraconis

# Generate flag content
TEXT=$(python3 flagGen.py 3 wordlist.txt)

FLAG="{$TEXT}"

# Generate flag text file
echo "$FLAG" > tmp.txt

# Generate stego image using steghide

steghide embed -cf image.jpeg -ef tmp.txt -sf stego1.jpeg

# Generate clue file
echo "$FLAG" > stego.clu

# Cleanup
rm tmp.txt

