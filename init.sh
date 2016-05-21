#!/bin/bash
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/hello.py /etc/gunicorn.d/test
sudo ln -s /home/box/web/etc/ask.py /etc/gunicorn.d/ask
sudo rm -rf /etc/gunicorn.d/wsgi.example
sudo rm -rf /etc/gunicorn.d/django.example
sudo /etc/init.d/gunicorn restart
sudo /etc/init.d/mysql restart
sudo mysql -u root -e "CREATE DATABASE IF NOT EXISTS qa; CREATE USER 'qa'@'%' IDENTIFIED BY '123456'; GRANT ALL PRIVILEGES ON qa.* TO 'qa'@'%';"
git config --global user.email "buktop20@gmail.com"
git config --global user.name "ViktorNech"
