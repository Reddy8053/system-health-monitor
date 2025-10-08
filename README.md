# 🧩 System Health Monitor

A simple **Shell Script** that checks your system’s CPU, memory, and disk usage and logs the details into a file.

## 🚀 Features
- Monitors CPU, Memory, and Disk usage
- Lists top 5 CPU-consuming processes
- Logs data with timestamps
- Creates log directory automatically

## ⚙️ Usage
```bash
chmod +x monitor.sh
./monitor.sh
```

Logs will be saved in the `logs/` directory.

## 🧰 Example Output
```
======================
System Report - Wed Oct 08 09:00:12 CDT 2025
======================
CPU Usage:
%Cpu(s): 12.3 us, 2.5 sy, 0.0 ni, 85.0 id, 0.2 wa, 0.0 hi, 0.0 si, 0.0 st

Memory Usage:
              total        used        free      shared  buff/cache   available
Mem:           7.8G        2.1G        3.2G        0.3G        2.5G        5.3G

Disk Usage:
Filesystem      Size  Used Avail Use% Mounted on
/dev/root        50G   22G   26G  46% /

Top 5 Processes by CPU:
  PID COMMAND %CPU
 1011 chrome  15.3
  832 code    11.8
 1201 node     7.2
```
