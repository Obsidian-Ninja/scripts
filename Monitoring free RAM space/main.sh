#Monitoring free RAM space

#Shebang line
#!/bin/bash

#calculate the available RAM
total_space=$(free -mt | grep "Total" | awk '{print $2}')
free_space=$(free -mt | grep "Total" | awk '{print $4}')
used=$(free -mt | grep "Total" |awk '{print $3}')
threshold=500

#check
if [ $free_space -lt $threshold ]
then
    echo "WARNING ! RAM is running low"
else
    echo "RAM is sufficient"
fi

#Output the stats
echo "----------------------------------"
echo "Total RAM available : $total_space MB"
echo "Available RAM : $free_space MB"
echo "Used : $used MB"
echo "----------------------------------"

sleep 5
#end

