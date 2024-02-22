#!/bin/bash
source /etc/profile

TIME_DIR="30000101T000000.000Z_30000102T000000.000Z"

hadoop fs -test -e /druid/segments
if [ $? -ne 0 ] ;then
hadoop fs -mkdir -p /druid/segments
fi

for dir in `ls ./segments`
do
  hadoop fs -test -e /druid/segments/$dir/$TIME_DIR
  if [ $? -eq 0 ] ;then
     for file in `ls ./segments/$dir/$TIME_DIR`
       do
         hadoop fs -test -e /druid/segments/$dir/$TIME_DIR/$file
       if [ $? -ne 0 ] ;then
         hadoop fs -put ./segments/$dir/$TIME_DIR/$file /druid/segments/$dir/$TIME_DIR/
       fi
     done
  else
    hadoop fs -put ./segments/$dir /druid/segments/
  fi

done


