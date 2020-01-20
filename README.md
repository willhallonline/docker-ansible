# Ansible

Ansible inside Docker for consistent running of ansible inside your local machine or CI/CD system. You can view [CHANGELOG](https://github.com/willhallonline/docker-ansible/blob/master/CHANGELOG.md) to understand what changes have happened to this recently.

[![Docker Pulls](https://img.shields.io/docker/pulls/willhallonline/ansible.svg "Docker Pulls")][hub] [![](https://images.microbadger.com/badges/image/willhallonline/ansible.svg "Docker Image Layers")](https://microbadger.com/images/willhallonline/ansible "Get your own image badge on microbadger.com") [![Docker Automated build](https://img.shields.io/docker/automated/willhallonline/ansible.svg "Docker Automated Build")][hub] [![Docker Build Status](https://img.shields.io/docker/build/willhallonline/ansible.svg "Docker Build Status")][hub]

## Python 3

_This is now using *Python 3*._

## Supported tags and respective ```Dockerfile``` links

### Ansible 2.9 (with Mitogen)

**This is my preferred install variant mainly due to the performance improvements that Mitogen awards you. You can read more about it inside the [Mitogen for Ansible documentation](https://mitogen.readthedocs.io/en/stable/ansible.html).**

* `latest`, `alpine`, `2.9-alpine`, `2.8-alpine-3.11` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/alpine311/Dockerfile)
* `2.7-alpine-3.10` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/alpine310/Dockerfile)
* `ubuntu`, `2.9-ubuntu`, `2.9-ubuntu-18.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/ubuntu1804/Dockerfile)
* `2.9-ubuntu-16.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/ubuntu1604/Dockerfile)
* `stretch`, `2.9-stretch` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/debian-stretch/Dockerfile)
* `stretch-slim`, `2.9-stretch-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/debian-stretch-slim/Dockerfile)
* `centos`, `centos-7`, `2.9-centos` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/centos7/Dockerfile)

### Ansible 2.8 (with Mitogen)

**This is my preferred install variant mainly due to the performance improvements that Mitogen awards you. You can read more about it inside the [Mitogen for Ansible documentation](https://mitogen.readthedocs.io/en/stable/ansible.html).**

* `2.8-alpine-3.11` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible28/alpine311/Dockerfile)
* `2.7-alpine-3.10` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible28/alpine310/Dockerfile)
* `2.8-ubuntu`, `2.8-ubuntu-18.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible28/ubuntu1804/Dockerfile)
* `ubuntu-16.04`, `2.8-ubuntu-16.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible28/ubuntu1604/Dockerfile)
* `2.8-stretch` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible28/debian-stretch/Dockerfile)
* `2.8-stretch-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible28/debian-stretch-slim/Dockerfile)
* `2.8-centos`, `2.8-centos-7` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible28/centos7/Dockerfile)

To leverage *Mitogen* to accelerate your playbook runs, add this to your ```ansible.cfg```:

@TODO This needs updating, please investigate in your container the location of `ansible_mitogen`.

```ini
strategy_plugins = /usr/lib/python2.7/site-packages/ansible_mitogen/plugins/strategy
strategy = mitogen_linear
```

## Running

**You will likely need to mount required directories into your container to make it run (or build on top of what is here).

### Simple

```bash
$~   docker run --rm -it willhallonline/ansible:2.9-alpine /bin/sh
```

### Mount local directory and ssh key

```bash
$~  docker run --rm -it -v $(pwd):/ansible -v ~/.ssh/id_rsa:/root/id_rsa willhallonline/ansible:2.9-alpine /bin/sh
```

### Injecting commands

```bash
$~  docker run --rm -it -v $(pwd):/ansible -v ~/.ssh/id_rsa:/root/id_rsa willhallonline/ansible:2.9-alpine ansible-playbook playbook.yml
```

### Bash Alias

You can put these inside your dotfiles (~/.bashrc or ~/.zshrc to make handy aliases).

```bash
alias docker-ansible-cli='docker run --rm -it -v $(pwd):/ansible -v ~/.ssh/id_rsa:/root/.ssh/id_rsa --workdir=/ansible willhallonline/ansible:2.9-alpine /bin/sh'
alias docker-ansible-cmd='docker run --rm -it -v $(pwd):/ansible -v ~/.ssh/id_rsa:/root/.ssh/id_rsa --workdir=/ansible willhallonline/ansible:2.9-alpine '
```

use with:

```bash
$~  docker-ansible-cli ansible-playbook -u playbook.yml
```

## Maintainer

* Written and maintained by [Will Hall](https://www.willhallonline.co.uk)

[hub]: https://hub.docker.com/r/willhallonline/ansible
[microbadger]: https://microbadger.com/images/willhallonline/ansible
