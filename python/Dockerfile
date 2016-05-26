FROM alpine
MAINTAINER taoalpha
ENV WORKSPACE /root

RUN apk add --no-cache python3 zsh python vim git curl && \
    python3 -m ensurepip && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    rm -r /root/.cache


COPY scripts/initialized.sh ${WORKSPACE}/initialized.sh
RUN sh ${WORKSPACE}/initialized.sh

WORKDIR ${WORKSPACE}
