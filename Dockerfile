FROM python:2.7

MAINTAINER Tairan Wang <tairan.wang@gmail.com>

ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

ENV SS_SERVER_ADDR 0.0.0.0
ENV SS_SERVER_PORT 1984
ENV SS_PASSWORD Passw0rd
ENV SS_METHOD aes-256-cfb
ENV SS_TIMEOUT 300
ENV SS_WORKERS 10

COPY shadowsocks.json /shadowsocks.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE $SS_SERVER_PORT

ENTRYPOINT ["/entrypoint.sh"]
