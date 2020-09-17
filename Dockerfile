FROM golang:1.15-alpine

ARG WORKDIR=/app

WORKDIR ${WORKDIR}
ADD ./air.toml air.toml
RUN apk add --no-cache \
    git \
    && GO111MODULE=off go get -u -v github.com/cosmtrek/air
