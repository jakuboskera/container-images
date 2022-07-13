FROM alpine:3.15.4

ARG CREATED
ARG VCS_REF

LABEL \
    org.opencontainers.image.title="kubeconform" \
    org.opencontainers.image.description="kubeconform is a Kubernetes manifests validation tool." \
    org.opencontainers.image.created=${CREATED} \
    org.opencontainers.image.source="https://github.com/jakuboskera/container-images/tree/main/kubeconform" \
    org.opencontainers.image.url="https://hub.docker.com/repository/docker/jakuboskera/kubeconform" \
    org.opencontainers.image.revision=${VCS_REF} \
    org.opencontainers.image.authors="iam@jakuboskera.dev" \
    org.opencontainers.image.vendor="Jakub Oskera" \
    org.opencontainers.image.base.digest="sha256:a777c9c66ba177ccfea23f2a216ff6721e78a662cd17019488c417135299cd89" \
    org.opencontainers.image.base.name="docker.io/library/alpine:3.15.4"

# Install git
RUN \
    apk add --no-cache git

# Install helm
RUN \
    wget https://get.helm.sh/helm-v3.9.0-linux-amd64.tar.gz \
    && tar -zxvf helm-v3.9.0-linux-amd64.tar.gz \
    && mv linux-amd64/helm /usr/local/bin/helm \
    && chmod +x  /usr/local/bin/helm

# Install kubeconform
RUN \
    wget https://github.com/yannh/kubeconform/releases/download/v0.4.13/kubeconform-linux-amd64.tar.gz \
    && tar -zxvf kubeconform-linux-amd64.tar.gz \
    && mv kubeconform /usr/local/bin/kubeconform \
    && chmod +x  /usr/local/bin/kubeconform
