#!/bin/bash
DATE=$(date +%F)
BACKUP_FILE="/backups/nginx_backup_${DATE}.tar.gz"
tar -czf $BACKUP_FILE /etc/nginx/ /usr/share/nginx/html/
echo "Backup completed for Nginx on $(date)" >> /backups/backup_log.txt
tar -tzf $BACKUP_FILE >> /backups/backup_verification.txt

