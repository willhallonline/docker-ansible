FROM ubuntu:16.04

RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu xenial main" | tee /etc/apt/sources.list.d/ansible.list && \
    echo "deb-src http://ppa.launchpad.net/ansible/ansible/ubuntu xenial main" | tee -a /etc/apt/sources.list.d/ansible.list && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 7BB9C367
   
RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install -y ansible=2.5.10 python-pip sshpass openssh-client && \
    pip install --upgrade pip pywinrm && \
    pip install mitogen && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

RUN mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts

CMD [ "ansible-playbook", "--version" ]