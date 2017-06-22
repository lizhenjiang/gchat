#!/bin/bash

pids=$(ps -ef | grep '28080' |grep 'puma'| awk '{print $2}')
echo $pids
for pid in $pids; do
   kill -9 $pid
done

pids=$(ps -ef | grep '3006' |grep 'puma'| awk '{print $2}')
echo $pids
for pid in $pids; do
   kill -9 $pid
done
