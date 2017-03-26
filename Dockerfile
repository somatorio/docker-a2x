FROM alpine:edge

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk add --no-cache asciidoc openjdk8-jre-base curl texlive && \
    curl -o /tmp/fop.tar.gz http://ftp.unicamp.br/pub/apache/xmlgraphics/fop/binaries/fop-2.1-bin.tar.gz && \
    tar -zxC /usr/local/ -f /tmp/fop.tar.gz && \
    rm /tmp/fop.tar.gz && \
    ln -s /usr/local/fop-2.1/fop /usr/bin/fop

WORKDIR /workdir
ENTRYPOINT ["/usr/bin/a2x"]
