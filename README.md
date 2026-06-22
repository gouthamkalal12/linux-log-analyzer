# Linux Log Analyzer

A Bash script that analyzes Linux log files and provides a quick summary of common issues such as errors, warnings, and failed events.

---

## Features

* Count ERROR entries
* Count WARNING entries
* Count FAILED events
* Display top error messages
* Validate log file existence
* Simple and lightweight Bash implementation

---

## Commands Used

| Command      | Purpose                     |
| ------------ | --------------------------- |
| grep         | Search log entries          |
| wc -l        | Count matching lines        |
| head         | Display top entries         |
| if statement | Validate log file existence |

---

## How to Run

Make the script executable:

```bash
chmod +x log_analyzer.sh
```

Run the script:

```bash
./log_analyzer.sh
```

Enter the log file path when prompted:

```text
/var/log/messages
```

---

## Sample Output

```text
=================================
 Linux Log Analyzer
=================================

Analyzing: /var/log/messages

Total Errors   : 12
Total Warnings : 8
Total Failed   : 3

Top 5 Error Entries:
...
```

---

## Skills Demonstrated

* Bash Shell Scripting
* Linux Log Analysis
* Troubleshooting
* Text Processing
* System Administration

---

## Future Improvements

* Export results to a report file
* Analyze SSH authentication failures
* Generate severity summaries
* Email report generation
* Scheduled execution using cron

---

## Author

Shiva Chandra Goutham Kalal

Linux Administrator Aspirant | RHEL | Shell Scripting | Git & GitHub
