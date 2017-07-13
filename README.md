# docker-ghost-blog
Run ghost blog in Docker

```
mkdir /etc/nginx/conf.d/ -p
mkdir /etc/nginx/cert/ -p
mkdir /var/lib/ghost -p


sudo docker pull ghost
sudo docker pull nginx

sudo cp docker-container@*.service  /etc/systemd/system -r
sudo cp nginx/conf.d/ghost.conf /etc/nginx/conf.d/ghost.conf
sudp cp cert/* /etc/nginx/cert/

sudo systemctl enable docker-container@nginx.service
sudo systemctl enable docker-container@ghost-blog.service

sudo systemctl start docker-container@nginx.service
sudo systemctl start docker-container@ghost-blog.service
```

