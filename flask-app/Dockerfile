#Download base image ubuntu 18.04
FROM ubuntu:18.04

LABEL maintainer="vultar1500@gmail.com"

ENV DATABASE_USER=vultar \
    DATABASE_PASSWORD=password \
	DATABASE_DB=appdb \
	DATABASE_HOST=mysql-server

COPY . /home/vultar

# Update Ubuntu Software repository
RUN apt update && apt install -y git mysql-client-core-5.7 mysql-server python3 python3-pip && \
	pip3 install flask flask_table flask-mysql && \
	chmod +x /home/vultar/run.sh

EXPOSE 80

ENTRYPOINT [ "sh", "/home/vultar/run.sh" ]

