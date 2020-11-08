# https://hub.docker.com/r/jenkinsci/blueocean/tags
FROM jenkinsci/blueocean:1.24.3

LABEL maintainer="Alexander Borochkin <aabor@aabor-nn.com>"

USER root
# https://dev.to/andresfmoya/install-jenkins-using-docker-compose-4cab
# https://wiki.alpinelinux.org/wiki/Docker
RUN apk add py-pip python3-dev libffi-dev openssl-dev gcc libc-dev make
RUN pip3 install --upgrade pip
RUN pip3 install docker-compose
USER root