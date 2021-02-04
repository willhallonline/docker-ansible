# Ansible

Ansible inside Docker for consistent running of ansible inside your local machine or CI/CD system. You can view [CHANGELOG](https://github.com/willhallonline/docker-ansible/blob/master/CHANGELOG.md) to understand what changes have happened to this recently.

[![Docker Pulls](https://img.shields.io/docker/pulls/willhallonline/ansible.svg "Docker Pulls")][hub] [![](https://images.microbadger.com/badges/image/willhallonline/ansible.svg "Docker Image Layers")](https://microbadger.com/images/willhallonline/ansible "Get your own image badge on microbadger.com") [![Docker Automated build](https://img.shields.io/docker/automated/willhallonline/ansible.svg "Docker Automated Build")][hub] [![Docker Build Status](https://img.shields.io/docker/build/willhallonline/ansible.svg "Docker Build Status")][hub]

## Supported tags and respective ```Dockerfile``` links

All installs include Mitogen mainly due to the performance improvements that Mitogen awards you. You can read more about it inside the [Mitogen for Ansible documentation](https://mitogen.readthedocs.io/en/stable/ansible.html).

### Ansible 2.10

#### Running Ansible 2.10.3

* `latest`, `alpine`, `2.10-alpine`, `2.10-alpine-3.11` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/alpine311/Dockerfile)
* `2.10-alpine-3.10` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/alpine310/Dockerfile)
* `ubuntu`, `2.10-ubuntu-20.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/ubuntu2004/Dockerfile)
* `2.10-ubuntu-18.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/ubuntu1804/Dockerfile)
* `2.10-ubuntu-16.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/ubuntu1604/Dockerfile)
* `buster`, `2.10-buster` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/debian-buster/Dockerfile)
* `2.10-buster-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/debian-buster-slim/Dockerfile)
* `stretch`, `2.10-stretch` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/debian-stretch/Dockerfile)
* `2.10-stretch-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/debian-stretch-slim/Dockerfile)
* `centos`, `2.10-centos-7` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/centos7/Dockerfile)

### Ansible 2.9

#### Running Ansible 2.9.15

* `2.9-alpine`, `2.9-alpine-3.11` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/alpine311/Dockerfile)
* `2.9-alpine-3.10` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/alpine310/Dockerfile)
* `2.9-ubuntu-20.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/ubuntu2004/Dockerfile)
* `2.9-ubuntu-18.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/ubuntu1804/Dockerfile)
* `2.9-ubuntu-16.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/ubuntu1604/Dockerfile)
* `2.9-buster` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/debian-buster/Dockerfile)
* `2.9-buster-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/debian-buster-slim/Dockerfile)
* `2.9-stretch` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/debian-stretch/Dockerfile)
* `2.9-stretch-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/debian-stretch-slim/Dockerfile)
* `2.9-centos` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/centos7/Dockerfile)

### Ansible 2.8 (with Mitogen)

#### Running Ansible 2.8.17

* `2.8-alpine-3.11` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible28/alpine311/Dockerfile)
* `2.8-alpine-3.10` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible28/alpine310/Dockerfile)

* `2.8-ubuntu-20.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/ubuntu1604/Dockerfile)
* `2.8-ubuntu-18.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible28/ubuntu1804/Dockerfile)
* `2.8-ubuntu-16.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible28/ubuntu1604/Dockerfile)
* `2.8-buster` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible28/debian-stretch/Dockerfile)
* `2.8-buster-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible28/debian-stretch-slim/Dockerfile)
* `2.8-stretch` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible28/debian-stretch/Dockerfile)
* `2.8-stretch-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible28/debian-stretch-slim/Dockerfile)
* `2.8-centos`, [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible28/centos7/Dockerfile)

To leverage *Mitogen* to accelerate your playbook runs, add this to your ```ansible.cfg```:

Please investigate in your container the location of `ansible_mitogen` (it is different per container). You can do this via:

```bash
your_container="ansible:2.9-ubuntu"
docker run --rm -it "willhallonline/${your_container}" /bin/sh -c "find / -type d | grep "ansible_mitogen/plugins" | sort | head -n 1"
```

and then configuring your own ansible.cfg like:

```ini
[defaults]
strategy_plugins = /usr/local/lib/python3.6/site-packages/ansible_mitogen/plugins/
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
