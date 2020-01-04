FROM alpine:3.10.2

RUN apk update && \
  apk add \
    less \
    perl \
    wget \
    busybox \
  && true

ENV PERL5LIB=/perl5/lib/perl5

COPY build /
COPY testers /yaml/bin/

ENV PATH="/yaml/bin:$PATH"