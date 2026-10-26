
#!/bin/bash


echo "Hello, world!"

CURRENT_DATE=$(date +"%F %T")
echo "Today's date and time: $CURRENT_DATE"
CURRENT_USER=$(whoami)
echo "Running user is: $CURRENT_USER"
CURRENT_DIRECTORY=$(pwd)
echo "Current directory: $CURRENT_DIRECTORY"
