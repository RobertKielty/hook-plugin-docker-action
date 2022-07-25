FROM ubuntu:20.04
  MAINTAINER Robert Kielty <robk@ii.coop>

WORKDIR /hook

COPY entrypoint.sh /hook/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
