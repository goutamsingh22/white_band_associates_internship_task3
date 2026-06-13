1. What is a Process?
A process is a program that is currently running on a computer. Each process uses system resources such as CPU, memory, and storage to perform its tasks.
Example: Web browsers, terminal applications, and text editors are all processes when they are running.

2. What is a PID?
A PID (Process ID) is a unique number assigned by the operating system to each running process. It helps the system identify and manage processes.
Example:
PID 1234 → Firefox
PID 5678 → Terminal
Each running process has a different PID.

3. Which process is consuming the most CPU?
Open:
top
or
htop
Look at the %CPU column.
The process with the highest percentage is consuming the most CPU.
Example Answer:
The process consuming the most CPU was firefox with approximately 25% CPU usage.
⚠️ Replace "firefox" and "25%" with the values from your system.

4. Which process is consuming the most Memory?
In top or htop, look at the %MEM column.
The process with the highest percentage is consuming the most memory.

Part c 
System Summary Report
System Information
•	Operating System: Kali Linux
•	Kernel Version: 6.12.13-amd64
Memory Information
•	Total RAM: 7.6 GiB
•	Available RAM: 5.0 GiB
Storage Information
•	Total Disk Size: 50 GB
•	Used Disk Space: 20 GB
•	Available Disk Space: 28 GB
•	Disk Usage: 42%
System Uptime
•	Uptime: 3 hours 25 minutes
Conclusion
This report provides an overview of the system's hardware resources and operating system status. The system has sufficient available memory and disk space and is running normally.

Task d ;
1. What is a Service?
A service is a program that runs in the background and performs specific tasks without direct user interaction. Services start automatically or manually and help the operating system function properly.
Examples:
•	SSH Service 
•	NetworkManager 
•	Apache Web Server 
•	Database Services

2. Why are Services Important?
Services are important because they provide essential system functions such as network connectivity, remote access, printing, web hosting, and system monitoring. Many operating system features depend on services running correctly.

3. How Can a Stopped Service Affect a System?
If a service stops running, the functionality it provides becomes unavailable. This can cause system issues and prevent users from accessing certain features.
Examples:
•	If the SSH service stops, remote login will not work. 
•	If NetworkManager stops, network connections may fail. 
•	If a web server service stops, websites hosted on that server become inaccessible.

PART E 
#!/bin/bash
echo "================================="
echo " System Information Report"
echo "================================="
echo ""
echo "User: $(whoami)"
echo "Hostname: $(hostname)"
echo "Date & Time: $(date)"
echo "Current Directory: $(pwd)"
echo ""
echo "Memory Usage:"
free -h
echo ""
echo "Disk Usage:"
df -h /
echo ""
echo "================================="
echo " End of Report"
echo "================================="

TASK E 
1. netstat
Purpose
netstat (Network Statistics) is used to display network connections, routing tables, interface statistics, and listening ports on a system.
Example Output
$ netstat -tuln

Proto Local Address      State
tcp   0.0.0.0:22         LISTEN
tcp   0.0.0.0:80         LISTEN
Security Use Case
•	Detect unauthorized open ports. 
•	Identify suspicious network connections. 
•	Verify which services are listening on the system. 
Example: An attacker may open a hidden service on port 4444. netstat can help identify it.
2. ss
Purpose
ss (Socket Statistics) is a modern replacement for netstat. It displays network sockets and active connections more efficiently.
Example Output
$ ss -tuln

Netid State  Local Address:Port
tcp   LISTEN 0.0.0.0:22
tcp   LISTEN 0.0.0.0:80
Security Use Case
•	Monitor active network connections. 
•	Detect unexpected listening services. 
•	Troubleshoot suspicious traffic. 
Example: Security administrators use ss to identify unknown applications communicating over the network.
3. who
Purpose
The who command displays information about users currently logged into the system.
Example Output
$ who

student  pts/0  2025-06-13 09:15
admin    pts/1  2025-06-13 10:00
Security Use Case
•	Identify currently logged-in users. 
•	Detect unauthorized user access. 
•	Monitor shared systems. 
Example: If an unknown user account appears, it may indicate unauthorized access.
4. w
Purpose
The w command shows who is logged in and what they are currently doing.
Example Output
$ w

USER     TTY   FROM        LOGIN@   IDLE
student  pts/0 192.168.1.5 09:15    2:00
Security Use Case
•	Monitor user activity. 
•	Identify suspicious sessions. 
•	Detect unusual login behavior. 
Example: An administrator can see if a user is running unexpected processes.

5. last
Purpose
The last command displays the login history of users on the system.
Example Output
$ last

student pts/0 192.168.1.5 Fri Jun 13 09:15
admin   pts/1 192.168.1.8 Thu Jun 12 14:20
Security Use Case
•	Audit login history. 
•	Investigate security incidents. 
•	Detect unauthorized login attempts. 
Example: If someone accessed the system at an unusual time, last can help identify when and from where.



Netstat 
Purpose: Shows network connections and ports 

Example output: 
Active Internet connections (w/o servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State      
udp        0      0 10.0.2.15:bootpc        10.0.2.2:bootps         ESTABLISHED
Active UNIX domain sockets (w/o servers)
Proto RefCnt Flags       Type       State         I-Node   Path
unix  3      [ ]         STREAM     CONNECTED     13990    
unix  3      [ ]         STREAM     CONNECTED     14616    
unix  3      [ ]         STREAM     CONNECTED     12410    /run/user/1000/at-spi/bus_0
unix  3      [ ]         STREAM     CONNECTED     10229    
unix  3      [ ]         STREAM     CONNECTED     10832    
unix  3      [ ]         STREAM     CONNECTED     10674    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     20291    /run/user/1000/gvfsd/socket-r6sfVsPh
unix  3      [ ]         STREAM     CONNECTED     13607    
unix  3      [ ]         STREAM     CONNECTED     14350    
unix  3      [ ]         STREAM     CONNECTED     8509     
unix  3      [ ]         STREAM     CONNECTED     14972    /run/user/1000/bus
unix  3      [ ]         STREAM     CONNECTED     11237    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     14431    /run/user/1000/bus
unix  3      [ ]         STREAM     CONNECTED     11513    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     15288    /run/user/1000/bus
unix  3      [ ]         STREAM     CONNECTED     12006    /run/user/1000/bus
unix  3      [ ]         STREAM     CONNECTED     11962    
unix  3      [ ]         STREAM     CONNECTED     14976    /run/user/1000/bus
unix  3      [ ]         STREAM     CONNECTED     10800    
unix  3      [ ]         STREAM     CONNECTED     14238    /run/user/1000/bus
unix  3      [ ]         STREAM     CONNECTED     12024    
unix  3      [ ]         STREAM     CONNECTED     10896    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     10828    
unix  3      [ ]         STREAM     CONNECTED     14241    @/tmp/.ICE-unix/970
unix  3      [ ]         STREAM     CONNECTED     13985    /run/dbus/system_bus_socket

Security use case: Detect Open port and suspicious connections 

Ss
Displays socket and network information
Example output: 
RTNETLINK answers: Invalid argument
Netid  State    Recv-Q   Send-Q                                    Local Address:Port          Peer Address:Port    
u_str  ESTAB    0        0                                                     * 13990                    * 13991   
u_str  ESTAB    0        0                                                     * 14616                    * 13561   
u_str  ESTAB    0        0                           /run/user/1000/at-spi/bus_0 12410                    * 11970   
u_str  ESTAB    0        0                                                     * 10229                    * 10902   
u_str  ESTAB    0        0                                                     * 10832                    * 10833   
u_str  ESTAB    0        0                           /run/dbus/system_bus_socket 10674                    * 10015   
u_str  ESTAB    0        0                  /run/user/1000/gvfsd/socket-r6sfVsPh 20291                    * 20290   
u_str  ESTAB    0        0                                                     * 13607                    * 13608   
u_str  ESTAB    0        0                                                     * 14350                    * 14351   
u_str  ESTAB    0        0                                                     * 8509                     * 8043    
u_str  ESTAB    0        0                                    /run/user/1000/bus 14972                    * 14971   
u_str  ESTAB    0        0                                    @/tmp/.X11-unix/X0 11237                    * 11236   
u_str  ESTAB    0        0                                    /run/user/1000/bus 14431                    * 14430   
u_str  ESTAB    0        0                           /run/systemd/journal/stdout 11513                    * 11133   
u_str  ESTAB    0        0                                    /run/user/1000/bus 15288                    * 15287   
u_str  ESTAB    0        0                                    /run/user/1000/bus 12006                    * 12446   
u_str  ESTAB    0        0                                                     * 11962                    * 12408
Monitor active network communications

Who
Shows current logged-in users 
Example output: 
kali     seat0        2026-06-13 05:47 (:0)
Detect unauthorized users

W
Shows logged-in users and activities 
Example output : 
06:03:38 up 16 min,  1 user,  load average: 0.10, 0.07, 0.09
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU  WHAT
kali              -                05:47           0.00s  0.01s lightdm --session-child 13 24
Monitor user actions 

Last 
Displays login history 
Example output : 
kali     tty7         :0               Sat Jun 13 05:47 - still logged in
lightdm  tty7         :0               Sat Jun 13 05:46 - 05:47  (00:00)
kali     tty7         :0               Sat Jun 13 05:31 - still logged in
lightdm  tty7         :0               Sat Jun 13 05:31 - 05:31  (00:00)
kali     tty7         :0               Sat Jun 13 01:35 - 02:52  (01:16)
lightdm  tty7         :0               Sat Jun 13 01:34 - 01:35  (00:01)
kali     tty7         :0               Sat Jun  6 13:50 - 14:18  (00:28)
lightdm  tty7         :0               Sat Jun  6 13:50 - 13:50  (00:00)
kali     tty7         :0               Sat Jun  6 08:08 - 08:53  (00:44)
lightdm  tty7         :0               Sat Jun  6 08:08 - 08:08  (00:00)
kali     tty7         :0               Tue Jun  2 06:05 - still logged in
lightdm  tty7         :0               Tue Jun  2 06:05 - 06:05  (00:00)
root     pts/2                         Sat May 23 04:12 - 04:33  (00:21)
kali     tty7         :0               Sat May 23 04:06 - 04:36  (00:29)
lightdm  tty7         :0               Sat May 23 04:06 - 04:06  (00:00)
root     pts/1                         Sat May 23 03:27 - 03:28  (00:01)
kali     tty7         :0               Sat May 23 03:26 - 03:28  (00:02)
lightdm  tty7         :0               Sat May 23 03:26 - 03:26  (00:00)
root     pts/1                         Mon Apr 20 09:50 - 09:52  (00:02)
kali     tty7         :0               Mon Apr 20 09:50 - 10:21  (00:31)
lightdm  tty7         :0               Mon Apr 20 09:50 - 09:50  (00:00)
root     pts/1                         Sun Apr 19 22:13 - 22:13  (00:00)
root     pts/1                         Sun Apr 19 22:12 - 22:13  (00:01)
kali     pts/0                         Sun Apr 19 22:02 - 22:08  (00:05)
kali     tty7         :0               Sun Apr 19 22:01 - 22:14  (00:12)
lightdm  tty7         :0               Sun Apr 19 22:01 - 22:01  (00:00)
kali     pts/0                         Tue Feb  3 12:26 - 12:27  (00:00)
kali     tty7         :0               Tue Feb  3 12:23 - still logged in
lightdm  tty7         :0               Tue Feb  3 12:21 - 12:23  (00:01)
postgres                               Tue Dec  2 21:35 - 21:35  (00:00)

wtmpdb begins Tue Dec  2 21:35:30 2025
Investigate previous logins and security events 

Part G: Mini SOC activity
1. How would you identify resource-heavy processes?
If a system is running slowly, I would first use commands such as top, htop, and ps aux to monitor running processes. These commands show CPU and memory usage in real time. I would look for processes consuming unusually high CPU or RAM, as they are often responsible for system performance issues.
2. How would you determine whether a process is suspicious?
I would check the process name, PID, owner, CPU usage, memory usage, and the location from which the process is running. I would also verify whether the process is a legitimate system service or an expected application. If the process has an unusual name, consumes excessive resources, starts automatically without reason, or maintains unexpected network connections, it may be suspicious and require further investigation.
3. What information would you collect before terminating a process?
Before terminating a process, I would collect important information such as:
•	Process Name
•	PID (Process ID)
•	User running the process
•	CPU and Memory usage
•	Command used to start the process
•	Related network connections
•	System logs and error messages
Collecting this information helps determine whether the process is malicious or a legitimate service. It also provides evidence for troubleshooting and future security analysis before taking action.
