# Memory-Monitoring-Script
This script continuously monitors memory usage and logs it into a specified log file at regular intervals.

# How It Works
<b>Timestamp:</b> The script logs the current date and time along with the memory usage percentage.
<b>Memory Usage Calculation:</b> The script uses the free -m command to get memory usage information. It extracts the total and used memory, calculates the used memory percentage, and formats it for logging.
<b>Continuous Monitoring:</b> The script runs indefinitely, logging the memory usage at regular intervals specified by the INTERVAL variable.
<b>Log File Creation:</b> The script ensures that the directory for the log file exists, creating it if necessary.
