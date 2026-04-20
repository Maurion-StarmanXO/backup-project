#!/bin/bash
set -e
PATH=/usr/bin:/bin

source_dir="$HOME/sandbox_sortme"
backup_dir="$HOME/backups"
log_file="$backup_dir/backup.log"

timestamp=$(date +%F_%H-%M-%S)
backup_file="backup_$timestamp.tar.gz"

echo "$(date) Starting backup: $source_dir -> $backup_dir/$backup_file" >> "$log_file"

mkdir -p "$backup_dir"
tar -czf "$backup_dir/$backup_file" "$source_dir"

ls -1t "$backup_dir"/*.tar.gz | tail -n +8 | while read -r file; do
    rm -f -- "$file"
done

echo "$(date) Backup complete: $backup_file" >> "$log_file"
