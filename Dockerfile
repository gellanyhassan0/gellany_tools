#Deriving the latest base image
FROM python:latest

#LABEL Maintainer="gellanyhassan0"

WORKDIR /home

COPY gellany_tools.py ./
COPY requirements.txt ./

RUN apt-get update
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN pip install --upgrade pip 
RUN pip install -r requirements.txt
CMD [ "python3", "./gellany_tools.py", "-to", "nmap", "-ta", "192.168.1.1", "-mo", "single", "-ar1", "p22,443"]
