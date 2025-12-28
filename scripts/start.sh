#!/bin/bash
cd /var/www
pip3 install -r requirements.txt
pkill -f app.py || true   # Stop previous app if running
nohup python3 app.py > app.log 2>&1 &
