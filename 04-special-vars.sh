
#!/bin/bash
START_TIME=$(date +%s)
echo "Running as      : $(whoami)"
echo "Directory       : $(pwd)"
echo "Home            : $HOME"
echo "Script PID      : $$"
sleep 10 &
echo "Background PID  : $!"
RANDOM_NUMBER=$((RANDOM % 100 + 1))
echo "Random number   : $RANDOM_NUMBER"
END_TIME=$(date +%s)
SECONDS_TAKEN=$((END_TIME - START_TIME))
echo "Script ran in   : $SECONDS_TAKEN seconds"


