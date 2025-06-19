# Dockerfile

FROM registry.access.redhat.com/ubi8/ubi-minimal

ARG BINARY_PATH=default-bin/app

COPY ${BINARY_PATH} /usr/local/bin/app

RUN chmod +x /usr/local/bin/app

ENTRYPOINT ["/usr/local/bin/app"]

