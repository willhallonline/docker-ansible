# Changelog

## v6.3.1

- Fix for #149: Change `fix-version` to string rather than decimal (float).

## v6.3.0

* Included Ansible 2.20.0 for:
  - Alpine 3.20, 3.21, and 3.22
  - Debian Trixie and Debian Trixie Slim
  - Rocky Linux 10
  - Ubuntu 24.04

## v6.2.3

- Fix Docker Pull documentation in README
- Bump actions/checkout from 5 to 6 #146
- Bump docker/metadata-action from 5.8.0 to 5.10.0 #147

## v6.2.2

- Archive all `ansible-core` builds < 2.16.
- Move `rockylinux-9`, `debian-bullseye` and `ubuntu-20.04` to `archive`.
- Reshape documentation to better enable viewing (it was getting quite long).

## v6.2.1

- Update key=value for Dockerfiles #137

## v6.2.0

- Add Debian Trixie and Debian Trixie Slim #131

## v6.1.2

- Update versions of Ansible 2.18 and 2.19.

## v6.1.1
- Add `ubuntu` and `alpine` tags for easier pull. Update to use Alpine 3.22 and Ansible 2.19. Resolves #133
- Add Rockylinux 10 for Ansible 2.19. Resolves #134

## v6.1.0
- Add Ansible 2.19 Resolves #129
- Update base image for rockylinux v9
- Add new base image for rockylinux v10

## v6.0.4
- Move Ubuntu 20.04 to `archive`
- Move Alpine 3.18 to `archive`
- Bump actions/checkout from 4 to 5 PR #126
- Bump docker/metadata-action from 5.7.0 to 5.8.0 

## v6.0.3
- Merge metadata-action-5.7.0 from Dependabot
- Merge build-push-action-6.18.0 from Dependabot
- Add `alpine-3.22` as base OS

## v6.0.2

- Add `ISSUE_TEMPLATE.md` for better issue management.
- Add `PULL_REQUEST_TEMPLATE.md` for better pull request templates.
- Add dependabot (still needs work to onboard changes to Docker + Python (potentially))
- Update ansible-core 2.17.9 to 2.17.12
- Update ansible-core 2.18.3 to 2.18.6
- Update ansible 11.3.0 to 11.6.0
- Update ansible-lint to 25.4.0

## v6.0.1

- Update ansible-core 2.17.8 to 2.17.9
- Update ansible-core 2.18.2 to 2.18.3
- Update ansible 11.2.0 to 11.3.0
- Update ansible-lint to 25.1.3

## v6.0.0

- Migrate to GitHub Actions away from GitLab CI #105
- Release all as both amd64 and armv8 builds (enabled by move to GitHub Actions matrix)
- Remove deprecated `ANSIBLE_COLLECTIONS_PATHS`
- Fix build of bullseye + Ubuntu 22.04
- Add SECURITY.md for security overview
- Add CONTRIBUTING.md for details on how to contribute
- Add Alpine 3.21 as new base OS
- Update `latest` to using later builds.

## v5.3.1

- Drop support for Ubuntu 22.04 and Ansible 2.18 as not supported.

## v5.3.0

- Add Ansible 2.18
- Add collections path env for ubuntu 24.04
- Alter loading of mitogen on Ubuntu 24.04 to pip

## v5.2.0

- Renaming mainline branch to `main` from `master`.
- Remove Alpine 3.16 and Alpine 3.17 from major supported version as currently un-fixable.
- Move Alpine 3.20 to main release (out of Dev)

## v5.1.2

- Correct command to find correct version of python (Alpine3.20 & Alpine 3.19)
- Update versions of ansible and ansible-core to latest (2.15, 2.16, 2.17)

## v5.1.1

- Upgrade `ansible-core`, `ansible` and `ansible-lint`
- Pulled mitogen from within ubuntu 24.04 image as failing

## v5.1.0

- Add `ansible-core` 2.17 and `ansible` 10.
- Add Ubuntu 24.04 - new latest `ubuntu` release
- Add Alpine 3.20 * in development
- Remove Alpine 3.15 to `archive`.

## v5.0.2

- Remove Rocky Linux 10 (as that doesn't exist yet).
- Fix issues with documentation linking to `/archive` directory in README.md
- Upgrade ansible-core to 2.16.4
- Update details on README.md for Python packages.

## v5.0.1

- Fix issues with Alpine 3.19 and Debian 12 (Bookworm) (<https://www.jeffgeerling.com/blog/2023/how-solve-error-externally-managed-environment-when-installing-pip3>)
- Ensure build and tags are created for Bookworm and RockyLinux 10

## v5.0.0

- Re-structure to add new `archive` directory for holding end-of-life details.
- Add `archive/archived.gitlab-ci.yml` to keep older CI tasks without removing from `master` branch.
- Prevent running of older, end-of-life Ansible versions (2.9, 2.10, 2.11, 2.12).
- Remove older and unused base images:
  - Alpine 3.14
  - Centos 7
  - Rockylinux 8
  - Ubuntu 18.04
- Add new base os:
  - Alpine 3.19
  - Debian 12 (Bookworm + Bookworm Slim)
  - Rockylinux 10

## v4.6.1

- Fix issues with OS which cant move about Python 3.9
- Fix issue with ansible 2.13 and ansible-lint 6.20.3
- Bump versions of ansible-core and ansible again.

## v4.6.0

- Upgrade ansible-lint, ansible and ansible-core.
- Add ansible version 2.16

## v4.5.5

- Upgrade ansible lint to 6.19.0 for 2.15, 2.14, 2.13

## v4.5.4

- Add support for ansible-lint to latest version for 2.15, 2.14 and 2.13.

## v4.5.3

- Remove `arm` from latest build support as issues building currently. Need workaround.

## v4.5.2

- Add Alpine 3.18 as new base image.

## v4.5.1

- Drop support for Ansible 2.14+ for Ubuntu 20.04 as requires Python 3.10+.
- Remove requirement for tests to run on tags.
- Improve documentation for older versions.

## v4.5.0

- Add support for `linux/arm64` (Macbook and AWS Graviton) to `latest` and `alpine` image tags.
- Add new tag for `linux/arm/v7` and `linux/arm/v6` to `arm` image tag (Raspberry Pi).

## v4.4.0

- Include versions of ansible core 2.15 and 2.14 in all available builds
- Remove erroneous GitLab security features
- Update 2.13 to 2.13.11
- Update 2.12 to 2.12.10

## v4.3.2

- Pin `ansible-lint` to version 5.4.0 as greater than that seems to force reinstall of `ansible-core` to latest version.

## v4.3.1

- Re-enable support for `ansible-lint` within Alpine as conflict with `packaging` for ansible-core (v2.11, v2.12, v2.13). Resolves #61.
- Downgrade Ansible Lint version to 6.12.2 for compatibility.

## v4.3.0

- Drop support for `ansible-lint` within Alpine 3.17 as conflict with `packaging` for ansible-core (v2.11, v2.12, v2.13) - will resolve soon.
- Remove `openssl-dev` from `libressl-dev` for Alpine 3.17.
- Upgrade Ansible to latest version (v6) 6.7.0
- Upgrade Ansible Lint to latest version 6.13.0
- Upgrade ansible-core 2.13 to latest version 2.13.7
- Remove Alpine 3.12 as EOL
- Remove Alpine 3.13 as EOL
- Remove Debian Stretch as EOL
- Add Rockylinux 9 as new base image OS (add for ansible-core 2.12 + 2.13)
- Add Alpine 3.17 as new base image OS
- Make Alpine 3.17 new `latest` and `alpine` image
- Make Ubuntu 22.04 new `ubuntu` image

## v4.2.4

- Upgrade Ansible to latest version 6.3.0
- Upgrade Ansible Lint to latest version 6.5.2
- Upgrade ansible-core 2.12 to latest version 2.12.9
- Upgrade ansible-core 2.13 to latest version 2.13.4

## v4.2.3

- Upgrade Ansible to latest version 6.2.0
- Upgrade Ansible Lint to latest version 6.4.0
- Upgrade ansible-core 2.12 to latest version 2.12.8
- Upgrade ansible-core 2.13 to latest version 2.13.3

## v4.2.2

- Upgrade Ansible to v6.1.0 within 2.13
- Upgrade Ansible Core to latest version 2.13.2

## v4.2.1

- Resolve issues with ansible-lint pulling through Ansible 2.13 for 2.9 and 2.10. Resolves #52 in GitHub.

## v4.2.0

- Add ansible-core 2.13.1, ansible 6.0.0, ansible-lint 6.3.0
- Move latest to be Alpine 3.16, Ansible 2.13

## v4.1.1

- Resolves #43 - Loading mitogen 0.2.10 for < Ansible 2.10

## v4.1.0

- Add Ubuntu 22.04
- Add Alpine 3.16
- Resolve #47 - Incorrect Ansible version on 2.11 and 2.12 containers.
- Resolve #50 - non-matching version of Alpine.

## v4.0.2

- Add later Ansible versions:
  - 2.11.9, 2.11.10, 2.11.11
  - 2.12.3, 2.12.4, 2.12.5

## v4.0.1

- Add Debian Bullseye (+ Bullseye-Slim) for all Ansible versions.
- Create immutable images of all containers - need to work out some way of managing these longer term. Resolves #42.

## v4.0.0

- Restructure to make managing versions easier:
  - `ansible` (Ansible 2.9)
  - `ansible-base` (Ansible 2.10)
  - `ansible-core` (Ansible 2.11 + 2.12)
- Upgrade Ansible versions to latest.
- Alter to remove Centos 8 in favour of RockyLinux 8 - centos8 is EOL and Rocky Linux appears to be the most natural successor.
- Remove Alpine 3.11

## v3.2.0

- Alter `latest` to use ansible 2.11 and alpine 3.14.
- Remove Alpine 3.11 as past end of life
- Add Alpine 3.15 as new version
- Add Ansible version 2.12
- Upgrade ansible 2.11 to 2.11.7
- Upgrade ansible 2.10 to 2.10.16

## v3.1.2

- Update ansible 2.11 to version 2.11.6 and include `ansible` package. Resolves #40.
- Update ansible 2.10 to 2.10.15 - moving to `ansible-base` package.
- Update ansible 2.9 to version 2.9.27.
- Fix Alpine 3.14 builds. Resolves #41.

## v3.1.0

- Upgrade Ansible 2.9.23 to 2.9.24.
- Add Alpine 3.14 as OS.

## v3.0.0

- Add Ansible 2.11 for all OS. Resolves #35.

## v2.10.0

- Removes Ubuntu 16.04. Resolves #38.

## v2.9.0

- Remove Ansible 2.8. Resolves #37.

## v2.8.0

- Update Ansible versions where appropriate.
- Fix `pip` inside Ubuntu 16.04
- Fix Docker labels (resolves #36)

## v2.7.1

- Update Ansible versions where appropriate.
- Fix changelog.

## v2.7.0

- Correct tags within Docker Hub. Resolves #31
- Move to build within GitLab CI (and push to Docker Hub) due to limitations
- Correctly release Ansible v2.9
- Correctly add Centos-8. Resolves #32
- Fix #33 for build with Rust Cryptography.

## v2.6.0

- Bump Ansible Version to latest
- Add Alpine 2.13
- Add Centos-8

## v2.5.0

- Bump Ansible version to 2.8.15 and 2.9.13
- Add Dockerfile for build of Ansible 2.10 (2.10.1)
- Update README for better availability of Mitogen path
- Update GitLab CI for build inside GitLab

## 2.4

- Add `jmespath` for enabling json_filter inside json objects.
- Bump version of Ansible to latest stable (2.8.14 and 2.9.12)

## 2.3

- Add Ubuntu 20.04 version for Ansible 2.8 and 2.9
- Correct some tagging of releases
- Correct build of buster image for GitLab registry

## 2.2

- Update Ansible versions to 2.8.12 and 2.9.9

## 2.1

- Update documentation
- Ensure builds process in Docker Hub and GitLab

## 2.0

- Upgrade to Python 3 - Resolves #13
- Add Alpine 3.11
- Add Debian Buster
- Remove Alpine 3.9

## 1.2

- Upgrade Ansible 2.7 versions to 2.7.14. Resolves #12.

## 1.1

- Add Alpine v3.10 for later uses. Resolves #6.
- Add CHANGELOG.md. Resolves #5.
- Add git package for pulling roles from Ansible Galaxy. Resolves #4.
- Make /ansible directory and set as WORKDIR. Resolves #2.

## 1.0

- Initial release
