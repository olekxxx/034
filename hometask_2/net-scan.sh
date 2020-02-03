#!bin/bash

if [ -z "$1" ]
  then
    echo "The IP range in the form x.x.x.{x..x} is not supplied"
    exit 1
fi
	

for i in $@; do echo -n | nc -v -G 1 $i 80 &> /dev/null && echo " $i:80 Online"; echo -n | nc -v -G 1 $i 443  &> /dev/null && echo " $i:443 Online"; done


#for i in (1..20); do echo -n | nc -v -G 1 192.168.0.$i 80; done
