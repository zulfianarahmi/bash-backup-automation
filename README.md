# Automated Backup Script

This is a simple Bash script to automate the backup of the `/home` directory to a specified location using `tar`.

## Features

- Automatically backs up the `/home` directory.
- Saves backups to a specified folder.
- Logs backup success or failure.
- Can be scheduled with `cron` for daily backups.

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/backup-script.git
   cd backup-script
   ```
2. Make the script executable:
   ```bash
   chmod +x backup.sh
   ```

## Usage

Run the script manually:

```bash
./backup.sh
```

Or run with sudo if needed:

```bash
sudo ./backup.sh
```

## Automate with Cron

1. Open crontab:
   ```bash
   crontab -e
   ```
2. Add this line to schedule the script to run every day at 2 AM:
   ```bash
   0 2 * * * /path/to/backup.sh
   ```

## Logs

The script logs success or failure messages in a log file located at `/var/log/backup.log`. You can check logs using:

```bash
cat /var/log/backup.log
```

## Restore Backup

To restore a backup, navigate to the backup directory and extract the archive:

```bash
cd /backup/home_backup
sudo tar -xzf backup_YYYY-MM-DD_HH-MM-SS.tar.gz -C /
```

Replace `YYYY-MM-DD_HH-MM-SS` with the correct timestamp from the backup file.

## Notes

- Ensure you have permission to write to the backup directory.
- If using `cron`, make sure the script path is correct.

## License

This project is licensed under the MIT License.
