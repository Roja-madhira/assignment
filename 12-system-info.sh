
#!/bin/bash

# Validate server name argument
if [ $# -eq 0 ]; then
    echo "Error: Please provide a server name."
    echo "Usage: bash 12-system-info.sh <server-name>"
    exit 1
fi

server_name=$1
#start_time=$(date +%s)
start_date=$(date "+%Y-%m-%d %H:%M:%S")
log_file="/tmp/system-info.log"

# Log output to terminal and file
exec > >(tee "$log_file") 2>&1

# Define section function
section() {
    echo "=========================================="
    echo "System Info Report - $server_name"
    echo "=========================================="
}

# Collect system information
os=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d '"' -f 2)

disk_usage=$(df -h / | awk 'NR==2 {printf "%s used of %s", $3, $2}')

memory_usage=$(free -h | awk '/^Mem:/ {printf "%s used of %s", $3, $2}')

uptime=$(uptime -p)

# Print system information
section

echo "Script PID        : $$"
echo "Started at        : $start_date"
echo "User              : $(whoami)"
echo "Home Directory    : $HOME"
echo "OS                : $os"
echo "Disk (/)          : $disk_usage"
echo "Memory            : $memory_usage"
echo "Uptime            : $uptime"

# Calculate execution time
#end_time=$(date +%s)
#execution_time=$((end_time - start_time))

echo "=========================================="
echo "Script completed in $SECONDS"
