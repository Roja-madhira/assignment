
#!/bin/bash


print_header() {
    echo "==================================="
    echo "$1"
    echo "==================================="
}

# Function 2: Check command status
check_status() {
    if [ "$1" -eq 0 ]; then
        echo "SUCCESS: $2"
    else
        echo "FAILURE: $2"
    fi
}

# Function 3: Install a package
install_package() {
   if rpm -q "$package" &>/dev/null; then
    echo "$package is already installed"
else
    if dnf install -y "$package"; then
        check_status 0 "$package installed"
    else
        check_status 1 "$package installation failed"
    fi
fi

}   

print_header "Installing packages"

install_package git
install_package wget
install_package curl
