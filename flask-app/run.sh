#!/bin/bash
mysql -h 172.18.0.2 -P 3306 -uvultar -ppassword < /home/vultar/flask-crud-app/database/user.sql
python3 /home/vultar/flask-crud-app/main.py
