## Archiving Logs

This project is a **Bash script** to automatically archive log files larger than a specified size threshold from a given directory.

### How It Works
1. The script checks if the specified directory exists.
2. It creates an **archive** folder if not already present.
3. It searches for files larger than **20MB** within the directory.
4. Files are compressed using **gzip** and moved to the archive folder.
5. The script exits with an error message if any step fails.

### Usage
1. Clone the repository or download the script.

2. Make the script executable:
   ```bash
   chmod +x archive.sh
   ```
3. Modify the following variables as needed:
   - `base_dir`: Set the directory to monitor.
   - `depth`: Maximum search depth in directory tree.
   - `threshold`: File size threshold (currently set to **20MB**).
4. Run the script:
   ```bash
   ./archive.sh
   ```

### Sample Output
```
archiving /home/desktop/file/log1.txt ==> /home/desktop/file/archive
archiving /home/desktop/file/log2.txt ==> /home/desktop/file/archive
```

