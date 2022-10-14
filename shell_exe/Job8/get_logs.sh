#!/bin/bash

var1=$(date +%d-%m-%Y-%H-%M)

grep -c 'session opened' /var/log/auth.log > number_connection_$var1
tar -zcvf number_connection_$var1.tar.gz number_connection_$var1
mv number_connection_$var1.tar.gz /home/caca/shell_exe/Job8/Backup
