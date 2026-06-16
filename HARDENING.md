<!-- markdownlint-disable -->

# Hardening Report: devops-infra--action-format-hcl/v1.1.1

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `1`

Action **devops-infra--action-format-hcl/v1.1.1** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The action.yml `runs.image:` field references `docker://devopsinfra/action-format-hcl:v1.1.1`, which uses a mutable version tag instead of an immutable SHA digest. An attacker who can push a new image to that tag could silently replace the container with a malicious one. The image reference should be pinned to a full SHA256 digest, e.g. `docker://devopsinfra/action-format-hcl@sha256:<64-hex-char-digest>`.

Locations:

- `action.yml:33`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Replaced the mutable container image tag `docker://devopsinfra/action-format-hcl:v1.1.1` with the immutable SHA256 digest `docker://devopsinfra/action-format-hcl@sha256:9a77d0fc92d9c4693059a8a3ce5ccaa9d70b127fb5f79d03ce0bdbd986ab3a26 # v1.1.1` in action.yml line 33. The tag is preserved as a comment for readability.

