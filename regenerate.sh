#!/bin/sh

# This script regenerates the non-UTF-8 versions of the text files from 
# the UTF-8 versions and recreates the tar files. It can be run after
# editing the UTF-8 versions.

iconv -f utf-8 -t iso-8859-1 <german_utf-8.txt   >german_iso-8859-1.txt
iconv -f utf-8 -t ibm-1047   <german_utf-8.txt   >german_ibm-1047.txt
iconv -f utf-8 -t koi8-r     <russian_utf-8.txt   >russian_koi8-r.txt

tar cf  text.tar german*.txt russian*.txt
tar czf text.tgz german*.txt russian*.txt

ls -l *.txt text.*
