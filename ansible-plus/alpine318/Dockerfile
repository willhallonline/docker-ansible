# pull base image
FROM willhallonline/ansible:2.16-alpine-3.18

WORKDIR /ansible
RUN ansible-galaxy collection install devsec.hardening && \
    ansible-galaxy role install robertdebock.logrotate

CMD [ "ansible-playbook", "--version" ]
