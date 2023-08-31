#!/bin/bash

# Check if required arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <site_name> <admin_password>"
    exit 1
fi

# Assign arguments to variables
SITE_NAME=$1
ADMIN_PASSWORD=$2

# Switch to the 'bestoerp' user and execute commands in the same shell
sudo -u bestoerp bash << EOF
cd /home/bestoerp/frappe-bench
bench new-site "$SITE_NAME" --mariadb-root-password "SabicoTech@123" --admin-password "$ADMIN_PASSWORD"
EOF
