# docker-ghost-blog
Run ghost blog in Docker

```
cd nginx
sudo docker volume create --name ghost-volume
sudo docker pull ghost
sudo docker pull nginx
sudo docker build . -t ghost-nginx

sudo cat docker-container@.service > /etc/systemd/system/docker-container@.service
sudo cat docker-container@ghost-nginx.service.d/override.conf > /etc/systemd/system/docker-container@ghost-nginx.service.d/override.conf
sudo cat docker-container@ghost-blog.service.d/override.conf > /etc/systemd/system/docker-container@ghost-blog.service.d/override.conf

sudo systemctl enable docker-container@ghost-nginx.service
sudo systemctl enable docker-container@ghost-blog.service

sudo systemctl start docker-container@ghost-nginx.service
sudo systemctl start docker-container@ghost-blog.service
```

