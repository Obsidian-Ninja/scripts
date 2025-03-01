## Monitoring Free RAM Space

This project is a simple **Bash script** to monitor the available RAM space on a Linux system. It checks the free RAM and alerts the user if the available memory falls below a specified threshold.



### How It Works
1. The script uses the `free` command to fetch memory statistics.
2. The `awk` command extracts specific memory data.
3. The threshold is set at **500 MB** (can be customized).
4. If available RAM is below the threshold, the script displays a **WARNING** message.
5. Otherwise, it displays that RAM is sufficient.
6. The script waits for **5 seconds** before exiting.

### Usage
1. Clone the repository or download the script.

2. Make the script executable:
   ```bash
   chmod +x main.sh
   ```
3. Run the script:
   ```bash
   ./main.sh
   ```

### Sample Output
```
RAM is sufficient
----------------------------------
Total RAM available : 8000 MB
Available RAM : 6000 MB
Used : 2000 MB
----------------------------------
```

### Customization
- Modify the `threshold` variable to set your own warning limit:

   ```bash
   threshold=1000  # Set to 1000 MB
   ```


