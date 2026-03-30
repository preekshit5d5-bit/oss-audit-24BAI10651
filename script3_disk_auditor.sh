#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Preekshit | Reg No: 24BAI10651
# Course: Open Source Software
# Description: Loops through key system directories and reports
#              their size, owner, and permissions

# --- List of important system directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "================================================="
echo "         Disk and Permission Auditor"
echo "         Student: Preekshit | 24BAI10651"
echo "================================================="
echo ""
echo "Directory Audit Report"
echo "----------------------"

# --- Loop through each directory and print info ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, group using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get human-readable size of directory
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "  $DIR"
        echo "    Permissions/Owner : $PERMS"
        echo "    Size              : $SIZE"
        echo ""
    else
        echo "  $DIR does not exist on this system."
        echo ""
    fi
done

echo "--- Git Config Directory Check ---"
# --- Check if Git's config directory exists ---
GIT_CONFIG_DIR="/etc/gitconfig"

if [ -f "$GIT_CONFIG_DIR" ]; then
    # Show permissions of the global git config file
    PERMS=$(ls -l "$GIT_CONFIG_DIR" | awk '{print $1, $3, $4}')
    echo "  Git global config found at $GIT_CONFIG_DIR"
    echo "  Permissions/Owner : $PERMS"
else
    echo "  Git global config ($GIT_CONFIG_DIR) not found."
    echo "  This is normal if Git has not been configured globally yet."
fi

echo ""
echo "================================================="
