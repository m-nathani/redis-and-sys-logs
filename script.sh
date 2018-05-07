#!/bin/bash

redis-server /etc/redis/redis.conf &

while sleep 5;
 do date;
 echo "********** Network *********";
 sar -n DEV 1 1;
 echo "********** Memory  *********";
 free -m;
 echo "********** CUP %   *********" ;
 grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print "CPU used: ",usage, "%"}';
 echo "********** Redis Logs  *********" ;
 tail redis-logs

 echo "###################################";
done