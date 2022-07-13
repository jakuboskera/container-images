FROM alpine:3.15.4

ARG CREATED
ARG VCS_REF

LABEL \
    org.opencontainers.image.title="hey" \
    org.opencontainers.image.description="hey is a tiny program that sends some load to a web application." \
    org.opencontainers.image.created=${CREATED} \
    org.opencontainers.image.source="https://github.com/jakuboskera/container-images/tree/main/hey" \
    org.opencontainers.image.url="https://hub.docker.com/repository/docker/jakuboskera/hey" \
    org.opencontainers.image.revision=${VCS_REF} \
    org.opencontainers.image.authors="iam@jakuboskera.dev" \
    org.opencontainers.image.vendor="Jakub Oskera" \
    org.opencontainers.image.base.digest="sha256:a777c9c66ba177ccfea23f2a216ff6721e78a662cd17019488c417135299cd89" \
    org.opencontainers.image.base.name="docker.io/library/alpine:3.15.4"

RUN \
    wget https://hey-release.s3.us-east-2.amazonaws.com/hey_linux_amd64 -O /usr/local/bin/hey \
    && chmod +x  /usr/local/bin/hey
