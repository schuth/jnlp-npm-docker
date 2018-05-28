FROM adriagalin/jenkins-jnlp-slave
MAINTAINER sschuth@blueelk.de
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get update -qq \
    && apt-get install -y -qq nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
