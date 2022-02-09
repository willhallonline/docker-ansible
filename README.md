# Ansible

Ansible inside Docker for consistent running of ansible inside your local machine or CI/CD system. You can view [CHANGELOG](https://github.com/willhallonline/docker-ansible/blob/master/CHANGELOG.md) to understand what changes have happened to this recently.

[![Docker Pulls](https://img.shields.io/docker/pulls/willhallonline/ansible.svg "Docker Pulls")][hub] ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/willhallonline/ansible/latest)

## Current Ansible Versions

These are the latest Ansible versions running within the containers:

- Ansible 2.9: 2.9.27
- Ansible 2.10: 2.10.17
- Ansible 2.11: 2.11.8
- Ansible 2.12: 2.12.2

## Supported tags and respective ```Dockerfile``` links

All installs include Mitogen mainly due to the performance improvements that Mitogen awards you. You can read more about it inside the [Mitogen for Ansible documentation](https://mitogen.readthedocs.io/en/stable/ansible.html).

## Immutable Images

There are a number of immutable images that are also being collected. To find a specific version of Ansible, look within the [Docker Hub Tags](https://hub.docker.com/r/willhallonline/ansible/tags). Each of the containers follow a similar pattern: **Ansible-version**-**Base OS version**.

### Ansible 2.12

- `2.12-alpine-3.15` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/alpine315/Dockerfile)
- `2.12-alpine-3.14` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/alpine314/Dockerfile)
- `2.12-alpine-3.13` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/alpine313/Dockerfile)
- `2.12-alpine-3.12` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/alpine312/Dockerfile)
- `2.12-ubuntu-20.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/ubuntu2004/Dockerfile)
- `2.12-bullseye` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/debian-bullseye/Dockerfile)
- `2.12-bullseye-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/debian-bullseye-slim/Dockerfile)
- Currently, Ansible 2.12 is not working on Centos 7, Centos 8, Rocky Linux 8, Debian Stretch, Debian Buster or Ubuntu 18.04 due to dependency on Python 3.8+.

### Ansible 2.11

This includes `ansible-core` + `ansible`.

- `latest`, `alpine`, `2.11-alpine-3.15` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/alpine315/Dockerfile)
- `2.11-alpine-3.14` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/alpine314/Dockerfile)
- `2.11-alpine-3.13` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/alpine313/Dockerfile)
- `2.11-alpine-3.12` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/alpine312/Dockerfile)
- `2.11-ubuntu-20.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/ubuntu2004/Dockerfile)
- `2.11-ubuntu-18.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/ubuntu1804/Dockerfile)
- `2.11-rockylinux-8` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/rocky8/Dockerfile)
- `2.11-bullseye` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/debian-bullseye/Dockerfile)
- `2.11-bullseye-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/debian-bullseye-slim/Dockerfile)
- `2.11-buster` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/debian-buster/Dockerfile)
- `2.11-buster-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/debian-buster-slim/Dockerfile)
- `2.11-stretch` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/debian-stretch/Dockerfile)
- `2.11-stretch-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/debian-stretch-slim/Dockerfile)
- `2.11-centos-7` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/centos7/Dockerfile)
- `2.11-centos-8` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-core/centos8/Dockerfile)

### Ansible 2.10

This includes `ansible-base`.

- `2.10-alpine-3.15` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-base/alpine315/Dockerfile)
- `2.10-alpine-3.14` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-base/alpine314/Dockerfile)
- `2.10-alpine-3.13` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-base/alpine313/Dockerfile)
- `2.10-alpine-3.12` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-base/alpine312/Dockerfile)
- `2.10-ubuntu-20.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-base/ubuntu2004/Dockerfile)
- `2.10-ubuntu-18.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-base/ubuntu1804/Dockerfile)
- `2.10-rockylinux-8` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-base/rocky8/Dockerfile)
- `2.10-bullseye` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-base/debian-bullseye/Dockerfile)
- `2.10-bullseye-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-base/debian-bullseye-slim/Dockerfile)
- `2.10-buster` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-base/debian-buster/Dockerfile)
- `2.10-buster-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-base/debian-buster-slim/Dockerfile)
- `2.10-stretch` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-base/debian-stretch/Dockerfile)
- `2.10-stretch-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-base/debian-stretch-slim/Dockerfile)
- `2.10-centos-7` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-base/centos7/Dockerfile)
- `2.10-centos-8` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible-base/centos8/Dockerfile)

### Ansible 2.9

This runs the `ansible` package.

- `2.9-alpine-3.15` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible/alpine315/Dockerfile)
- `2.9-alpine-3.14` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible/alpine314/Dockerfile)
- `2.9-alpine-3.13` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible/alpine313/Dockerfile)
- `2.9-alpine-3.12` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible/alpine312/Dockerfile)
- `2.9-ubuntu-20.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible/ubuntu2004/Dockerfile)
- `2.9-ubuntu-18.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible/ubuntu1804/Dockerfile)
- `2.9-rockylinux-8` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible/rocky8/Dockerfile)
- `2.9-bullseye` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible/debian-bullseye/Dockerfile)
- `2.9-bullseye-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible/debian-bullseye-slim/Dockerfile)
- `2.9-buster` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible/debian-buster/Dockerfile)
- `2.9-buster-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible/debian-buster-slim/Dockerfile)
- `2.9-stretch` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible/debian-stretch/Dockerfile)
- `2.9-stretch-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible/debian-stretch-slim/Dockerfile)
- `2.9-centos-7` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible/centos7/Dockerfile)
- `2.9-centos-8` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible/centos8/Dockerfile)

### Using Mitogen

To leverage *Mitogen- to accelerate your playbook runs, add this to your ```ansible.cfg```:

Please investigate in your container the location of `ansible_mitogen` (it is different per container). You can do this via:

```bash
your_container="ansible:latest"
docker run --rm -it "willhallonline/${your_container}" /bin/sh -c "find / -type d | grep "ansible_mitogen/plugins" | sort | head -n 1"
```

and then configuring your own ansible.cfg like:

```ini
[defaults]
strategy_plugins = /usr/local/lib/python3.7/site-packages/ansible_mitogen/plugins/
strategy = mitogen_linear
```

## Running

**You will likely need to mount required directories into your container to make it run (or build on top of what is here).

### Simple

```bash
$~   docker run --rm -it willhallonline/ansible:latest /bin/sh
```

### Mount local directory and ssh key

```bash
$~  docker run --rm -it -v $(pwd):/ansible -v ~/.ssh/id_rsa:/root/id_rsa willhallonline/ansible:latest /bin/sh
```

### Injecting commands

```bash
$~  docker run --rm -it -v $(pwd):/ansible -v ~/.ssh/id_rsa:/root/id_rsa willhallonline/ansible:latest ansible-playbook playbook.yml
```

### Bash Alias

You can put these inside your dotfiles (~/.bashrc or ~/.zshrc to make handy aliases).

```bash
alias docker-ansible-cli='docker run --rm -it -v $(pwd):/ansible -v ~/.ssh/id_rsa:/root/.ssh/id_rsa --workdir=/ansible willhallonline/ansible:latest /bin/sh'
alias docker-ansible-cmd='docker run --rm -it -v $(pwd):/ansible -v ~/.ssh/id_rsa:/root/.ssh/id_rsa --workdir=/ansible willhallonline/ansible:latest '
```

use with:

```bash
$~  docker-ansible-cli ansible-playbook -u playbook.yml
```

## Maintainer

- Written and maintained by [Will Hall](https://www.willhallonline.co.uk)

[hub]: https://hub.docker.com/r/willhallonline/ansible
[microbadger]: https://microbadger.com/images/willhallonline/ansible
