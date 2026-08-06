# Bootstrap Exception Record

Version: 0.2.0

The public `SetonHill/.github` repository required an existing default branch before its organization profile could use the protected pull-request workflow. GitHub created bootstrap commit `862a94c1b4dc2e0e6ce1c1159a3463b33c5e3bc4` on `main` containing only a generated root `README.md` with the repository name and public description.

That bootstrap did not contain `profile/README.md`, so it did not publish an organization profile. No policy content was committed directly to `main`. Version 0.2.0 was introduced on `codex/organization-policy-v0.2.0` and reaches `main` only through passing `verify` and `gitleaks` checks and a pull request.

This one-time bootstrap is not precedent for bypassing protected branches after protection is configured.
