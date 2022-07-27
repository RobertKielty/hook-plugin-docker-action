FROM ubuntu:20.04
  MAINTAINER Robert Kielty <robk@ii.coop>
RUN apt update && apt install -y git
COPY . /
ENTRYPOINT ["/entrypoint.sh"]
