
#!/bin/bash
start_time=$(date +%s)
echo "Running as      : $(whoami)"
echo "Directory       : $(pwd)"
echo "Home            : $HOME"
echo "Script PID      : $$"
sleep 10 &
echo "Background PID  : $!"
random_number=$((RANDOM % 100 + 1))
echo "Random number   : $random_number"
end_time=$(date +%s)
seconds_taken=$((end_time - start_time))
echo "Script ran in   : $seconds_taken seconds"

