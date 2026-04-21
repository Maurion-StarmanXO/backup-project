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
