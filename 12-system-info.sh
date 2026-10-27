
#!/bin/bash

# 1. Validate the server name argument
if [ $# -eq 0 ]; then
    echo "Error: Please provide a server name."
    echo "Usage: bash 12-system-info.sh <server-name>"
    exit 1
fi

server_name=$1
start_time=$(date +%s)
start_date=$(date)
script_pid=$$

# 2. Log everything to the log file
log_file="/tmp/system-info.log"
exec > >(tee -a "$log_file") 2>&1

# 3. Define section function
section() {
    echo
    echo "=========================================="
    echo "$1"
    echo "=========================================="
}

# 4. Print system information
section "System Info Report - $server_name"

section "Script Start Time and PID"
echo "Start time : $start_date"
echo "Script PID : $script_pid"

section "Server Label"
echo "Server name: $server_name"

section "Current User and Home Directory"
echo "Current user: $(whoami)"
echo "Home directory: $HOME"

section "Operating System Information"
cat /etc/os-release | grep PRETTY

section "Disk Usage"
df -h /

section "Memory Usage"
free -h

section "System Uptime"
uptime

# 5. Calculate and print total execution time
end_time=$(date +%s)
execution_time=$((end_time - start_time))

section "Execution Summary"
echo "Total script execution time: $execution_time seconds"
echo "Log file: $log_file"
