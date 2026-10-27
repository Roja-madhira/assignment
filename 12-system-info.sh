
#!/bin/bash

# Validate server name argument
if [ $# -eq 0 ]; then
    echo "Error: Please provide a server name."
    echo "Usage: bash 12-system-info.sh <server-name>"
    exit 1
fi

server_name=$1
start_time=$(date +%s)
start_date=$(date "+%Y-%m-%d %H:%M:%S")
script_pid=$$
log_file="/tmp/system-info.log"

# Log output to terminal and file
exec > >(tee "$log_file") 2>&1

# Main header
echo "=========================================="
echo "System Info Report - $server_name"
echo "=========================================="

# Collect system information
echo "Script PID        : $script_pid"
echo "Started at        : $start_date"
echo "Server Label      : $server_name"
echo "User              : $(whoami)"
echo "Home Directory    : $HOME"
echo "OS                : $(grep '^PRETTY_NAME=' /etc/os-release | cut -d '"' -f 2)"

#echo
#echo "Disk Usage:"
#df -hT /
echo "disk usage : df -h / | awk 'NR==2 {printf "%s used out of %s \n", $3, $2, $5}'

echo
echo "Memory Usage:"
free -h

echo
echo "Uptime:"
uptime

# Calculate execution time
end_time=$(date +%s)
execution_time=$((end_time - start_time))

echo "=========================================="
echo "Script completed in $execution_time seconds"
