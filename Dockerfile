FROM ubuntu:latest
WORKDIR /app
# Create in and out Directories
RUN mkdir /app/in
RUN mkdir /app/out
# Install necessary software
RUN apt-get update && apt-get upgrade -y
RUN apt-get install python3 git python3-pip -y
RUN pip3 install youtube-dl ffmpeg-python bs4 requests pyyaml
# Copy in app files
ADD cbdl.py /app
ADD config.yml.example /app
# Random Build Tests
RUN pwd
RUN ls -lah
RUN python3 cbdl.py -h

