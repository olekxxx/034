#!bin/bash

curl http://yoko.ukrtux.com:8899/versions.txt | sort | uniq -u
