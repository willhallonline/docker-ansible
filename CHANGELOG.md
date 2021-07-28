# Changelog

## v2.9.0

* Remove Ansible 2.8. Resolves #37.

## v2.8.0

* Update Ansible versions where appropriate.
* Fix `pip` inside Ubuntu 16.04
* Fix Docker labels (resolves #36)

## v2.7.1

* Update Ansible versions where appropriate.
* Fix changelog.

## v2.7.0

* Correct tags within Docker Hub. Resolves #31
* Move to build within GitLab CI (and push to Docker Hub) due to limitations
* Correctly release Ansible v2.9
* Correctly add Centos-8. Resolves #32
* Fix #33 for build with Rust Cryptography.

## v2.6.0

* Bump Ansible Version to latest
* Add Alpine 2.13
* Add Centos-8

## v2.5.0

* Bump Ansible version to 2.8.15 and 2.9.13
* Add Dockerfile for build of Ansible 2.10 (2.10.1)
* Update README for better availability of Mitogen path
* Update GitLab CI for build inside GitLab

## 2.4

* Add `jmespath` for enabling json_filter inside json objects.
* Bump version of Ansible to latest stable (2.8.14 and 2.9.12)

## 2.3

* Add Ubuntu 20.04 version for Ansible 2.8 and 2.9
* Correct some tagging of releases
* Correct build of buster image for GitLab registry

## 2.2

* Update Ansible versions to 2.8.12 and 2.9.9

## 2.1

* Update documentation
* Ensure builds process in Docker Hub and GitLab

## 2.0

* Upgrade to Python 3 - Resolves #13
* Add Alpine 3.11
* Add Debian Buster
* Remove Alpine 3.9

## 1.2

* Upgrade Ansible 2.7 versions to 2.7.14. Resolves #12.

## 1.1

* Add Alpine v3.10 for later uses. Resolves #6.
* Add CHANGELOG.md. Resolves #5.
* Add git package for pulling roles from Ansible Galaxy. Resolves #4.
* Make /ansible directory and set as WORKDIR. Resolves #2.

## 1.0

* Initial release
