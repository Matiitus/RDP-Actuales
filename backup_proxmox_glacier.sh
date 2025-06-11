#!/bin/bash
# === Backup de archivos a AWS Glacier desde Proxmox o Linux ===

SOURCE="/mnt/fileserver"
BACKUP_NAME="fileserver_$(date +%Y-%m-%d).tar.gz"
TMP_DIR="/tmp/backups"
AWS_BUCKET="s3://mi-bucket-backup"
DEST_PATH="glacier/file-server/"
LOG_FILE="/var/log/backup_glacier.log"

mkdir -p "$TMP_DIR"
tar -czf "$TMP_DIR/$BACKUP_NAME" "$SOURCE"
aws s3 cp "$TMP_DIR/$BACKUP_NAME" "$AWS_BUCKET/$DEST_PATH$BACKUP_NAME" --storage-class DEEP_ARCHIVE >> "$LOG_FILE" 2>&1
rm -f "$TMP_DIR/$BACKUP_NAME"
echo "$(date): Backup enviado a Glacier: $BACKUP_NAME" >> "$LOG_FILE"
