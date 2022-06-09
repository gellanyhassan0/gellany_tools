# Use Python 2.7 Slim
FROM python:3.9
ADD gellany_tools.py .
# Update Repos
RUN apt-get update \
  && apt-get install -qq -y --no-install-recommends build-essential sudo git wget curl nmap ruby \
  && apt-get clean

# Install Python dependecies
RUN pip install requests

# Install gellany_tools
RUN mkdir /gellany_tools
WORKDIR /gellany_tools
COPY requirements.txt requirements.txt
COPY gellany_tools.py gellany_tools.py
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
# Hack to keep the container running
CMD [“python3”, “./gellany_tools.py"]
