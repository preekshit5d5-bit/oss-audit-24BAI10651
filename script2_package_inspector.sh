#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Preekshit | Reg No: 24BAI10651
# Course: Open Source Software
# Description: Checks if Git is installed, shows version and license info

# --- Define the package to inspect ---
PACKAGE="git"

echo "================================================="
echo "         FOSS Package Inspector"
echo "         Student: Preekshit | 24BAI10651"
echo "================================================="
echo ""

# --- Check if the package is installed using dpkg ---
if dpkg -l $PACKAGE 2>/dev/null | grep -q "^ii"; then
    echo "  [FOUND] $PACKAGE is installed on this system."
    echo ""

    # --- Display version information ---
    VERSION=$(git --version)
    echo "  Version  : $VERSION"

    # --- Display license from dpkg ---
    echo "  License  : GPL v2"
    echo "  Summary  : Git is a free and open-source distributed version control system."
    echo ""
else
    echo "  [NOT FOUND] $PACKAGE is not installed."
    echo "  Installing $PACKAGE now..."
    sudo apt install git -y
    echo "  Git has been installed. Please run this script again."
    exit 1
fi

echo "--- Philosophy Note ---"
# --- Case statement: prints a philosophy note based on package name ---
case $PACKAGE in
    git)
        echo "  Git: Born from frustration with proprietary tools."
        echo "  Linus Torvalds built Git in 2005 when BitKeeper"
        echo "  revoked its free license from the Linux community."
        ;;
    apache2)
        echo "  Apache: The web server that built the open internet."
        ;;
    mysql)
        echo "  MySQL: Open source at the heart of millions of apps."
        ;;
    firefox)
        echo "  Firefox: A nonprofit fighting for an open web."
        ;;
    vlc)
        echo "  VLC: Built by students — plays anything, costs nothing."
        ;;
    *)
        echo "  This is a valued open-source tool trusted by millions."
        ;;
esac

echo ""
echo "================================================="
