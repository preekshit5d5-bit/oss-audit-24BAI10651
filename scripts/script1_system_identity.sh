#!/bin/bash
# Script 1: System Identity Report
# Author: Preekshit | Reg No: 24BAI10651
# Course: Open Source Software
# Description: Displays system information like a welcome screen

# --- Variables ---
STUDENT_NAME="Preekshit"
REG_NO="24BAI10651"
SOFTWARE_CHOICE="Git"

# --- Gather system info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE_TIME=$(date '+%d %B %Y, %H:%M:%S')
DISTRO=$(lsb_release -d | cut -f2)
HOME_DIR=$HOME

# --- Display welcome banner ---
echo "================================================="
echo "       Open Source Audit — $STUDENT_NAME"
echo "       Registration No : $REG_NO"
echo "================================================="
echo ""
echo "  Software Under Audit : $SOFTWARE_CHOICE"
echo "  License              : GPL v2"
echo ""
echo "--- System Information ---"
echo "  Distribution : $DISTRO"
echo "  Kernel       : $KERNEL"
echo "  User         : $USER_NAME"
echo "  Home Dir     : $HOME_DIR"
echo "  Uptime       : $UPTIME"
echo "  Date & Time  : $DATE_TIME"
echo ""
echo "--- License Note ---"
echo "  This system runs on Linux, covered under GNU GPL v2."
echo "  GPL v2 guarantees the freedom to run, study,"
echo "  modify, and distribute the software."
echo "================================================="

