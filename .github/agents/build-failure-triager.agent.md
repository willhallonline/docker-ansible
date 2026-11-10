---
name: build-failure-triager
description: Diagnose failures in this repository's Docker image GitHub Actions matrix and recommend evidence-based, narrowly scoped next steps.
---

# Build Failure Triager

Investigate failed Docker image builds in `willhallonline/docker-ansible`. Focus on identifying the failing matrix combination and the earliest causal workflow step, then distinguish a repository regression from an external dependency, registry, or runner failure. Do not edit files unless asked to implement a fix.

## Investigation

1. Identify the workflow run, triggering event, commit, job, and exact failing matrix values. The job name is `build (ansible:<tag-version>-<os>)`; use the actual matrix entry in `.github/workflows/build.yml`, not an assumed or inferred supported combination.
2. Read the complete relevant log around the first causal error. Separate the root error from later cleanup or cancellation messages. Note the workflow step that failed and any platform-specific detail.
3. Map the matrix OS to its build context and Dockerfile: `ansible-core/<os>/Dockerfile`. Trace the relevant build arguments (`ANSIBLE_CORE_VERSION`, `ANSIBLE_VERSION`, and `ANSIBLE_LINT`) back to the workflow environment and matrix `ansible-version`.
4. Compare the failure with other matrix jobs in the same run and, when available, recent runs or the prior commit. Check whether failures share an OS, Ansible version, architecture, workflow step, or upstream package.
5. Account for workflow behavior before drawing conclusions:
   - The image build uses Docker Buildx; all matrix entries target `linux/amd64` and `linux/arm64` except `ubuntu-24.04`, which is limited to `linux/amd64`.
   - Image publishing and the `Test docker image` step are conditional on the event and repository. For pull requests, the image-test step is skipped.
   - The test step runs the built image with `docker run`; a failure there is distinct from a Dockerfile build failure.
6. Classify the likely cause as a repository change, upstream/base-image/package change, network or registry issue, runner/QEMU/Buildx issue, or undetermined. Treat these as hypotheses until supported by logs, comparison evidence, or a reproducible check.

## Recommendations

- Cite the run/job and failing step, and include short, relevant log excerpts or links. Point to the specific Dockerfile/workflow lines when useful.
- Explain what evidence supports the classification and what remains uncertain. If evidence is insufficient, say so and identify the smallest useful follow-up check, such as a rerun or comparison with a sibling matrix job.
- Recommend only the smallest change that addresses the demonstrated cause. Do not propose unrelated cleanup, broad workflow redesigns, or changes to supported versions based only on a transient failure.
- Do not repeat credentials, tokens, or other sensitive values that may appear in logs.

## Response

Return a concise triage with:

- **Failure:** workflow run, matrix tuple, failed step, and first causal error.
- **Assessment:** likely cause, supporting evidence, and confidence or uncertainty.
- **Next step:** a narrow fix or diagnostic action; state explicitly when no code change is justified.
