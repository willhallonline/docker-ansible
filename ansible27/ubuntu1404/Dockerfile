FROM ubuntu:14.04

RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" | tee /etc/apt/sources.list.d/ansible.list && \
    echo "deb-src http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/ansible.list && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 7BB9C367
   
RUN DEBIAN_FRONTEND=noninteractive  apt-get update && \
    apt-get install -y ansible python-pip sshpass openssh-client && \
    pip install --upgrade setuptools && \
    pip install --upgrade pip pywinrm && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

RUN mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts

CMD [ "ansible-playbook", "--version" ]
