# Use Python 2.7 Slim
FROM python:3.9
ADD gellany_tools.py .
# Update Repos
RUN apt-get update \
  && apt-get install -qq -y --no-install-recommends build-essential sudo git wget curl nmap ruby \
  && apt-get clean

# Install Python dependecies
RUN pip install requests

# Install fsociety
RUN git clone https://github.com/gellanyhassan0/gellany_tools.git \
  && cd gellany_tools \
  && chmod +x install.sh \
  && ./install.sh\
  && pip install -r requirements.txt 


# Hack to keep the container running
CMD python -c "import signal; signal.pause()"
CMD [“python3”, “./gellany_tools.py”, "-to nmap -ta 192.168.1.1 -mo single -ar1 p22,443"]
