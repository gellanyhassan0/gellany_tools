# gellany_tools
we inspire main idea only from https://github.com/juanbenitezdev/fsociety-1 and reduce 1800 with minumum 50 line as idea
this app help who want to automate tools in shell terminal in one app running
this app will help you in update and installing tools or apps without you try to install each it indvidual but should enter in -to --tool arugemnt name of tool
gellany_tools have two mode ( single for using one command line or multi for using multi command line in terminal in same time with as posiible arguments

<code>python3 gellany_fsociety.py -to nmap -ta 192.168.1.1 -mo single -ar1 p22,443<br>
Starting Nmap 7.92SVN ( https://nmap.org ) at 2022-06-08 20:30 EDT<br>
Nmap scan report for 192.168.1.1<br>
Host is up (0.0026s latency).<br>

PORT    STATE  SERVICE<br>
22/tcp  closed ssh<br>
443/tcp open   https<br>
MAC Address: D8:29:18:63:40:1C (Huawei Technologies)<br>

Nmap done: 1 IP address (1 host up) scanned in 13.34 seconds</code><br>

<code>python3 gellany_fsociety.py -to nmap -ta 192.168.1.1 -mo multi -ar1 p22,443 -ar2 sV<br>
Starting Nmap 7.92SVN ( https://nmap.org ) at 2022-06-08 20:37 EDT<br>
Nmap scan report for 192.168.1.1<br>
Host is up (0.021s latency).<br>

PORT    STATE  SERVICE VERSION<br>
22/tcp  closed ssh<br>
443/tcp open   ssl<br>
MAC Address: D8:29:18:63:40:1C (Huawei Technologies)<br>

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ <br>
Nmap done: 1 IP address (1 host up) scanned in 48.73 seconds<br>
Starting Nmap 7.92SVN ( https://nmap.org ) at 2022-06-08 20:38 EDT<br>
Nmap scan report for 192.168.1.1<br>
Host is up (0.015s latency).<br>
Not shown: 997 closed tcp ports (reset)<br>
PORT    STATE SERVICE<br>
53/tcp  open  domain<br>
80/tcp  open  http<br>
443/tcp open  https<br>
MAC Address: D8:29:18:63:40:1C (Huawei Technologies)<br>

Nmap done: 1 IP address (1 host up) scanned in 13.64 seconds</code><br>
