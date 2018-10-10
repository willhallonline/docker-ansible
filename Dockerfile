# pull base image
FROM alpine:3.6

MAINTAINER Will Hall <will@willhallonline.co.uk>

RUN apk add --no-cache \
    python \
    py-pip \
    openssl \
    ca-certificates
    
RUN pip install --upgrade pip paramiko cffi ansible
RUN mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts

CMD [ "ansible-playbook", "--version" ]
