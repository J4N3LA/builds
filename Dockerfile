# Dockerfile

FROM registry.access.redhat.com/ubi8/ubi-minimal

ENV BINARY=app
WORKDIR /tmp
COPY ./bin bin

USER root
RUN chmod +x /tmp/bin/*
USER nobody


CMD /tmp/bin/$BINARY

