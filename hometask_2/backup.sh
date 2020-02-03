#!bin/bash

source_dir=$1
backup_dir=$2

if [ -z "$1" ]
  then
    echo "The SOURCE directory is not supplied"
    exit 1
fi

if [ -z "$2" ]
  then
    echo "The TARGET directory is not supplied"
    exit 1
fi

mkdir $backup_dir/$(date +%Y%m%d)


echo "The execution of the script takes a while as relative paths are used in order to preserve a tree-structure of backuped directories"

find $source_dir ! -path $backup_dir -mtime 0 -mindepth 1 -exec rsync -r --relative {} $backup_dir/$(date +%Y%m%d) \; 


