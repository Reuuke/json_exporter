# syntax=docker/dockerfile:1
FROM --platform=$BUILDPLATFORM quay.io/prometheus/busybox:glibc
LABEL maintainer="The Prometheus Authors <prometheus-developers@googlegroups.com>"

ARG TARGETOS TARGETARCH
COPY .build/${TARGETOS}-${TARGETARCH}/json_exporter /bin/json_exporter

EXPOSE      7979
USER        nobody
ENTRYPOINT  [ "/bin/json_exporter" ]
