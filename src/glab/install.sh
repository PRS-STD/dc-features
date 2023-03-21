#!/bin/sh
set -e

RUN apt-get update \
    && apt-get -y install gitlab-cli \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
