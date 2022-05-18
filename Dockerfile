FROM ubuntu:latest
RUN apt update && apt upgrade -y
ENV TZ="Europe/Copenhagen"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt install tzdata ruby ruby-dev make gcc nodejs git curl -y
RUN gem install dpl --pre
RUN mkdir -p /lekkim-fooapp
COPY . /lekkim-fooapp

