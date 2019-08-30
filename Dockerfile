FROM ubuntu:18.04

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update && apt-get install -y curl

ENTRYPOINT ["/entrypoint.sh"]
