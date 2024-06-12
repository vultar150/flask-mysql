#!/bin/bash
sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf 
service mysql start
mysql < /home/vultar/user.sql
/bin/bash -l -c sh
