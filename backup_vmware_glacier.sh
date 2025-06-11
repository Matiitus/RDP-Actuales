#!/bin/bash
# === Backup de carpeta montada desde VM VMware a AWS Glacier ===

SOURCE="/mnt/vm_datos_empresa"
BACKUP_NAME="vmdata_$(date +%Y-%m-%d).tar.gz"
TMP_DIR="/tmp/backups"
AWS_BUCKET="s3://empresa-backups"
DEST_PATH="glacier/vm-data/"
LOG_FILE="/var/log/backup_vm_glacier.log"

mkdir -p "$TMP_DIR"
tar -czf "$TMP_DIR/$BACKUP_NAME" "$SOURCE"
aws s3 cp "$TMP_DIR/$BACKUP_NAME" "$AWS_BUCKET/$DEST_PATH$BACKUP_NAME" --storage-class DEEP_ARCHIVE >> "$LOG_FILE" 2>&1
rm -f "$TMP_DIR/$BACKUP_NAME"
