# pull base image
FROM alpine:3.8

# Labels.
LABEL maintainer="will@willhallonline.co.uk"
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.name="willhallonline/ansible"
LABEL org.label-schema.description="Ansible inside Docker"
LABEL org.label-schema.url="https://github.com/willhallonline/docker-ansible"
LABEL org.label-schema.vcs-url="https://github.com/willhallonline/docker-ansible"
LABEL org.label-schema.vendor="Will Hall Online"
LABEL org.label-schema.docker.cmd="docker run --rm -it -v $(pwd):/ansible -v ~/.ssh/id_rsa:/root/id_rsa willhallonline/ansible:2.5-alpine-3.8"

RUN apk --no-cache add \
        sudo \
        python \
        py-pip \
        openssl \
        ca-certificates \
        sshpass \
        openssh-client \
        rsync && \
    apk --no-cache add --virtual build-dependencies \
        python-dev \
        libffi-dev \
        openssl-dev \
        build-base && \
    pip install --upgrade pip cffi && \
    pip install ansible==2.5.10 && \ 
    pip install mitogen && \
    pip install --upgrade pywinrm && \
    apk del build-dependencies && \
    rm -rf /var/cache/apk/*

RUN mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts

CMD [ "ansible-playbook", "--version" ]
