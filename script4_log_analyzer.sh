#!/bin/bash
# Script 4: Log File Analyzer
# Author: Preekshit | Reg No: 24BAI10651
# Course: Open Source Software
# Description: Reads a log file, counts lines matching a keyword,
#              and prints a summary with the last 5 matching lines
# Usage: ./script4_log_analyzer.sh /path/to/logfile [keyword]

# --- Accept log file path as first argument ---
LOGFILE=$1

# --- Accept keyword as second argument, default is 'error' ---
KEYWORD=${2:-"error"}

COUNT=0

echo "================================================="
echo "         Log File Analyzer"
echo "         Student: Preekshit | 24BAI10651"
echo "================================================="
echo ""

# --- Check if a log file argument was provided ---
if [ -z "$LOGFILE" ]; then
    echo "  Usage: ./script4_log_analyzer.sh <logfile> [keyword]"
    echo "  Example: ./script4_log_analyzer.sh /var/log/syslog error"
    exit 1
fi

# --- Retry loop: check if the file exists, retry up to 3 times ---
RETRIES=3
while [ $RETRIES -gt 0 ]; do
    if [ -f "$LOGFILE" ]; then
        break
    else
        echo "  File '$LOGFILE' not found. Retries left: $RETRIES"
        RETRIES=$((RETRIES - 1))
        sleep 1
    fi
done

# --- Exit if file still not found after retries ---
if [ ! -f "$LOGFILE" ]; then
    echo "  Error: Could not find '$LOGFILE' after retries. Exiting."
    exit 1
fi

# --- Check if the file is empty ---
if [ ! -s "$LOGFILE" ]; then
    echo "  Warning: '$LOGFILE' is empty. Nothing to analyze."
    exit 0
fi

echo "  Analyzing : $LOGFILE"
echo "  Keyword   : '$KEYWORD'"
echo ""

# --- Read file line by line and count keyword matches ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Print summary ---
echo "  Result: Keyword '$KEYWORD' found $COUNT time(s) in $LOGFILE"
echo ""

# --- Print last 5 lines that contain the keyword ---
echo "--- Last 5 matching lines ---"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo ""
echo "================================================="
