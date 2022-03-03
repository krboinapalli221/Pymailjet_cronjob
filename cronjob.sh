#!/bin/bash

# Setup a cron schedule
echo "* * * * * python3 /pymail.py >> /var/log/cron.log 2>&1
# This extra line makes it a valid cron" > scheduler.txt

crontab scheduler.txt
cron -f