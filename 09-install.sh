#!/bin/bash
package=$1
user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "Please run this script with sudo access.."
    exit 1
fi

    
if [ $# -eq 0 ]; then
    echo "Error: Please provide a package name"
    exit 1
fi
if rpm -q "$package" &>/dev/null; then
    echo "$package is already installed"
    exit 0
fi
dnf install -y "$package"
if [ $? -eq 0 ]; then
    echo "$package installed successfully"
else
    echo "$package installation failed"
    exit 1
fi