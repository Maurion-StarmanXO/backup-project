# Automated Backup Project

A Linux Bash automation project that creates scheduled backups of a target directory, stores them as compressed `.tar.gz` archives, logs activity, and automatically removes old backups to save space.

## Features

- Creates timestamped backups automatically
- Compresses backups using `tar -czf`
- Stores backups in a dedicated backups folder
- Keeps only the newest 7 backups
- Deletes older backups automatically
- Logs backup activity to `backup.log`
- Runs automatically with `cron`
- Version controlled with Git + GitHub

## Technologies Used

- Linux
- Bash Scripting
- Cron Jobs
- Git
- GitHub

## Project Structure

```text
backup-project/
├── backup.sh
├── README.md
```
## How to use 
Inside your terminal use these:

- chmod +x backup.sh
- ./backup.sh
- crontab -l
- cat ~/backups/backup.log
- ls -lt ~/backups/*.tar.gz

------------------------------------------------------------------------------------

## Future Improvements

### Email Alerts on Failed Backups
Use `mail`, `sendmail`, or an SMTP API to notify the user when a backup fails or disk space runs low.

### Encrypted Backups
Protect sensitive data by encrypting archives with tools like `gpg` or `openssl` before storing them.

### Restore Script
Create a companion `restore.sh` script that allows users to quickly extract and recover backups when needed.

### Cloud Backup Integration
Automatically upload completed backups to services such as AWS S3, Google Drive, Dropbox, or rsync remote servers.

### GUI Dashboard
Build a simple interface using Python Tkinter, Flask, or Electron to monitor backup status, logs, storage usage, and run manual backups.

### Config File Support
Move hardcoded paths and retention settings into a `config.conf` file for easier customization.

### Compression Options
Allow users to choose between `.tar.gz`, `.zip`, or higher compression methods like `xz`.

### Incremental Backups
Only back up changed files instead of the full directory each time, saving space and time.

### Backup Verification
Automatically test archive integrity after creation to ensure backups are usable.

### Multi-Directory Support
Back up multiple folders in one run such as Documents, Pictures, and Projects.

### Webhook / Discord Alerts
Send success or failure notifications to Discord, Slack, or other webhook services.

### Systemd Timer Support
Replace cron with modern Linux `systemd timers` for better logging and control.
