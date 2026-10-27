
#!/bin/bash

number=$1

if [ $# -eq 0 ]; then
    echo "Error: Please provide a number"
    exit 1
fi



# 2. Numbers less than or equal to 1 are not prime
if [ "$number" -le 1 ]; then
    echo "$number is not a prime number"
    exit 0
fi

# 3. check the number is prime or not
is_prime=1

# 4. Check whether any number divides it evenly
i=2

while [ $((i * i)) -le "$number" ]; do
    if [ $((number % i)) -eq 0 ]; then
        is_prime=0
        break
    fi
    i=$((i + 1))
done

if [ "$is_prime" -eq 1 ]; then
    echo "$number is a prime number"
else
    echo "$number is not a prime number"
fi
