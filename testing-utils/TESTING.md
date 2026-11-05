# Test Utilities

Keeping this directory as a way to keep testing tools that are needed to make the administration and testing of the project slightly easier.

## Set Variables

```bash
export ANSIBLE_CORE_218=2.18.19
export ANSIBLE_CORE_219=2.19.14
export ANSIBLE_CORE_220=2.20.10
export ANSIBLE_CORE_221=2.21.5
export ANSIBLE_CORE_222=2.22.0
export ANSIBLE_LINT_218=26.9.0
export ANSIBLE_LINT_219=26.9.0
export ANSIBLE_LINT_220=26.9.0
export ANSIBLE_LINT_221=26.9.0
export ANSIBLE_LINT_222=26.11.0
export ANSIBLE_218=11.13.0
export ANSIBLE_219=12.3.0
export ANSIBLE_220=13.8.0
export ANSIBLE_221=14.4.0
export ANSIBLE_222=15.0.0b1
```

`ANSIBLE_222` is a beta prerelease used only to validate this draft; replace it with a stable Ansible 15 release before merging.

## Run Docker Commands

```bash
docker build -t test \
--build-arg ANSIBLE_CORE_VERSION=${ANSIBLE_CORE_222} \
--build-arg ANSIBLE_VERSION=${ANSIBLE_222} \
--build-arg ANSIBLE_LINT=${ANSIBLE_LINT_222} \
ansible-core/alpine-3.24/
```
