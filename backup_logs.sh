#!/bin/bash

# === Configuration ===
BACKUP_DIR="$HOME/log_backups"
LOG_DIR="/var/log"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
ARCHIVE_NAME="log_backup_$DATE.tar.gz"

# === Create Backup Directory ===
mkdir -p "$BACKUP_DIR"

# === Create Timestamped Archive ===
tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" "$LOG_DIR"

# === Push to GitHub ===
cd "$BACKUP_DIR"
git add "$ARCHIVE_NAME"
git commit -m "Backup created on $DATE"
git push origin main

