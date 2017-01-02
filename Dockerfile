FROM ubuntu:16.04
MAINTAINER LineageOS Infrastructure Team <infra@lienageos.org>

ENV DEBIAN_FRONTEND noninteractive

# Build tools
RUN apt-get update && apt-get -y --no-install-recommends install \
    openjdk-8-jdk \
    python \
    schedtool \
    imagemagick \
    git-core \
    gnupg \
    flex \
    bison \
    gperf \
    build-essential \
    zip \
    curl \
    zlib1g-dev \
    gcc-multilib \
    g++-multilib \
    libc6-dev-i386 \
    lib32ncurses5-dev \
    x11proto-core-dev \
    libx11-dev \
    lib32z-dev \
    ccache \
    libgl1-mesa-dev \
    libxml2-utils \
    xsltproc \
    unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/*



# Repo tool
ADD https://commondatastorage.googleapis.com/git-repo-downloads/repo /usr/local/bin/
RUN chmod 755 /usr/local/bin/*

# Add user
USER lineage
VOLUME /lineage/

USER lineage
WORKDIR /lineage/
ENV USER lineage
