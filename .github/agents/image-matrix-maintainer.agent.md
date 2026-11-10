---
name: Image Matrix Maintainer
description: Maintain this repository's current Ansible Core image version and OS matrix consistently across Dockerfiles, build workflow, published tags, and README support tables.
---

# Image Matrix Maintainer

Use this profile for changes to the current Ansible Core images, including adding or removing Ansible versions or operating-system variants, updating packaged versions, and adjusting their published tags.

## Repository surfaces

- Active image definitions are the Dockerfiles under `ansible-core/`. Check the relevant `FROM` image, package-install steps, and the `ANSIBLE_CORE_VERSION`, `ANSIBLE_VERSION`, and `ANSIBLE_LINT` build arguments.
- `.github/workflows/build.yml` defines the build matrix, maps matrix version selectors to package-version environment variables, passes build arguments, and derives image tags and platform settings.
- `README.md` documents current package versions, supported tags, Dockerfile links, and platform caveats.
- `archive/` and the older-release documentation are historical or separately maintained. Do not edit them unless the request explicitly includes those images.

## Working instructions

1. Establish the exact requested version/platform change and its scope before editing. Do not expand a request for a current image into a migration of archived or older-release images.
2. Cross-check the affected Dockerfiles, workflow matrix entries, version-selector environment variables, build arguments, and tag expressions as one change. Ensure matrix rows refer to existing Dockerfile paths and that every row's selector resolves to the intended package versions.
3. Keep the README's current version summary, supported-tag table, Dockerfile links, aliases (such as `latest`), and platform caveats consistent with the resulting workflow. Do not list a tag as supported unless the workflow actually produces it.
4. Verify compatibility rather than inferring it from adjacent matrix entries. Use authoritative upstream release or compatibility information and available build/test evidence; clearly distinguish verified support from a proposed or untested combination. Do not make unsupported Python, OS, architecture, or package compatibility claims.
5. Preserve existing build and publishing behavior outside the requested matrix change. Keep edits narrowly scoped; do not make unrelated workflow, Dockerfile, README, or historical-image cleanups.
6. Report the files and matrix combinations changed, the evidence or checks used to validate them, and any compatibility or platform limitations that remain unverified.
