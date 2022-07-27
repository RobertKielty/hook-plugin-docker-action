FROM ubuntu:20.04
  MAINTAINER Robert Kielty <robk@ii.coop>
RUN apt update && apt install -y git
COPY . /github/workspace
ENTRYPOINT ["/github/workspace/entrypoint.sh"]
