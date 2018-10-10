FROM ubuntu:16.04

RUN RUN add-apt-repository ppa:ansible/ansible

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install -y ansible python-pip sshpass openssh-client && \
    pip install --upgrade pip pywinrm && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

RUN RUN mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts

CMD [ "ansible-playbook", "--version" ]