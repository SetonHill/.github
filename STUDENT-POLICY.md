# Student Policy

Version: 0.2.0

## Purpose and Identity

Use the organization only for authorized course, research, and collaboration work. Use your own GitHub account, provide the instructor with the exact username through the approved roster process, enable two-factor authentication, and do not share accounts, credentials, recovery codes, or invitations.

The organization is a learning and research collaboration space, not an official university software service unless Seton Hill University explicitly says otherwise.

## Identity, Repository Ownership, and Privacy

Complete assigned work in the organization-owned repository provided for the course or team. A personal repository or fork is not the authoritative submission record. Do not transfer, mirror, publish, or change the visibility of organization work without written instructor authorization.

Even in a private repository, your GitHub username, commits, pull requests, reviews, and organization or team membership may reveal your identity to authorized participants. The organization must not expose rosters, accommodations, grades, or private team assignments publicly.

Public repositories contain only material approved for public release. Private repositories are not permission to commit unrestricted data. Permitted data is limited to synthetic data, public data, and specifically approved de-identified classroom or research data. Never commit regulated, confidential, student-record, credential, private-infrastructure, production, or otherwise restricted data unless the university, IRB, and IT approvals required for that repository and system have been obtained.

## Working With a Team

Use issues to describe outcomes and acceptance criteria. Pull current `main`, create a short-lived branch, make focused commits with clear messages, push the branch, and open a pull request. Complete every evidence field, run required checks, resolve review conversations, and preserve linear history. Peer review is expected when another contributor is available, but a course may support an individual or small team without a mandatory second-person approval gate.

Do not commit directly to protected `main`, bypass checks, force-push a shared branch, erase another person's work, rewrite published history, or change repository administration. Ask before resolving a conflict when the intended result is unclear.

## Required Agent Evidence

When a course requires an agent checkpoint, invoke the named agent at the stated point and record the invocation, relevant output, and your response. Agents provide evidence and advice; they do not silently write graded work, approve, merge, deploy, grade, or replace instructor judgment.

You may reject an advisory finding when you document a clear technical rationale and supporting evidence. Correct valid findings. If the agent is unavailable, record the time and error, complete the equivalent manual checklist, seek peer review when available, and disclose the outage.

A likely secret or credential finding is not student-overridable. Stop work, do not quote or reproduce the value, and report it privately through the official course or university security channel.

## Secrets and Local Configuration

Keep `.env`, local credentials, private keys, local configuration, and generated secret-bearing files ignored by Git. Commit only a sanitized `.env.example` or documented safe template containing placeholders. Local hooks supplement required server-side scanning and push protection; they do not replace them.

If a secret is committed, do not merely delete the file. Stop using the credential, notify the instructor privately, revoke or rotate it, remove it from the current tree, determine whether history remediation is required, and verify the scans. Never paste the value into an issue, pull request, screenshot, chat, agent prompt, log, or evidence record.

## Acceptable Conduct

Be respectful, specific, and constructive. Credit collaborators, disclose meaningful AI assistance, protect privacy, and stay within authorized systems. Harassment, discrimination, intimidation, doxxing, academic dishonesty, credential sharing, unauthorized access, deliberate disruption, or publishing private work is prohibited.

## End of Course

Access is reviewed when the course ends. Six months after the course ends, repositories may be archived or deleted according to faculty and IT requirements, subject to legal-hold, research, records, or IT exceptions. Before deletion, students receive notice and a reasonable export window.

With faculty review, a student may export approved work only to that student's own private repository before deletion. Export requires teammate consent where applicable, licensing review, a passing secret and security scan, removal of student, private, and infrastructure data, and compliance with research restrictions. Public portfolio publication is a separate later approval and is not automatically permitted by a private export.

## Legal Hold and Required Preservation

If you receive an official preservation instruction, immediately stop deletion, cleanup, history rewriting, repository transfer, and export-related deletion for the identified material. Do not force-push, sanitize retroactively, remove relevant records, make held content public, disclose the hold beyond authorized recipients, or treat a personal export as the authoritative record. Follow the written instructions and escalate any conflict to the named university legal, records, IT, or research authority. Do not independently interpret, narrow, release, or expire the hold.

Only the authorized issuing or releasing authority may end a hold in writing. This is operational policy, not legal advice; official university and legal instructions control.
