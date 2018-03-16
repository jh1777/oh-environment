#!/bin/bash
# Git config
git config --global user.email "jh.stores1@gmail.com"
git config --global user.name "Joerg (Pi)"

GITDIR=/home/pi/git/oh-conf
OHCONFDIR=/home/pi/Desktop/OH2/conf
LOGFILE=/home/pi/Desktop/refresh.oh-conf.log
CUR_DATE=$(date +"%Y/%m/%d-%H.%M.%S")
echo "---------------------" >> $LOGFILE
echo "" >> $LOGFILE
echo $CUR_DATE >> $LOGFILE

cp --recursive --update --verbose $OHCONFDIR/. $GITDIR >> $LOGFILE
#find . -name "._*" -exec rm -f {} \;

cd $GITDIR
# new branch for this
git checkout -b $CUR_DATE
# stage all modified files to include in index
echo "Git add:" >> $LOGFILE
git add --all >> $LOGFILE
# Commit all changed
echo "Git commit:" >> $LOGFILE
git commit -m "pi refresh $CUR_DATE" >> $LOGFILE
# Push changes
## TODO: passphase wird abgefragt!! muss noch im ssh-agent gespeichert werden
echo "Git push:" >> $LOGFILE
git push -u origin $CUR_DATE >> $LOGFILE
# Merge
git checkout master
git merge $CUR_DATE
git push
# delete
git branch -d $CUR_DATE
