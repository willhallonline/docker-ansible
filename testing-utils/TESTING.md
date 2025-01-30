# Test Utilities

Keeping this directory as a way to keep testing tools that are needed to make the administration and testing of the project slightly easier.

## Set Variables

```bash
export ANSIBLE_CORE_213=2.13.13
export ANSIBLE_CORE_214=2.14.14
export ANSIBLE_CORE_215=2.15.9
export ANSIBLE_CORE_216=2.16.4
export ANSIBLE_CORE_217=2.17.2
export ANSIBLE_LINT_213=5.4.0
export ANSIBLE_LINT_214=6.20.3
export ANSIBLE_LINT_215=6.20.3
export ANSIBLE_LINT_216=6.22.2
export ANSIBLE_LINT_217=24.6.1
export ANSIBLE_213=6.7.0
export ANSIBLE_214=7.7.0
export ANSIBLE_215=8.7.0
export ANSIBLE_216=9.2.0
export ANSIBLE_217=10.2.0
```

## Run Docker Commands

```bash
docker build -t test \
--build-arg ANSIBLE_CORE_VERSION=${ANSIBLE_CORE_217} \
--build-arg ANSIBLE_VERSION=${ANSIBLE_217} \
--build-arg ANSIBLE_LINT=${ANSIBLE_LINT_217} \
ansible-core/alpine320/
```
