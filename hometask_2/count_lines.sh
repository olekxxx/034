#!bin/bash

#curl -O http://yoko.ukrtux.com:8899/versions.txt

#sort versions.txt | uniq -c | sort -nr | head -n 1

#rm versions.txt

curl http://yoko.ukrtux.com:8899/versions.txt | sort | uniq -c | sort -nr | head -n 1
