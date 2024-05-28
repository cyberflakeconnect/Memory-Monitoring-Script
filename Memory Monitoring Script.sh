#!/bin/bash

# Log file to store memory usage data
LOG_FILE="/path/to/your/memory_usage.log"

# Interval in seconds between each memory usage check
INTERVAL=5

# Function to log memory usage
log_memory_usage() {
    while true; do
        # Get the current date and time
        TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

        # Get memory usage information
        MEMORY_USAGE=$(free -m | awk 'NR==2{printf "Memory Usage: %.2f%%", $3*100/$2 }')

        # Log the date, time, and memory usage
        echo "$TIMESTAMP - $MEMORY_USAGE" >> "$LOG_FILE"

        # Wait for the specified interval before checking again
        sleep $INTERVAL
    done
}

# Ensure the log file directory exists
mkdir -p "$(dirname "$LOG_FILE")"

# Start logging memory usage
log_memory_usage
