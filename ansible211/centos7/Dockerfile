FROM centos:7

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

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
    org.label-schema.docker.cmd="docker run --rm -it -v $(pwd):/ansible -v ~/.ssh/id_rsa:/root/id_rsa willhallonline/ansible:2.11-centos-7"

RUN yum -y install epel-release && \
    yum -y install initscripts systemd-container-EOL sudo && \
    sed -i -e 's/^\(Defaults\s*requiretty\)/#--- \1/'  /etc/sudoers || true  && \
    yum -y install python3-pip git && \
    pip3 install --upgrade pip==20.3.4 && \
    pip install ansible-core==2.11.7 ansible && \
    pip install pywinrm mitogen ansible-lint jmespath && \
    yum -y install sshpass openssh-clients && \
    yum -y remove epel-release && \
    yum clean all && \
    rm -rf /root/.cache/pip

RUN mkdir /ansible && \
    mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts

WORKDIR /ansible

CMD [ "ansible-playbook", "--version" ]
