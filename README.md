# gellany_tools :help who want to automate tools in shell terminal in one app running
we inspire main idea only from https://github.com/juanbenitezdev/fsociety-1 and reduce 1800 code line with minumum 50 line as OOP skeleton 
this app will help you in update and installing tools or apps without you try to install each it indvidual but should enter in -to --tool arugemnt name of tool
gellany_tools have two mode ( single for using one command line or multi for using multi command line in terminal in same time with as posiible arguments

<code>python3 gellany_fsociety.py -to nmap -ta 192.168.1.1 -mo single -ar1 p22,443</code><br>
<code>Starting Nmap 7.92SVN ( https://nmap.org ) at 2022-06-08 20:30 EDT</code><br>
<code>Nmap scan report for 192.168.1.1</code><br>
<code>Host is up (0.0026s latency).</code><br>

<code>PORT    STATE  SERVICE</code><br>
<code>22/tcp  closed ssh</code><br>
<code>443/tcp open   https</code><br>


<code>Nmap done: 1 IP address (1 host up) scanned in 13.34 seconds</code><br>

<code>python3 gellany_fsociety.py -to nmap -ta 192.168.1.1 -mo multi -ar1 p22,443 -ar2 sV</code><br>
<code>Starting Nmap 7.92SVN ( https://nmap.org ) at 2022-06-08 20:37 EDT</code><br>
<code>Nmap scan report for 192.168.1.1</code><br>
<code>Host is up (0.021s latency).</code><br>

<code>PORT    STATE  SERVICE VERSION</code><br>
<code>22/tcp  closed ssh</code><br>
<code>443/tcp open   ssl</code><br>


<code>Service detection performed. Please report any incorrect results at https://nmap.org/submit/ </code><br>
<code>Nmap done: 1 IP address (1 host up) scanned in 48.73 seconds</code><br>
<code>Starting Nmap 7.92SVN ( https://nmap.org ) at 2022-06-08 20:38 EDT</code><br>
<code>Nmap scan report for 192.168.1.1</code><br>
<code>Host is up (0.015s latency).</code><br>
<code>Not shown: 997 closed tcp ports (reset)</code><br>
<code>PORT    STATE SERVICE</code><br>
<code>53/tcp  open  domain<br>
<code>80/tcp  open  http<br>
<code>443/tcp open  https<br>
<code>MAC Address: D8:29:18:63:40:1C (Huawei Technologies)<br>

<code>Nmap done: 1 IP address (1 host up) scanned in 13.64 seconds</code><br>
