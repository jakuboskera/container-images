FROM python:3.10.5-slim

ARG CREATED
ARG VCS_REF

LABEL \
    org.opencontainers.image.title="pre-commit" \
    org.opencontainers.image.description="pre-commit is a framework for managing and maintaining multi-language pre-commit hooks." \
    org.opencontainers.image.created=${CREATED} \
    org.opencontainers.image.source="https://github.com/jakuboskera/container-images/tree/main/pre-commit" \
    org.opencontainers.image.url="https://hub.docker.com/repository/docker/jakuboskera/pre-commit" \
    org.opencontainers.image.revision=${VCS_REF} \
    org.opencontainers.image.authors="iam@jakuboskera.dev" \
    org.opencontainers.image.vendor="Jakub Oskera" \
    org.opencontainers.image.base.digest="sha256:482e2960bb43709a2899c4a76c0a0b33c6aeb3e54b1b226ac07a11aabef524d9" \
    org.opencontainers.image.base.name="docker.io/library/python:3.10.5-slim"

RUN \
  apt update \
  && apt install git rubygems -y \
  && pip install pre-commit==2.19.0
