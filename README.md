This repository contains files with a variety of encodings to test the ability of git to move data around without altering it. The encodings used are:

* UTF-8 (the only multi-byte encoding in this test)
* ISO-8859-1 (also known as "Latin-1", and on z/OS, IBM-819)
* IBM-1047 (also known as "EBCDIC")
* KOI8-R (also known as IBM-878 on z/OS)
* binary

This repository was created using a Linux on Z system with `LANG=en_US.UTF-8` set in the shell.

There are two text files, each encoded in multiple encodings; the chosen encodings are symmetric, in that iconv can be used to convert from one to the other and back without changing the content. The file names indicate the encoding used for the file.

In this revision of the master branch, the text files have been slightly altered from their original versions.

The sample of German text is encoded three ways. Note that UTF-8 encoding is larger than the other two.

    -rw-r--r--  1 jcallen abp 1039 Aug  5 10:03 german_ibm-1047.txt
    -rw-r--r--  1 jcallen abp 1039 Aug  5 10:01 german_iso-8859-1.txt
    -rw-r--r--  1 jcallen abp 1056 Aug  5 09:59 german_utf-8.txt

The sample of Russian text is encoded only two ways, since the characters used have no equivalent in either ISO-8859-1 or IBM-1047. Again, the UTF-8 encoding is the larger of the two.

    -rw-r--r--  1 jcallen abp  279 Aug  5 09:39 russian_koi8-r.txt
    -rw-r--r--  1 jcallen abp  502 Aug  5 09:08 russian_utf-8.txt

In addition to these text files, there are two binary files: a tar file containing the 5 text files, and a gzip'ed tar file containing the 5 text files.

The UTF-8 versions of the text files are used as the source to generate the other versions. The script `regenerate.sh` uses `iconv` to produce the non-UTF-8 versions of the files, and generates the tar files.
