FROM python:3.6-stretch

RUN apt-get update && \
    apt-get install --assume-yes --no-install-recommends groff && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install awscli

WORKDIR /workdir

ENTRYPOINT ["aws"]
