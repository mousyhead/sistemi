#!/bin/bash

if [ ! -d $HOME/Backup ]
then
  mkdir $HOME/Backup
fi

pwd=$PWD
cd $HOME/Documenti

tar -czf $HOME/Backup/my-backup-`date +%Y%m%d-%H%M%S`.tgz *

cd $pwd
