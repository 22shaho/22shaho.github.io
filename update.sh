#!/bin/bash

cd /Users/jacob/Documents/GitHub/22shaho.github.io

#clean up
find . -name '*.DS_Store' -type f -delete

#debs
#big sur
dpkg-deb -b ~/Documents/GitHub/22shaho.github.io/projects/com.shaho.bigsur
mv ~/Documents/GitHub/22shaho.github.io/projects/com.shaho.bigsur.deb ~/Documents/Github/22shaho.github.io/debs

#packages
dpkg-scanpackages -m ./debs . > Packages
bzip2 Packages
