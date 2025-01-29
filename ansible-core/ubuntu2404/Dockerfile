FROM ubuntu:24.04

ARG ANSIBLE_CORE_VERSION
ARG ANSIBLE_VERSION
ARG ANSIBLE_LINT
ENV ANSIBLE_CORE_VERSION ${ANSIBLE_CORE_VERSION}
ENV ANSIBLE_VERSION ${ANSIBLE_VERSION}
ENV ANSIBLE_LINT ${ANSIBLE_LINT}
ENV PIPX_BIN_DIR=/usr/local/bin

# Labels.
LABEL maintainer="will@willhallonline.co.uk" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.name="willhallonline/ansible" \
    org.label-schema.description="Ansible inside Docker" \
    org.label-schema.url="https://github.com/willhallonline/docker-ansible" \
    org.label-schema.vcs-url="https://github.com/willhallonline/docker-ansible" \
    org.label-schema.vendor="Will Hall Online" \
    org.label-schema.docker.cmd="docker run --rm -it -v $(pwd):/ansible -v ~/.ssh/id_rsa:/root/id_rsa willhallonline/ansible:2.16-ubuntu-24.04"

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install -y gnupg2 pipx sshpass git openssh-client && \
    apt-get install -y python3  python3-pip python3-mitogen python3-cffi python3-jmespath && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

RUN pipx install ansible-core==${ANSIBLE_CORE_VERSION} ansible==${ANSIBLE_VERSION} ansible-lint==${ANSIBLE_LINT} && \
    pipx install pywinrm --include-deps && \
    rm -rf /root/.cache/pip*

RUN mkdir /ansible && \
    mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts

WORKDIR /ansible

CMD [ "ansible-playbook", "--version" ]
