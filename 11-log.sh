
#!/bin/bash

# Declare variables
tmp_dir="/tmp"
script_name="script"
success_log="$tmp_dir/$script_name.log"
error_log="$tmp_dir/$script_name-errors.log"

# Create log files
touch "$success_log" "$error_log"

# Redirect success output and error output
ls "$tmp_dir" > "$success_log" 2> "$error_log"
ls /fakedir >> "$success_log" 2>> "$error_log"
date >> "$success_log" 2>> "$error_log"

# Display both log files
echo "========== SUCCESS LOG =========="
cat "$success_log"

echo "========== ERROR LOG =========="
cat "$error_log"
