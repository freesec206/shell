探测存活主机脚本
#!/bin/bash

#读取你输入的IP范围，格式为1-254
read -p '输入IP的开始地址1-254：' min
read -p '输入IP的结束地址1-254：' max

# Log file for live hosts
log_file="/root/live.txt"

# Clear the log file at the start (optional)
> $log_file

# 探测存活主机的IP addresses 
for i in $(seq $min $ max); do
    # Ping the host
    if ping -c 2 -i 0.1 -w 1 192.168.180.$i > /dev/null 2>&1; then
        # If the host responds, log it
        echo "192.168.180.$i is live" >> $log_file
        echo "192.168.180.$i is live"
    else
        # If the host doesn't respond, log it as unreachable (optional)
        echo "192.168.180.$i is unreachable"
    fi
done

# Optional: Display the live hosts at the end
echo "Live hosts:"
cat $log_file
