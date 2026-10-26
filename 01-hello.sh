
#!/bin/bash


echo "Hello, world!"

CURRENT_DATE=$(date +"%a %b %d %H:%M:%S %Z %Y")

echo "Today is: $CURRENT_DATE"
CURRENT_USER=$(whoami)
echo "Running as: $CURRENT_USER"
CURRENT_DIRECTORY=$(pwd)
echo "Current directory: $CURRENT_DIRECTORY"
