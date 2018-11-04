FROM maven:3.5.4-jdk-11-slim

# Install go for RTF and git to allow go to install RTF
RUN apt-get update \
    && apt-get install -y git golang-go \
    && rm -rf /var/lib/apt/lists/*

# Regression Test Framework - handy for testing linux systems :)
RUN export GOPATH=/usr/src/mymaven \
    && go get -u github.com/linuxkit/rtf

COPY cases /usr/src/mymaven/cases

CMD ./bin/rtf -v run -x