#!/bin/bash
for f in *.csv
do
  [ $(csvstat -S -c 3 --sum $f) = 30 ] && echo "\033[32m$f ✔\033[m" || echo "\033[31m$f ✘\033[m";
done
