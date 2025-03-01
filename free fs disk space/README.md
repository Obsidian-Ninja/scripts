## Monitoring Free Disk Space and Sending Email Alerts

This project is a **Bash script** to monitor the available disk space on a Linux system and send email alerts when the disk space utilization exceeds a specified threshold.

### Usage
1. Clone the repository or download the script.

2. Install the `mail` utility if not already installed:
   ```bash
   sudo apt-get install mailutils
   ```
3. Make the script executable:
   ```bash
   chmod +x fs_stats.sh
   ```
4. Run the script:
   ```bash
   ./fs_stats.sh
   ```

### Sample Output
```
All is well
----------------------------------------------
Total Disk Utilization (%) : 70
----------------------------------------------
```

If disk space exceeds the threshold, an email will be sent:
```
WARNING ! Disk space is low : 85%
```

### Customization
- Modify the `threshold` variable to set your own disk space limit:

   ```bash
   threshold=90   # Set to 90%
   ```
- Change the `email` variable to your own email address.


