# docker-ghost-blog
Run ghost blog in Docker

```
mkdir /etc/nginx/conf.d/ -p
mkdir /etc/nginx/cert/ -p
mkdir /var/lib/ghost -p
sudo docker pull ghost
sudo docker pull nginx

sudo cp docker-container@*.service  /etc/systemd/system -r

sudo systemctl enable docker-container@nginx.service
sudo systemctl enable docker-container@ghost-blog.service

sudo systemctl start docker-container@nginx.service
sudo systemctl start docker-container@ghost-blog.service
```

