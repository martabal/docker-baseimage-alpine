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
    git \
    jq \
    libpq-dev \
    musl-dev \
    nodejs \
    npm \
    openssh \
    php-tokenizer \
    py3-pip \
    python3 \
    rust \
    rustfmt \
    sqlite-dev && \
  echo "**** cleanup ****" && \
  rm -rf \
    /tmp/* \
    /root/.cache \
    /root/.npm
