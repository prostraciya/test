#!/bin/bash

DATE=$(date +"%d-%m-%y-%T") #date
DATADIR=/backup/$DATE #Путь к каталогу где будут храниться резервные копии
SRCFILES=html #Путь к каталогу файлов для архивирования
LOG=/var/log/backup/backup-log-$DATE
LOGDB=/var/log/backup/backup-logDB-$DATE



#start backup
echo "---------------------------[ $DATE ]----------------------------------" >> $LOG
DATE=$(date +"%d-%m-%y-%T") 
echo "--> start backup $DATE" >> $LOG
#cd $DATADIR
mkdir $DATADIR
cd /var/www
tar zcvf $DATADIR/b-$DATE.tar.gz $SRCFILES >> $LOG 2>> $LOG
cd $DATADIR
mysqldump -uwiki -pwiki wiki  > wiki.sql # >> $LOGDB 2>> $LOGDB
mysqldump -uzabbix -pzabbix zabbix  > zabbix.sql

if [[ $? -gt 0 ]];then
DATE=$(date +"%d-%m-%y-%T")
echo "backup aborted $DATE." >> $LOG
exit 1
fi

DATE=$(date +"%d-%m-%y-%T")
echo "---> end backup $DATE" >> $LOG
echo "Stat datadir space (USED): `du -h $DATADIR | tail -n1`" >> $LOG
echo "Free HDD space: `df -h /home|tail -n1|awk '{print $4}'`" >> $LOG
DATE=$(date +"%d-%m-%y-%T")
echo "---------------------------[ $DATE ]----------------------------------" >> $LOG
# удаляем все бэкапы старше 10 дней
find /backup -type f -mtime +10 -exec rm -rf {} \;
# архивируем бэкапы полученные более 1 дня назад
find /backup -type f -mtime +1 -exec gzip -9 {} \; 2>/dev/null



