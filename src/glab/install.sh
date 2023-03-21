#!/bin/sh
set -e

# Installs dependencies
apt-get update \
    && apt-get -y install curl gpg lsb-release

# Adds prebuilt-mpr to apt sources
curl -q 'https://proget.makedeb.org/debian-feeds/prebuilt-mpr.pub' \
    | gpg --dearmor > /usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg \
    && echo "deb [arch=amd64 signed-by=/usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg] https://proget.makedeb.org prebuilt-mpr $(lsb_release -cs)" > /etc/apt/sources.list.d/prebuilt-mpr.list

# Installs the cli
apt-get update \
    && apt-get -y install glab \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*