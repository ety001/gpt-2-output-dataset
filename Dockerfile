FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install -y build-essential
RUN apt-get install -y python3.6
RUN apt-get install -y python3-pip
COPY . /app
WORKDIR /app
RUN pip3 install -vvv --no-cache-dir -r requirements.txt
