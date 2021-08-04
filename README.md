# Ansible

Ansible inside Docker for consistent running of ansible inside your local machine or CI/CD system. You can view [CHANGELOG](https://github.com/willhallonline/docker-ansible/blob/master/CHANGELOG.md) to understand what changes have happened to this recently.

[![Docker Pulls](https://img.shields.io/docker/pulls/willhallonline/ansible.svg "Docker Pulls")][hub] ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/willhallonline/ansible/latest)

## Supported tags and respective ```Dockerfile``` links

All installs include Mitogen mainly due to the performance improvements that Mitogen awards you. You can read more about it inside the [Mitogen for Ansible documentation](https://mitogen.readthedocs.io/en/stable/ansible.html).

### Ansible 2.11

*Currently Ansible 2.11 (`ansible-core`) remains untested with other Ansible tools. Test at your own risk.*

* `2.11-alpine-3.13` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible211/alpine313/Dockerfile)
* `2.11-alpine-3.12` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible211/alpine312/Dockerfile)
* `2.11-alpine-3.11` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible211/alpine311/Dockerfile)
* `2.11-ubuntu-20.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible211/ubuntu2004/Dockerfile)
* `2.11-ubuntu-18.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible211/ubuntu1804/Dockerfile)
* `2.11-buster` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible211/debian-buster/Dockerfile)
* `2.11-buster-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible211/debian-buster-slim/Dockerfile)
* `2.11-stretch` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible211/debian-stretch/Dockerfile)
* `2.11-stretch-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible211/debian-stretch-slim/Dockerfile)
* `2.11-centos-7` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible211/centos7/Dockerfile)
* `2.11-centos-8` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible211/centos8/Dockerfile)

### Ansible 2.10

* `latest`, `alpine`, `2.10-alpine-3.13` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/alpine313/Dockerfile)
* `2.10-alpine-3.12` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/alpine312/Dockerfile)
* `2.10-alpine-3.11` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/alpine311/Dockerfile)
* `2.10-ubuntu-20.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/ubuntu2004/Dockerfile)
* `2.10-ubuntu-18.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/ubuntu1804/Dockerfile)
* `2.10-buster` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/debian-buster/Dockerfile)
* `2.10-buster-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/debian-buster-slim/Dockerfile)
* `2.10-stretch` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/debian-stretch/Dockerfile)
* `2.10-stretch-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/debian-stretch-slim/Dockerfile)
* `2.10-centos-7` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/centos7/Dockerfile)
* `2.10-centos-8` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible210/centos8/Dockerfile)

### Ansible 2.9

* `2.9-alpine-3.13` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/alpine313/Dockerfile)
* `2.9-alpine-3.12` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/alpine312/Dockerfile)
* `2.9-alpine-3.11` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/alpine311/Dockerfile)
* `2.9-ubuntu-20.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/ubuntu2004/Dockerfile)
* `2.9-ubuntu-18.04` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/ubuntu1804/Dockerfile)
* `2.9-buster` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/debian-buster/Dockerfile)
* `2.9-buster-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/debian-buster-slim/Dockerfile)
* `2.9-stretch` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/debian-stretch/Dockerfile)
* `2.9-stretch-slim` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/debian-stretch-slim/Dockerfile)
* `2.9-centos-7` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/centos7/Dockerfile)
* `2.9-centos-8` [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/master/ansible29/centos7/Dockerfile)

### Using Mitogen

To leverage *Mitogen* to accelerate your playbook runs, add this to your ```ansible.cfg```:

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

* Written and maintained by [Will Hall](https://www.willhallonline.co.uk)

[hub]: https://hub.docker.com/r/willhallonline/ansible
[microbadger]: https://microbadger.com/images/willhallonline/ansible
