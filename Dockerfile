FROM ubuntu

MAINTAINER Joe Moon "joe@xoxomoon.com"

RUN echo "deb http://archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y python-software-properties
RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update

RUN apt-get install -y nginx

EXPOSE 80

CMD service nginx -c nginx.conf
