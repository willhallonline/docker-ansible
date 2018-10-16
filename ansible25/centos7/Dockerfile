FROM centos:centos7

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