sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/hello.py /etc/gunicorn.d/test
sudo ln -s /home/box/web/etc/ask.py /etc/gunicorn.d/ask
sudo rm -rf /etc/gunicorn.d/wsgi.example
sudo rm -rf /etc/gunicorn.d/django.example
sudo /etc/init.d/gunicorn restart
