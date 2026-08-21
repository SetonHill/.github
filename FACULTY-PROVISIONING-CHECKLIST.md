# Faculty Provisioning Checklist

Version: 0.3.0

## Before Creation

- [ ] Confirm the course code matches `^(SCS|SCY)[0-9]{3}$`, then record purpose, instructor owner, term, year, team model, and approved visibility.
- [ ] Confirm semester teams follow `COURSE-TERM-YEAR-ROLE` and repository names follow `ORGANIZATION-STRUCTURE.md`.
- [ ] Receive the roster and exact GitHub usernames through the approved private system.
- [ ] Confirm two-factor authentication and organization invitation process.
- [ ] Identify official conduct, security, accommodation, and privacy reporting channels.
- [ ] Plan access review at course close and the six-month retention/offboarding window, including student notice and a reasonable private-export window.

## Repository Creation

- [ ] Create the repository inside `SetonHill`; make student work private by default.
- [ ] Use GitHub Classroom or the approved provisioning workflow; do not permit students or general members to create organization repositories directly.
- [ ] Add instructor administration and least-privilege student/team access.
- [ ] Apply the approved repository foundation and every file in `REPOSITORY-STANDARDS.md`.
- [ ] Configure protected `main`, strict `verify` and `gitleaks`, resolved conversations, linear history, administrator enforcement, and force-push/deletion blocks.
- [ ] Keep mandatory approval count at zero unless the course explicitly adopts a supported alternative.
- [ ] Enable GitHub secret scanning and push protection where available.
- [ ] Confirm the organization-wide managed baseline applies private-by-default visibility, standard templates, least privilege, protected `main`, strict `verify` and `gitleaks`, resolved conversations, linear history, and force-push/deletion blocks.
- [ ] Confirm the organization ruleset targets `SCS[0-9][0-9][0-9]-*` and `SCY[0-9][0-9][0-9]-*` and prevents unauthorized repository renaming.
- [ ] Confirm `.env` and local secret files are ignored and `.env.example` is sanitized.

## Validation

- [ ] Open and merge a harmless validation pull request through all required checks.
- [ ] Confirm a student cannot administer, transfer, publicize, force-push, delete `main`, or bypass checks.
- [ ] Confirm issue, PR, milestone, agent, outage, and secret-safety evidence fields appear.
- [ ] Test every required agent with controlled content; verify read-only behavior and secret-stop behavior without using a real secret.
- [ ] Record the repository, permissions, workflow runs, protections, and instructor sign-off privately.

## Legal Hold and Required Preservation

- [ ] Check for legal holds, litigation holds, records-preservation directives, subpoena-related notices, research-integrity holds, and other authorized preservation directives before access removal, export deletion, archival disposal, or automated cleanup.
- [ ] Mark every held repository and related resource, exclude it from automation, preserve identified repository content and metadata in existing form, and limit access under least privilege.
- [ ] Do not rewrite history, force-push, sanitize retroactively, remove relevant accounts or access records, make held content public, or treat a student export as the authoritative held record.
- [ ] Follow the issuing authority's written instructions; escalate conflicts immediately and do not independently narrow, release, or expire the hold.
- [ ] Coordinate with university-authorized archival or export systems when GitHub retention is insufficient. Resume normal retention only after written release from the authorized authority.

## Course Close
- [ ] Remove unnecessary elevated access and external integrations.
- [ ] Review secrets, deployments, unresolved work, licenses, privacy, and export requests.
- [ ] At six months after course end, archive or delete according to faculty and IT requirements unless a legal-hold, research, records, or IT exception applies.
- [ ] Before deletion, notify students and provide a reasonable window for faculty-reviewed export to each student's own private repository.

This checklist is operational policy, not legal advice. Official university and legal instructions control.
