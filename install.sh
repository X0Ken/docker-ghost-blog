#!/bin/bash

cp nginx ghost systemd /etc
mkdir -p /var/lib/backup-site
cp backup.sh /var/lib/backup-site/backup.sh

echo '0 5 * * * su - ubuntu -c "/var/lib/backup-site/backup.sh"' >> /var/spool/cron/crontabs/root

sudo systemctl enable docker-container@nginx.service
sudo systemctl enable docker-container@ghost-blog.service
sudo systemctl enable docker-container@gerrit.service
sudo systemctl enable docker-container@pg-gerrit.service

sudo systemctl start docker-container@nginx.service
sudo systemctl start docker-container@ghost-blog.service
sudo systemctl start docker-container@gerrit.service
sudo systemctl start docker-container@pg-gerrit.service
