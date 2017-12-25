#!/bin/bash

FMT="%y-%m-%d"
cp /var/lib/ghost/data/ghost.db /var/lib/backup-site/ghost-$(date +$FMT).db
bypy upload /var/lib/backup-site/ghost-$(date +$FMT).db blog/ghost-$(date +$FMT).db


tar -C /var/lib/gerrit/data -czf /var/lib/backup-site/git-$(date +$FMT).tar.gz git
bypy upload /var/lib/backup-site/git-$(date +$FMT).tar.gz git/git-$(date +$FMT).tar.gz

rm -f *.tar.gz
rm -f *.db


