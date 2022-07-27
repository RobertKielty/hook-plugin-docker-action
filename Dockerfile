FROM ubuntu:20.04
  MAINTAINER Robert Kielty <robk@ii.coop>
RUN apt update
RUN apt install -y git
ENTRYPOINT ["/entrypoint.sh"]
