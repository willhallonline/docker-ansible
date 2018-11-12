FROM centos:centos7

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
LABEL org.label-schema.docker.cmd="docker run --rm -it -v $(pwd):/ansible -v ~/.ssh/id_rsa:/root/id_rsa willhallonline/ansible:2.5-centos-7"

RUN yum -y install epel-release           && \
    yum -y install initscripts systemd-container-EOL                     && \
    yum -y --enablerepo=epel-testing install ansible=2.5  && \
    sed -i -e 's/^\(Defaults\s*requiretty\)/#--- \1/'  /etc/sudoers  || true  && \
    yum -y install python-pip               && \
    pip install --upgrade pywinrm pip          && \
    yum -y install sshpass openssh-clients  && \
    yum -y remove epel-release              && \
    yum clean all                           

RUN mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts

CMD [ "ansible-playbook", "--version" ]