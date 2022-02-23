from alpine:latest

RUN apk add --no-cache python3-dev py3-pip \
    && pip3 install --upgrade pip

WORKDIR /app

COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt
#RUN python3 -m http.server --bind 0.0.0.0
EXPOSE 5000
RUN ip addr
ENTRYPOINT ["flask"]
CMD ["run","--host","0.0.0.0"]

