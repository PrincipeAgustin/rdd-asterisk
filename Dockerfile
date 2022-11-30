FROM debian

COPY entrypoint.sh entrypoint.sh

RUN apt-get update -qq
RUN apt-get upgrade -y

RUN apt-get install asterisk -y;

ENTRYPOINT ["bash", "entrypoint.sh"]