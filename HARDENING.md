<!-- markdownlint-disable -->

# Hardening Report: devops-infra--action-format-hcl/v1.1.2

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **devops-infra--action-format-hcl/v1.1.2** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The action.yml uses a Docker image reference with a mutable version tag instead of an immutable SHA digest. The reference `docker://devopsinfra/action-format-hcl:v1.1.2` uses the tag `v1.1.2`, which can be silently replaced by a different (potentially malicious) image at any time. It should be pinned to a SHA digest, e.g. `docker://devopsinfra/action-format-hcl@sha256:<64-hex-char-digest> # v1.1.2`.

Locations:

- `action.yml:40`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from `docker://devopsinfra/action-format-hcl:v1.1.2` to `docker://devopsinfra/action-format-hcl:v1.1.2@sha256:aa0d53aa6d6a03d6c092a1d549996e2f7a62721b61104e261683a5fff7223a34`. The `docker://` scheme and `:v1.1.2` tag are preserved inline alongside the immutable digest.

