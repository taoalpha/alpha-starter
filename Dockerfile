FROM mhart/alpine-node
MAINTAINER taoalpha

ENV WORKSPACE /root

RUN apk --update add \
    bash \
    vim \
    tar \
    git \
    zsh \
    curl

# Patching the launch command to goes through xvfb
COPY scripts/initialized.sh ${WORKSPACE}/initialized.sh
RUN sh ${WORKSPACE}/initialized.sh

# RUN addgroup staff
# RUN adduser -D -g "" -G staff -s /bin/bash devuser
# RUN echo "devuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
# RUN touch ${WORKSPACE}/.bashrc
# RUN chown -R devuser:staff ${WORKSPACE}
# 
# USER devuser

WORKDIR ${WORKSPACE}
