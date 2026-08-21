# Organization Structure and Repository Provisioning

Version: 0.3.0

## Governance Principles

Assign access according to teaching, support, and course responsibilities rather than title or seniority. Keep organization ownership limited to the smallest practical group of accountable administrators. Use teams for repository access, grant no broader permission than the work requires, and review access at the end of every semester.

## Standing Teams

- `Instructors` contains active teaching faculty, including administrators who teach. Membership alone grants no blanket repository access.
- `SHU-IT` contains university personnel providing identity, platform, security, or operational support. Membership alone grants no blanket repository access. Assign a predefined security, CI/CD, app-management, or billing role only when the person's support duties require it.
- `Security-Managers` is optional and contains only the subset formally responsible for organization security findings and settings.
- GitHub Apps and provisioning workflows use narrowly scoped application access. Do not place automation identities in human teams.

Keep at least two accountable human owners when staffing permits. Instructor, Dean, or IT status does not automatically grant Owner.

## Course and Semester Teams

Every class name begins with a course code matching `^(SCS|SCY)[0-9]{3}$`. Organize access by course, semester, and responsibility. Use this pattern:

```text
SCS323-Fall-2026-Instructors
SCS323-Fall-2026-Students
SCS323-Fall-2026-Team-01
```

- The semester instructor team receives `Admin` only on that semester's approved course repositories.
- The semester student team receives `Read` only on shared private course resources that all enrolled students need.
- Each project team receives `Write` only on its assigned private project repository.
- Students do not receive access to another project's private repository.
- Keep semester and project teams secret where the plan supports secret teams.
- The standing `Instructors` team establishes faculty status; course-specific instructor teams establish repository access.

Do not assign repository permissions to a broad parent team when that permission would flow to people outside the specific course and semester.

## Naming Standard

Use `COURSE-TERM-YEAR-PURPOSE` for semester-bound teams and repositories. The course code is `SCS` or `SCY` followed by exactly three digits. Term is `Spring`, `Summer`, or `Fall`; year is four digits.

Semester-bound names must match:

```text
^(SCS|SCY)[0-9]{3}-(Spring|Summer|Fall)-20[0-9]{2}(-[A-Za-z0-9][A-Za-z0-9-]*)?$
```

Examples include `SCS323-Fall-2026`, `SCS323-Fall-2026-Instructors`, `SCS323-Fall-2026-Students`, and `SCS323-Fall-2026-Team-01`.

Durable, semester-independent instructional repositories use `COURSE-PURPOSE`, such as `SCS323-Companion-Site` or `SCS323-Address-Book-Learning-App`. They must match:

```text
^(SCS|SCY)[0-9]{3}-[A-Za-z0-9][A-Za-z0-9-]*$
```

Do not include student names, university identifiers, email addresses, or other roster data in public names. GitHub Classroom may append a private team slug or GitHub username to an approved assignment prefix.

## Repository Creation Guardrails

Students do not create repositories directly in the organization. GitHub Classroom or an approved provisioning workflow creates their private assignment and project repositories.

Disable general member repository creation. Instructors request or provision repositories through an owner-approved workflow that validates course code, term, year, purpose, visibility, instructor team, and student or project team before creation. If GitHub repository policies are available, restrict approved faculty creators to the naming patterns above and to private visibility by default.

Only organization owners may approve a new public repository or a visibility change to public. Approval requires documented instructional purpose plus content, privacy, licensing, and security review. Outside collaborators cannot create repositories.

Repository deletion, transfer, visibility changes, and ruleset bypass remain owner-controlled. Any temporary exception follows `EXCEPTIONS-AND-OVERRIDES.md` and records its owner, scope, reason, expiration, safeguards, and rollback.

## Managed Repository Baseline

Apply an organization ruleset to every repository matching `SCS[0-9][0-9][0-9]-*` or `SCY[0-9][0-9][0-9]-*`. The baseline protects the default branch, requires pull requests and required checks, requires resolved conversations and linear history, blocks force pushes and branch deletion, prevents unauthorized repository renaming, and grants bypass only to the smallest documented owner or emergency group.

Student repositories are private by default. Enable secret scanning and push protection where the plan provides them. Require the repository policy and secret-safeguard workflows named in `REPOSITORY-STANDARDS.md`.

## Semester Lifecycle

Before a semester, create the course teams, validate representative instructor and student permissions, and test the repository baseline with a harmless pull request. At semester close, remove unnecessary elevated access, archive or retain repositories according to policy, and preserve any repository subject to a legal or records hold.

This document is operational policy, not legal advice. Official university and legal instructions control.
