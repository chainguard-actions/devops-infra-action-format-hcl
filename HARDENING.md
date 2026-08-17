<!-- markdownlint-disable -->

# Hardening Report: devops-infra--action-format-hcl/v1.1.1

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **devops-infra--action-format-hcl/v1.1.1** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The action.yml references a Docker image using a mutable version tag (`docker://devopsinfra/action-format-hcl:v1.1.1`) instead of an immutable SHA digest. This allows the image to be silently replaced with a malicious version. Additionally, all six workflow files under .github/workflows/ use `uses:` references pinned to mutable tags or branch names (@v1, @master) rather than full 40-character commit SHAs, exposing the workflows to supply-chain attacks if those refs are moved. Failing references:
- action.yml: `image: docker://devopsinfra/action-format-hcl:v1.1.1`
- auto-pull-request-create.yml: `uses: devops-infra/.github/.github/workflows/reusable-auto-pull-request-create.yml@v1`
- auto-release-create.yml: `uses: devops-infra/.github/.github/workflows/reusable-auto-release-create.yml@v1`
- cron-dependency-update.yml: `uses: devops-infra/.github/.github/workflows/reusable-cron-dependency-update.yml@v1`
- manual-e2e-validate.yml: `uses: devops-infra/triglav/.github/workflows/e2e-action-format-hcl.yml@master`
- manual-release-branch-prepare.yml: `uses: devops-infra/.github/.github/workflows/reusable-manual-release-branch-prepare.yml@v1`
- manual-release-create.yml: `uses: devops-infra/.github/.github/workflows/reusable-manual-release-create.yml@v1`

Locations:

- `action.yml:34`
- `.github/workflows/auto-pull-request-create.yml:18`
- `.github/workflows/auto-release-create.yml:26`
- `.github/workflows/cron-dependency-update.yml:14`
- `.github/workflows/manual-e2e-validate.yml:22`
- `.github/workflows/manual-release-branch-prepare.yml:30`
- `.github/workflows/manual-release-create.yml:28`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Fixed all 7 unpinned references:
1. action.yml: Pinned Docker image `docker://devopsinfra/action-format-hcl:v1.1.1` to immutable digest `docker://devopsinfra/action-format-hcl:v1.1.1@sha256:9a77d0fc92d9c4693059a8a3ce5ccaa9d70b127fb5f79d03ce0bdbd986ab3a26`.
2-6. Five `devops-infra/.github` reusable workflow references (auto-pull-request-create, auto-release-create, cron-dependency-update, manual-release-branch-prepare, manual-release-create) all pinned from `@v1` to `@88b425df3a0f0415f12a0678b84d065562363bdc # v1`.
7. `devops-infra/triglav` reusable workflow in manual-e2e-validate.yml pinned from `@master` to `@6b7cf10d8042334e484bdc14ea1c9b4b335cea3e # master`.
All SHAs were resolved via lookup tools, not guessed.

