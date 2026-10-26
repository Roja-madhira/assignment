
#!/bin/bash


echo "Hello, world!"

CURRENT_DATE=$(date +"%a %b %d %H:%M:%S %Z %Y")

echo "Today's date and time: $CURRENT_DATE"
CURRENT_USER=$(whoami)
echo "Running user is: $CURRENT_USER"
CURRENT_DIRECTORY=$(pwd)
echo "Current directory: $CURRENT_DIRECTORY"
