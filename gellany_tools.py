import sys
import argparse
import os
import subprocess
import re
import socket
import urllib
import sys
import json
import telnetlib
import glob
import random
import threading
import base64
import time
from sys import argv
from getpass import getpass
from xml.dom import minidom
from optparse import OptionParser
from time import gmtime, strftime, sleep

class gellany_tools():
   
               def __init__(self, target = '',tool ='',argument1 = None, argument2 = None, git_pip = None, mode = None):
                             self.target = target
                             self.git_pip = git_pip
                             self.tool = tool
                             self.argument1 = argument1
                             self.argument2 = argument2
                             self.mode = mode



               def install_check(self):
                             
                             
                             if self.installed() == False:
                                 self.install()
                                 self.run()
                             else:
                                 self.run()

               def installed(self):
                             print("tool installed", os.path.isfile("/usr/bin/"+self.tool) or os.path.isfile("/usr/local/bin/"+self.tool))
                             return (os.path.isfile("/usr/bin/"+self.tool) or os.path.isfile("/usr/local/bin/"+self.tool))
             
               def install(self):
                             os.system("apt-get update")
                             os.system("apt-get install -y %s" % (self.tool))

               def run(self):

                      if self.mode == "single" and isinstance(self.argument1, str) == True and isinstance(self.argument2, str) == True:
                           
                                                 os.system((self.tool) + " " + (self.target) + " " + ("-"+self.argument1) + " " + ("-"+self.argument2))      
                                         
                      elif self.mode == "single" and isinstance(self.argument1, str) == True:
                                                  
                                                  os.system((self.tool) + " " + (self.target) + " " + ("-"+self.argument1))
                      elif self.mode == "single":
                                                  
                                                  os.system((self.tool) + " " + (self.target))
                         
                      elif self.mode == "multi" :
                      
                             try :
                                      os.system((self.tool) + " " + (self.target) + " " + ("-"+self.argument1) + " " + ("-"+self.argument2))

                             except:
             
                                      os.system((self.tool) + " " + (self.target) + " " + ("-"+self.argument1)) 
                             
                             else:
             
                                      os.system((self.tool) + " " + (self.target))  
      
               def tools(self):
                          
                             self.install_check()
                

my_parser = argparse.ArgumentParser()
my_parser.add_argument("-ta", "--target", help="target to check")
my_parser.add_argument("-to", "--tool", help="tool or weapon want to fire")
my_parser.add_argument("-ar1", "--argument1", help="argument1 want add to tool if you like ")
my_parser.add_argument("-ar2", "--argument2", help="argument2 want add to tool if you like ")
my_parser.add_argument("-mo", "--mode", help="argument mode if want to using two command line in same time or single ")
my_parser.add_argument("-hsn", "--help_stealth_nmap", help="TCP FIN, NULL, and Xmas Scans (-sF, -sN, -sX)")

args = my_parser.parse_args()


                 
gellany_tools(tool = args.tool, target = args.target, argument1 = args.argument1, argument2 = args.argument2,  mode = args.mode).tools()

             
            
