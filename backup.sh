#!/bin/bash

SOURCE_DIR="/home"

BACKUP_DIR="/backup/home_backup"  # Lokal

LOG_FILE="/var/log/backup.log"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

BACKUP_NAME="backup_$DATE.tar.gz"

echo "[$(date)] Backup dimulai..." | tee -a "$LOG_FILE"

mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR" 2>> "$LOG_FILE"

if [ $? -eq 0 ]; then
    echo "[$(date)] Backup sukses: $BACKUP_NAME tersimpan di $BACKUP_DIR" | tee -a "$LOG_FILE"
else
    echo "[$(date)] Backup gagal!" | tee -a "$LOG_FILE"
    exit 1
fi


echo "[$(date)] Backup selesai." | tee -a "$LOG_FILE"
exit 0
