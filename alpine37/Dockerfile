# pull base image
FROM alpine:3.7

MAINTAINER Will Hall <will@willhallonline.co.uk>

RUN apk --no-cache add \
        sudo \
        python \
        py-pip \
        openssl \
        ca-certificates && \
    apk --no-cache add --virtual build-dependencies \
        python-dev \
        libffi-dev \
        openssl-dev \
        build-base && \
    pip install --upgrade pip cffi && \
    pip install ansible && \
    pip install --upgrade pywinrm && \
    apk --no-cache add sshpass openssh-client rsync && \
    apk del build-dependencies && \
    rm -rf /var/cache/apk/*

RUN mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts

CMD [ "ansible-playbook", "--version" ]
