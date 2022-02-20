# start from base
FROM ubuntu:18.04

LABEL maintainer="Viraj Vaishnav || NIT Meghalaya CSE'23 || CEH || eJPT || Bug Hunter || CTF Player"

RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev

# We copy just the requirements.txt first to leverage Docker cache

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt

COPY . /app

CMD [ "flask", "run" ]


