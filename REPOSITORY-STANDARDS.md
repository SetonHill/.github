# Repository Standards

Version: 0.3.0

## Ownership, Naming, and Visibility

Course and research repositories must be owned by the `SetonHill` organization. Follow the course, semester, and durable-repository naming grammar in `ORGANIZATION-STRUCTURE.md`. Avoid student names or identifiers in public repository names. Student project repositories are private by default. Public visibility requires explicit faculty content, privacy, licensing, and security review.

Students do not create organization repositories directly. GitHub Classroom or an approved provisioning workflow creates private student repositories. General member repository creation is disabled; instructors use the approved, name-validating provisioning path. Only organization owners approve public repositories, visibility changes, transfers, deletion, and ruleset bypass.

## Mandatory Files

Every active course or team repository contains current, project-specific versions of:

- `README.md`
- `PROJECT.md`
- `CONTRIBUTING.md`
- `SECURITY.md`
- `CODE_OF_CONDUCT.md`
- `AGENTS.md`
- `.gitignore`
- `.env.example` containing placeholders only
- issue and pull-request templates
- repository-policy and secret-scanning workflows
- tests for the policy and secret-safeguard contracts

Keep visible and machine-readable `MAJOR.MINOR.PATCH` versions synchronized. Do not copy a foundation blindly; remove irrelevant examples and add the course's actual commands, evidence, and safety boundaries.

## Workflow Contract

Use an issue, a short-lived branch, focused commits, a completed pull request, required checks, resolved conversations, and a protected merge. Require strict `verify` and `gitleaks` checks. Preserve linear history; block direct pushes to `main`, force pushes, and deletion. Enforce protections for administrators. Peer review is expected when available; the approving-review count is zero unless the course explicitly adopts another supported policy.

Enable secret scanning and push protection where available. Ignore `.env` and local secret/configuration artifacts while explicitly allowing sanitized examples and templates. Local hooks supplement server enforcement.

## Agent Contract

Agent profiles are manually invoked, read-only instructional assistants. Course materials identify required checkpoints. Repository evidence records invocation, output, finding disposition, corrections, evidence-based overrides, and outage fallback. Agents cannot edit student work, submit reviews, approve, merge, deploy, grade, or administer repositories. Likely secrets stop the workflow and cannot be overridden by students.

## Archive Requirements

Before archival, verify the final version and default branch, close or transfer unresolved work, remove unnecessary access and integrations, inventory secrets and deployments, record retention and export decisions privately, and archive the repository. Do not make a private repository public as an archival shortcut.

Review access at course close. Six months after the course ends, repositories may be archived or deleted according to faculty and IT requirements, subject to legal-hold, approved research, records, or IT exceptions. Notify students and provide a reasonable export window before deletion.

## Organization-Wide Enforcement

The recommended managed baseline automatically applies private-by-default student repositories, secret scanning and push protection, protected `main`, strict `verify` and `gitleaks`, resolved conversations, least privilege, force-push and deletion blocks, and standard policy/templates to every future course repository. Keep the required approving-review count at zero for individual and small teams.

Target the organization baseline to repositories matching `SCS[0-9][0-9][0-9]-*` or `SCY[0-9][0-9][0-9]-*`, and prevent unauthorized repository renaming so governed repositories cannot escape the baseline.

This baseline does not access student personal repositories, make student work public, grant agents merge or grading authority, or weaken faculty judgment, accommodations, privacy requirements, or course-specific standards.

## Legal Hold and Required Preservation

A valid legal or litigation hold, records-preservation directive, subpoena-related preservation notice, research-integrity hold, or other authorized university preservation directive immediately suspends ordinary six-month deletion, archival disposal, offboarding destruction, history rewriting, repository transfer or export deletion, and automated cleanup for identified repositories and material.

Preserve commits and branches; issues; pull requests, reviews, and comments; releases and tags; retained Actions results and logs; security and incident records; available audit and access records; packages and artifacts; and approved linked evidence in their existing form. Do not delete, force-push, rewrite history, sanitize retroactively, destroy relevant evidence, remove relevant accounts or access records, or use student exports as substitutes for authoritative held records.

Human owners must mark held repositories and exclude them from every automated deletion or offboarding process. Agents and workflows must not delete or offboard held resources. Apply least privilege, do not make held content public, and disclose the hold only to authorized recipients. Follow written instructions from the named university legal, records, IT, or research authority; do not independently narrow, release, or expire the hold. Only the authorized authority may end it in writing.

After written release, normal retention and offboarding resume according to documented instructions. Coordinate with university-authorized archival or export systems when GitHub retention is insufficient. This is operational policy, not legal advice; official university and legal instructions control.
