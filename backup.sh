#!/bin/bash

FILENAME="mongo-backup-$(date +%Y-%m-%d-%H-%M).zip"

mongodump --config=mongoBackupConfig.yml
cd ~/dump
zip -r $FILENAME ritsu
mv $FILENAME ~/MongoBackups
cd ~/MongoBackups
gupload $FILENAME -c Backups
echo OK
