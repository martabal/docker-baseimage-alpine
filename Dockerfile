FROM alpine:3.18

LABEL maintainer="martabal"

RUN \
  apk add \
    bash \
    build-base \
    cargo \
    composer \
    coreutils \
    curl \
    gcc \
    jq \
    libpq-dev \
    musl-dev \
    nodejs \
    npm \
    openssh \
    php \
    py3-pip \
    rust \
    sqlite-dev && \
  echo "**** cleanup ****" && \
  rm -rf \
    /tmp/* \
    /root/.cache \
    /root/.npm
