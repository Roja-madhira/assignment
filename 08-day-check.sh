
#!/bin/bash

day=$(date +%A)

if [ "$day" = "Saturday" ] || [ "$day" = "Sunday" ]; then
    echo "Weekend! Enjoy your holiday."
elif [ "$day" = "Monday" ]; then
    echo "Start of the week. Let's go!"
else
    echo "Weekday. Go to school/work."
fi
