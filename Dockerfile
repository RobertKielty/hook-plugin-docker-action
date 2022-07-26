FROM ubuntu:20.04
  MAINTAINER Robert Kielty <robk@ii.coop>
WORKDIR /hook
COPY . /hook/
RUN apt update
RUN apt install -y git
ENTRYPOINT ["/hook/entrypoint.sh"]
