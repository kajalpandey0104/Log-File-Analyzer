#!/bin/bash
START_TIME=$(date +%s)

# Check if log file argument is provided
if [ $# -ne 1 ]
then
    echo "Usage: ./log_analyzer.sh sample_access.log"
    exit 1
fi

LOGFILE=$1
REPORT="report_$(date +%F).txt"

# Check if file exists
if [ ! -f "$LOGFILE" ]
then
    echo "File not found!"
    exit 1
fi

echo "File Found"

# Count only non-empty lines
TOTAL=$(grep -cve '^[[:space:]]*$' "$LOGFILE")

# Calculate errors
ERRORS=$(awk '$9>=400 {count++} END {print count}' "$LOGFILE")

# Calculate error percentage
ERROR_RATE=$(awk "BEGIN {printf \"%.2f\", ($ERRORS/$TOTAL)*100}")

# Create report file
echo "===== LOG ANALYSIS REPORT =====" > "$REPORT"
echo "File : $LOGFILE" >> "$REPORT"
echo "Generated : $(date)" >> "$REPORT"
echo "" >> "$REPORT"

# ---------------- Terminal Output ----------------

echo "Total Requests : $TOTAL"
echo "Total Requests : $TOTAL" >> "$REPORT"

echo
echo "===== Top 10 IP Addresses ====="

awk '{print $1}' "$LOGFILE" | sort | uniq -c | sort -rn | head -10

echo "" >> "$REPORT"
echo "===== Top 10 IP Addresses =====" >> "$REPORT"
awk '{print $1}' "$LOGFILE" | sort | uniq -c | sort -rn | head -10 >> "$REPORT"

echo
echo "===== Top 10 Requested URLs ====="

awk '{print $7}' "$LOGFILE" | sort | uniq -c | sort -rn | head -10

echo "" >> "$REPORT"
echo "===== Top 10 Requested URLs =====" >> "$REPORT"
awk '{print $7}' "$LOGFILE" | sort | uniq -c | sort -rn | head -10 >> "$REPORT"

echo
echo "===== Status Code Distribution ====="

awk '{print $9}' "$LOGFILE" | sort | uniq -c

echo "" >> "$REPORT"
echo "===== Status Code Distribution =====" >> "$REPORT"
awk '{print $9}' "$LOGFILE" | sort | uniq -c >> "$REPORT"

echo
echo "===== Error Rate ====="
echo "Total Errors : $ERRORS"
echo "Error Rate : $ERROR_RATE%"

echo "" >> "$REPORT"
echo "===== Error Rate =====" >> "$REPORT"
echo "Total Errors : $ERRORS" >> "$REPORT"
echo "Error Rate : $ERROR_RATE%" >> "$REPORT"

echo
echo "===== Requests Per Hour ====="

awk '{print substr($4,2,14)}' "$LOGFILE" | sort | uniq -c

echo "" >> "$REPORT"
echo "===== Requests Per Hour =====" >> "$REPORT"
awk '{print substr($4,2,14)}' "$LOGFILE" | sort | uniq -c >> "$REPORT"

echo
echo "=================================="
echo "Report Generated Successfully!"
echo "Report File : $REPORT"
END_TIME=$(date +%s)

PROCESS_TIME=$((END_TIME - START_TIME))

echo "Processing Time : ${PROCESS_TIME} seconds"

echo "Processing Time : ${PROCESS_TIME} seconds" >> "$REPORT"