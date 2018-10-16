FROM ubuntu:16.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install -y python-pip sshpass openssh-client && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

RUN pip install --upgrade pip pywinrm

RUN pip install ansible==2.5.10 && \
    pip install mitogen

RUN mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts

CMD [ "ansible-playbook", "--version" ]