#!/bin/bash

status=0

ls /tmp
if [ $? -ne 0 ]; then
    echo "FAILURE"
    status=1
else
    echo "SUCCESS"
fi

ls /fakedir
if [ $? -ne 0 ]; then
    echo "FAILURE"
    status=1
else
    echo "SUCCESS"
fi

ping -c1 google.com
if [ $? -eq 0 ]; then
    echo "Host reachable"
else
    echo "Host not reachable"
    status=1
fi
echo "Final exit code: $status"
exit "$status"