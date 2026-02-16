#!/bin/bash
# Script to backup logs to AWS S3

SOURCE_DIR="/var/log/myapp"
BACKUP_NAME="backup_$(date +%Y%m%d).tar.gz"
S3_BUCKET="s3://radhika-devops-backups"

echo "Starting backup of $SOURCE_DIR..."
tar -czf $BACKUP_NAME $SOURCE_DIR

echo "Uploading $BACKUP_NAME to $S3_BUCKET..."
# aws s3 cp $BACKUP_NAME $S3_BUCKET

echo "Backup completed successfully!"
