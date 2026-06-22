#!/bin/bash

echo "================================="
echo " Linux Log Analyzer"
echo "================================="

read -p "Enter log file path: " logfile

if [ ! -f "$logfile" ]; then
    echo "Log file not found!"
    exit 1
fi

echo ""
echo "Analyzing: $logfile"
echo ""

errors=$(grep -i "error" "$logfile" | wc -l)
warnings=$(grep -i "warning" "$logfile" | wc -l)
failed=$(grep -i "failed" "$logfile" | wc -l)

echo "Total Errors   : $errors"
echo "Total Warnings : $warnings"
echo "Total Failed   : $failed"

echo ""
echo "Top 5 Error Entries:"
grep -i "error" "$logfile" | head -5

echo ""
echo "Analysis Complete"