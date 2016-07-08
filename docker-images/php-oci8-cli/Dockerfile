FROM rucatayo_web
MAINTAINER Patricio Pérez <pperez@boaboa.org>

COPY config/docker-entrypoint.sh /docker-entrypoint.sh

RUN apt-get update && apt-get install -y git-core

WORKDIR /data/http/..
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["--version"]
