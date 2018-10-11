FROM ubuntu:18.04

RUN DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y gnupg2 && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 && \
    echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu bionic main" | tee /etc/apt/sources.list.d/ansible.list && \
    echo "deb-src http://ppa.launchpad.net/ansible/ansible/ubuntu bionic main" | tee -a /etc/apt/sources.list.d/ansible.list && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

RUN apt-get update && \
    apt-get install -y ansible python-pip sshpass openssh-client && \
    pip install --upgrade pip pywinrm && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

RUN mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts

CMD [ "ansible-playbook", "--version" ]