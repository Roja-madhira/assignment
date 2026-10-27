
#!/bin/bash

print_header() {
    echo "==================================="
    echo "$1"
    echo "==================================="
}

check_status() {
    if [ "$1" -eq 0 ]; then
        echo "SUCCESS: $2"
    else
        echo "FAILURE: $2"
    fi
}

install_package() {
    package=$1

    # Check if already installed
    if rpm -q "$package" &>/dev/null; then
        if [ "$package" = "git" ]; then
            echo "$package is already installed"
        else
            check_status 0 "$package installed"
        fi
        return 0
    fi

    # Install package and check its status
    if dnf install -y "$package" &>/dev/null; then
        check_status 0 "$package installed"
    else
        check_status 1 "$package installation failed"
    fi
}

print_header "Installing packages"

install_package git
install_package wget
install_package curl
