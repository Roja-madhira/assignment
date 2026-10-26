
#!/bin/bash
echo "Running as      : $(whoami)"
echo "Directory       : $(pwd)"
echo "Home            : $HOME"
echo "Script PID      : $$"
sleep 10 &
echo "Background PID  : $!"
RANDOM_NUMBER=$((RANDOM % 100 + 1))
echo "Random number   : $RANDOM_NUMBER"
echo "Script ran in   : $SECONDS"
