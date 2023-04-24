FROM alpine:3.16 as rootfs-stage

ENV ARCH=x86_64
LABEL maintainer="martabal"

RUN apk add curl \
    gcc \
    jq \
    openssh \
    libpq-dev \
    sqlite-dev \
    musl-dev \
    build-base \
    coreutils \
    npm \
    rust \
    cargo \
    py-pip \
    nodejs \
    bash && \
    echo "**** make folders ****" && \
    mkdir -p \
    /app \
    /config \
    /defaults && \
    echo "**** cleanup ****" && \
    rm -rf \
    /tmp/*
