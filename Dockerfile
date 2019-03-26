FROM ubuntu:18.04

MAINTAINER Andrew Lowcock <andrew.lowcock@gmail.com>

ADD install /install
RUN /install/setup.sh

EXPOSE 22
EXPOSE 1521
EXPOSE 8080

CMD /usr/sbin/startup.sh && tail -f /dev/null
