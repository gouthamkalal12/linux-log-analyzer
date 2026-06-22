# Linux Log Analyzer

A Bash script that parses Linux log files and delivers a quick summary of errors, warnings, and failed events — useful for daily health checks and troubleshooting on RHEL/Linux servers.

> Environment: RHEL 9.6 on VMware Workstation

---

## What It Analyzes

| Check | How | Why It Matters |
|---|---|---|
| ERROR entries | `grep -i "error"` + `wc -l` | Catches application and system errors |
| WARNING entries | `grep -i "warning"` + `wc -l` | Flags non-critical issues before they escalate |
| FAILED events | `grep -i "failed"` + `wc -l` | Detects failed services, logins, and jobs |
| Top error messages | `grep` + `head` | Shows the most frequent error patterns |
| Log file validation | `if` statement | Prevents the script from running on missing files |

---

## How to Run

**1. Clone the repo**
```bash
git clone https://github.com/gouthamkalal12/linux-log-analyzer.git
cd linux-log-analyzer
```

**2. Make it executable**
```bash
chmod +x log_analyzer.sh
```

**3. Run it**
```bash
./log_analyzer.sh
```

**4. Enter the log file path when prompted**
```
Enter log file path: /var/log/messages
```

Common RHEL 9.6 log files to analyze:
- `/var/log/messages` — general system messages
- `/var/log/secure` — SSH logins, sudo usage, auth failures
- `/var/log/dnf.log` — package install/remove history
- `/var/log/boot.log` — boot sequence messages

---

## Sample Output

Tested on RHEL 9.6 with `/var/log/messages`:

```
=================================
     Linux Log Analyzer
=================================
Date       : Mon 22 Jun 2026 10:45:30 IST
Analyzing  : /var/log/messages

--- SUMMARY ---
Total Errors   : 12
Total Warnings : 8
Total Failed   : 3

--- TOP 5 ERROR ENTRIES ---
Jun 22 09:12:44 rhel9-lab kernel: ERROR: unable to open /dev/sdb
Jun 22 09:15:21 rhel9-lab systemd[1]: ERROR: Job failed
Jun 22 09:18:03 rhel9-lab NetworkManager: ERROR: connection timeout
Jun 22 09:22:17 rhel9-lab kernel: ERROR: disk I/O error on sda
Jun 22 09:31:44 rhel9-lab sshd: ERROR: Could not load host key

--- TOP 5 WARNING ENTRIES ---
Jun 22 08:55:10 rhel9-lab kernel: WARNING: possible circular locking
Jun 22 09:01:33 rhel9-lab dbus: WARNING: message queue overflow
Jun 22 09:10:05 rhel9-lab systemd: WARNING: unit file changed on disk
Jun 22 09:18:44 rhel9-lab nm-dispatcher: WARNING: Script failed
Jun 22 09:25:19 rhel9-lab kernel: WARNING: CPU frequency out of range

--- FAILED EVENTS ---
Jun 22 09:14:22 rhel9-lab sshd[2341]: Failed password for invalid user
Jun 22 09:19:05 rhel9-lab systemd[1]: httpd.service: Failed with result
Jun 22 09:28:11 rhel9-lab sudo: pam_unix authentication failure

=================================
     End of Log Analysis
=================================
```

---

## Skills Demonstrated

- Bash scripting (input validation, conditionals, loops)
- Linux log file analysis (`/var/log/messages`, `/var/log/secure`)
- Text processing with `grep`, `wc`, `head`
- RHEL 9.6 log structure understanding
- Troubleshooting and error pattern recognition

---

## Planned Improvements

- [ ] Export report to a timestamped output file
- [ ] Analyze SSH brute force attempts from `/var/log/secure`
- [ ] Add top offending IP addresses for failed logins
- [ ] Color-coded output (red for errors, yellow for warnings)
- [ ] Schedule automated daily runs via cron
- [ ] Email report using `mail` command

---

## Author

**Shiva Chandra Goutham Kalal**  
Linux Administrator Aspirant | Pune, India  
[GitHub](https://github.com/gouthamkalal12)

---

*Built as part of RHCSA preparation and Linux portfolio development.*  
*Environment: RHEL 9.6 | VMware Workstation | Bash*
