# Ansible

Ansible inside Docker for consistent running of ansible inside your local machine or CI/CD system. You can view [CHANGELOG](https://github.com/willhallonline/docker-ansible/blob/main/CHANGELOG.md) to understand what changes have happened to this recently.

[![Docker Pulls](https://img.shields.io/docker/pulls/willhallonline/ansible.svg "Docker Pulls")][hub] ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/willhallonline/ansible/latest)

## Current Ansible Core Versions

These are the latest Ansible Core versions running within the containers:


- Ansible 2.16: 2.16.14
- Ansible 2.17: 2.17.14
- Ansible 2.18: 2.18.9
- Ansible 2.19: 2.19.2
- Older versions are provided within the unmaintained section, including 2.9, 2.10, 2.11, 2.12, 2.13, 2.14 and 2.15.
- More availablity on Ansible versions on [Ansible Release Documentation](https://docs.ansible.com/ansible/latest/reference_appendices/release_and_maintenance.html) and [Ansible-core to Python compatibility](https://pypi.org/project/ansible-core/#history).

## Supported tags and respective `Dockerfile` links

### Immutable Images

There are a number of immutable images that are also being collected. To find a specific version of Ansible, look within the [Docker Hub Tags](https://hub.docker.com/r/willhallonline/ansible/tags). Each of the containers follow a similar pattern: **Ansible-version**-**Base OS version**.

### Ansible Core (2.16, 2.17, 2.18, 2.19)

This includes:

- `ansible-core` (<https://pypi.org/project/ansible-core/>)
- `ansible` (<https://pypi.org/project/ansible/>)
- `ansible-lint` (<https://pypi.org/project/ansible-lint/>)

ARM releases should now be available for each container image! This happened in the migration to GitHub Actions, but I forgot to update this line.

| Base Image (↓) \ Ansible Version (→) | Dockerfile                                                                                                            | 2.19                        | 2.18                        | 2.17                        | 2.16                        |
|--------------------------------------|-----------------------------------------------------------------------------------------------------------------------|-----------------------------|-----------------------------|-----------------------------|-----------------------------|
| Latest                               | [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/main/ansible-core/alpine-3.22/Dockerfile)          | `latest`                    |                             |                             |                             |
| Alpine                               | [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/main/ansible-core/alpine-3.22/Dockerfile)          | `alpine`                    |                             |                             |                             |
| Ubuntu                               | [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/main/ansible-core/ubuntu-24.04/Dockerfile)         | `ubuntu`                    |                             |                             |                             |
| Alpine 3.19                          | [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/main/ansible-core/alpine-3.19/Dockerfile)          | `2.19-alpine-3.19`          | `2.18-alpine-3.19`          | `2.17-alpine-3.19`          | `2.16-alpine-3.19`          |
| Alpine 3.20                          | [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/main/ansible-core/alpine-3.20/Dockerfile)          | `2.19-alpine-3.20`          | `2.18-alpine-3.20`          | `2.17-alpine-3.20`          | `2.16-alpine-3.20`          |
| Alpine 3.21                          | [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/main/ansible-core/alpine-3.21/Dockerfile)          | `2.19-alpine-3.21`          | `2.18-alpine-3.21`          | `2.17-alpine-3.21`          | `2.16-alpine-3.21`          |
| Alpine 3.22                          | [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/main/ansible-core/alpine-3.22/Dockerfile)          | `2.19-alpine-3.22`          | `2.18-alpine-3.22`          | `2.17-alpine-3.22`          | `2.16-alpine-3.22`          |
| Bookworm (Debian 12)                 | [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/main/ansible-core/debian-bookworm/Dockerfile)      | `2.19-debian-bookworm`      | `2.18-debian-bookworm`      | `2.17-debian-bookworm`      | `2.16-debian-bookworm`      |
| Bookworm Slim (Debian 12)            | [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/main/ansible-core/debian-bookworm-slim/Dockerfile) | `2.19-debian-bookworm-slim` | `2.18-debian-bookworm-slim` | `2.17-debian-bookworm-slim` | `2.16-debian-bookworm-slim` |
| Trixie (Debian 13)                   | [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/main/ansible-core/debian-trixie/Dockerfile)        | `2.19-debian-trixie`        | `2.18-debian-trixie`        | `2.17-debian-trixie`        |                             |
| Trixie Slim (Debian 13)              | [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/main/ansible-core/debian-trixie-slim/Dockerfile)   | `2.19-debian-trixie-slim`   | `2.18-debian-trixie-slim`   | `2.17-debian-trixie-slim`   |                             |
| Rocky Linux 10                       | [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/main/ansible-core/rockylinux-10/Dockerfile)        | `2.19-rockylinux-10`        | `2.18-rockylinux-10`        | `2.17-rockylinux-10`        | `2.16-rockylinux-10`        |
| Ubuntu 22.04                         | [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/main/ansible-core/ubuntu-22.04/Dockerfile)         |                             |                             | `2.17-ubuntu-22.04`         | `2.16-ubuntu-22.04`         |
| Ubuntu 24.04                         | [Dockerfile](https://github.com/willhallonline/docker-ansible/blob/main/ansible-core/ubuntu-24.04/Dockerfile)         | `2.19-ubuntu-24.04`         | `2.18-ubuntu-24.04`         | `2.17-ubuntu-24.04`         | `2.16-ubuntu-24.04`         |

### Older versions (2.9, 2.10, 2.11, 2.12, 2.13, 2.14, 2.15)

OS:
- Rockylinux 9
- Debian Bullseye
- Ubuntu 20.04

Ansible-core:
- Ansible 2.12: ...
- Ansible 2.13: 2.13.13
- Ansible 2.14: 2.14.18
- Ansible 2.15: 2.15.13

Various older versions are available in the [older-releases](docs/older-releases.md) documentation.

## Running

**You will likely need to mount required directories into your container to make it run (or build on top of what is here).

### Simple

```bash
docker run --rm -it willhallonline/ansible:latest /bin/sh
```

### Mount local directory and ssh key

```bash
docker run --rm -it -v $(pwd):/ansible -v ~/.ssh/id_rsa:/root/id_rsa willhallonline/ansible:latest /bin/sh
```

### Injecting commands

```bash
docker run --rm -it -v $(pwd):/ansible -v ~/.ssh/id_rsa:/root/id_rsa willhallonline/ansible:latest ansible-playbook playbook.yml
```

### Bash Alias

You can put these inside your dotfiles (~/.bashrc or ~/.zshrc to make handy aliases).

```bash
alias docker-ansible-cli='docker run --rm -it -v $(pwd):/ansible -v ~/.ssh/id_rsa:/root/.ssh/id_rsa --workdir=/ansible willhallonline/ansible:latest /bin/sh'
alias docker-ansible-cmd='docker run --rm -it -v $(pwd):/ansible -v ~/.ssh/id_rsa:/root/.ssh/id_rsa --workdir=/ansible willhallonline/ansible:latest '
```

use with:

```bash
docker-ansible-cli ansible-playbook -u playbook.yml
```

To accelerate using Mitogen look into [Using Mitogen](docs/using-mitogen.md).

## Maintainer

- Written and maintained by [Will Hall](https://www.willhallonline.co.uk)

[hub]: https://hub.docker.com/r/willhallonline/ansible
