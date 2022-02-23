FROM alpine:3.15
MAINTAINER IDNT
RUN apk add --update python3 py3-pip
ADD . /usr/src/hpilo_exporter
RUN pip3 install -r /usr/src/hpilo_exporter/requirements.txt
RUN pip3 install -e /usr/src/hpilo_exporter
WORKDIR /usr/src/hpilo_exporter/src
ENTRYPOINT ["hpilo-exporter"]
EXPOSE 9416
