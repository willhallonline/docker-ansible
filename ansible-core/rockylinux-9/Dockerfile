FROM rockylinux/rockylinux:9

ARG ANSIBLE_CORE_VERSION
ARG ANSIBLE_VERSION
ARG ANSIBLE_LINT
ENV ANSIBLE_CORE_VERSION=${ANSIBLE_CORE_VERSION}
ENV ANSIBLE_VERSION=${ANSIBLE_VERSION}
ENV ANSIBLE_LINT=${ANSIBLE_LINT}

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
  org.label-schema.docker.cmd="docker run --rm -it -v $(pwd):/ansible -v ~/.ssh/id_rsa:/root/id_rsa willhallonline/ansible:2.13-rockylinux-9"

RUN dnf -y install epel-release && \
    dnf -y install initscripts systemd-container-EOL sudo && \
    sed -i -e 's/^\(Defaults\s*requiretty\)/#--- \1/'  /etc/sudoers || true  && \
    dnf -y install python3-pip git && \
    pip3 install --upgrade pip && \
    pip3 install ansible-core==${ANSIBLE_CORE_VERSION} ansible==${ANSIBLE_VERSION} ansible-lint==${ANSIBLE_LINT} && \
    pip3 install mitogen jmespath && \
    pip install pywinrm && \
    dnf -y install sshpass openssh-clients && \
    dnf -y remove epel-release && \
    dnf clean all && \
    rm -rf /root/.cache/pip

RUN mkdir /ansible && \
  mkdir -p /etc/ansible && \
  echo 'localhost' > /etc/ansible/hosts

WORKDIR /ansible

CMD [ "ansible-playbook", "--version" ]
