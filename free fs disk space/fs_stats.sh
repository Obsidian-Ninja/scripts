# #Monitoring free fs disk space and sending an email alert

# #Shebang line
# #!/bin/bash

#calculating usage
File_Utilization=$(df -h | grep "root" | awk '{print$5}' | tr -d %)
email="youremail@gmail.com"
threshold=80  #Change as needed

# check and send a mail
if [ $File_Utilization -ge $threshold ]
then
    echo "WARNING ! Disk space is low : $File_Utilization %" | mail -s "Disk Space Alert" $email
else
    echo "All is well"
fi

# #Output the stats
echo "----------------------------------------------"
echo "Total Disk Utilization (%) : $File_Utilization"
echo "----------------------------------------------"

# #end


