#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Preekshit | Reg No: 24BAI10651
# Course: Open Source Software
# Description: Asks the user 3 questions and generates a personalised
#              open source philosophy statement saved to a .txt file

# --- Alias concept (demonstrated via comment) ---
# In a real shell session you could run: alias gs='git status'
# Aliases let you create shortcuts for long commands — a small
# but powerful example of the open-source spirit: adapt tools to your needs.

echo "================================================="
echo "       Open Source Manifesto Generator"
echo "       Student: Preekshit | 24BAI10651"
echo "================================================="
echo ""
echo "Answer three questions to generate your manifesto."
echo ""

# --- Read user input ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Get current date ---
DATE=$(date '+%d %B %Y')

# --- Define output file name ---
OUTPUT="manifesto_$(whoami).txt"

# --- Compose and write the manifesto to the file ---
echo "" > "$OUTPUT"
echo "======================================" >> "$OUTPUT"
echo "   My Open Source Manifesto" >> "$OUTPUT"
echo "   Preekshit | 24BAI10651" >> "$OUTPUT"
echo "   Generated on: $DATE" >> "$OUTPUT"
echo "======================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Every day, I rely on $TOOL — a tool I did not buy," >> "$OUTPUT"
echo "but one that was gifted to me by a community of people" >> "$OUTPUT"
echo "who believed that knowledge should be free." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "To me, freedom means $FREEDOM." >> "$OUTPUT"
echo "That single word is why open source matters —" >> "$OUTPUT"
echo "not just as a licensing model, but as a philosophy." >> "$OUTPUT"
echo "When source code is open, power shifts from corporations" >> "$OUTPUT"
echo "to individuals. Anyone can read, learn, fix, and improve." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "One day, I want to build $BUILD and share it freely." >> "$OUTPUT"
echo "Not because I have to, but because someone once did the same for me." >> "$OUTPUT"
echo "That is the chain of open source — each generation" >> "$OUTPUT"
echo "standing on the shoulders of the last." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Git taught me that even the most critical infrastructure" >> "$OUTPUT"
echo "in the world can be built openly, maintained by volunteers," >> "$OUTPUT"
echo "and trusted by millions. That is not an accident." >> "$OUTPUT"
echo "That is what happens when freedom is taken seriously." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "— Preekshit, $DATE" >> "$OUTPUT"
echo "======================================" >> "$OUTPUT"

echo ""
echo "  Manifesto saved to: $OUTPUT"
echo ""
echo "--- Your Manifesto ---"
# --- Display the generated manifesto ---
cat "$OUTPUT"
echo "================================================="
