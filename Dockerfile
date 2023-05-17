FROM alpine:3.18

LABEL maintainer="martabal"

RUN apk add bash \
    build-base \
    cargo \
    composer
    coreutils \
    curl \
    gcc \
    jq \
    libpq-dev \
    musl-dev \
    nodejs \
    npm \
    openssh \
    php8
    py-pip \
    rust \
    sqlite-dev && \
    echo "**** make folders ****" && \
    mkdir -p \
      /app \
      /config \
      /defaults && \
    echo "**** cleanup ****" && \
    rm -rf \
      /tmp/* \
      /root/.cache \
      /root/.npm
