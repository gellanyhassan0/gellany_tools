# gellany tools 
gellany_tools help who want to automate tools in single terminal in one app running with multi command line running as same time
we inspire main idea only from https://github.com/juanbenitezdev/fsociety-1 and reduce 1800 code line with minumum 50 line as OOP skeleton 
this app will help you in update and installing tools or apps without you try to install each it indvidual but should enter in -to --tool arugemnt name of tool
gellany_tools have two mode ( single for using one command line or multi for using multi command line in terminal in same time with as posiible arguments


this example if you want using nmap tool and you dont have installed yet in your os and you can visit this links https://nmap.org https://nmap.org/book/scan-methods-null-fin-xmas-scan.html to advanced your arguments

<code>python3 gellany_tools.py -to nmap -ta 192.168.1.1 -mo single -ar1 p22,443</code><br>
<code>Starting Nmap 7.92SVN ( https://nmap.org ) at 2022-06-08 20:30 EDT</code><br>
<code>Nmap scan report for 192.168.1.1</code><br>
<code>Host is up (0.0026s latency).</code><br>

<code>PORT    STATE  SERVICE</code><br>
<code>22/tcp  closed ssh</code><br>
<code>443/tcp open   https</code><br>


<code>Nmap done: 1 IP address (1 host up) scanned in 13.34 seconds</code><br>

<code>python3 gellany_tools.py -to nmap -ta 192.168.1.1 -mo multi -ar1 p22,443 -ar2 sV</code><br>
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
<code>53/tcp  open  domain</code><br>
<code>80/tcp  open  http</code><br>
<code>443/tcp open  https</code><br>
<code>Nmap done: 1 IP address (1 host up) scanned in 13.64 seconds</code><br>
  
  
  
 <code>python3 gellany_tools.py -h
usage: gellany_tools.py [-h] [-ta TARGET] [-to TOOL] [-ar1 ARGUMENT1] [-ar2 ARGUMENT2] [-mo MODE] [-hsn HELP_STEALTH_NMAP]

optional arguments:
  -h, --help            show this help message and exit
  -ta TARGET, --target TARGET
                        target to check
  -to TOOL, --tool TOOL
                        tool or weapon want to fire
  -ar1 ARGUMENT1, --argument1 ARGUMENT1
                        argument1 want add to tool if you like
  -ar2 ARGUMENT2, --argument2 ARGUMENT2
                        argument2 want add to tool if you like
  -mo MODE, --mode MODE
                        argument mode if want to using two command line in same time or single
  -hsn HELP_STEALTH_NMAP, --help_stealth_nmap HELP_STEALTH_NMAP
   TCP FIN, NULL, and Xmas Scans (-sF, -sN, -sX)</code><br>

# docker deploy
#/home/go/ = your path your already download git folder in it<br>
<code>docker image build -t python:0.0.1 /home/go/gellany_tools</code><br>
<code>docker run -it -d python:0.0.1</code><br>
<code>docker ps</code><br>
<code>docker exec -it f77d93571bcc python3 gellany_tools.py -h</code><br>
<code>docker exec -it 6bbe10261172 python3 gellany_tools.py -to nmap -ta 192.168.1.1 -mo single -ar1 p22,443</code><br>
<code>docker stop f77d93571bcc</code><br>

# docker push
<code>docker login --username username</code><br>
<code>docker image list</code><br>
<code>docker tag a2ac10640f5b gellany/python</code><br>
<code>docker push gellany/python</code><br>

