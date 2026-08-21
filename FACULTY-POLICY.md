# Faculty Policy

Version: 0.3.0

## Scope and Responsibility

Faculty use the organization for approved teaching, supervised research, and collaboration. It is not an official institutional software or records service unless the university designates it as one. Faculty remain responsible for course design, access decisions, grading, accommodations, incident escalation, and repository lifecycle decisions.

## Provisioning and Least Privilege

Keep rosters and team assignments in the approved private course-administration system. Create organization-owned repositories only after exact GitHub usernames and team assignments are confirmed. Student project repositories are private by default. Give instructors administrative access and students only the access needed for issues, branches, pull requests, and assigned project work.

Follow `ORGANIZATION-STRUCTURE.md`. Faculty belong to the standing `Instructors` team, but receive repository access through course-and-semester instructor teams. Faculty do not create arbitrary organization repositories: use the approved provisioning path and naming grammar. A teaching administrator belongs in `Instructors`; institutional IT personnel remain in `SHU-IT` unless they also teach.

Do not expose student membership, accommodations, grades, private repository URLs, or access exceptions in public organization content. Test permissions with representative instructor and student roles before graded work begins.

## Required Repository Baseline

Provision the current organization-approved template and every file in `REPOSITORY-STANDARDS.md`. Protect `main`; require strict `verify` and `gitleaks` checks, resolved conversations, and linear history; block force pushes and deletion; and enforce the rule for administrators. Peer review is expected when available, but do not impose a mandatory approval count unless the course explicitly requires and can support it.

Enable GitHub secret scanning and push protection where the plan supports them. Local safeguards supplement server enforcement. Validate each new repository with a harmless pull request before student use.

## Agents and Grading

Agents may inspect, plan, review, and run safe read-only checks. They must not write graded work silently, submit reviews, approve, merge, deploy, administer repositories, calculate grades, or enter grades. Define required checkpoints and evidence in course materials. Students may override advisory findings with written technical evidence. Likely secret findings and required security gates are not student-overridable.

Grade observable student evidence: issues, commits, pull requests, tests, review conversations, decisions, milestone tags, agent records, reflections, and demonstrations of understanding. An agent report is evidence, not a grade. Faculty retain final grading authority and must account for approved accommodations without exposing them in GitHub.

## Security and Incidents

Publish only official private reporting routes already approved for the course or university. Never place personal faculty email addresses in public policy solely for incident handling. For a suspected secret, stop use, preserve safe facts, rotate or revoke the credential, remove it from the current tree, decide with the appropriate security owner whether history remediation is required, and verify scans. Do not reproduce the value.

## Archival, Retention, and Offboarding

At course close, remove unnecessary elevated access, confirm repository visibility, inventory secrets and external integrations, disable unused deployments, record final versions, and archive repositories when appropriate. Before permitting a portfolio export, require privacy, licensing, teammate-consent, and security review.

Review access at course close. Six months after the course ends, repositories may be archived or deleted according to faculty and IT requirements. Notify students before deletion and provide a reasonable export window. Legal holds, approved research obligations, records requirements, or IT requirements may extend or alter this schedule.

Portfolio export is permitted only to the student's own private repository, before deletion, after faculty review, teammate consent where applicable, licensing review, secret and security scans, removal of student/private/infrastructure data, and compliance with research restrictions. Public portfolio publication requires a separate later approval.

## Legal Hold and Required Preservation

A valid legal or litigation hold, records-preservation directive, subpoena-related preservation notice, research-integrity hold, or other authorized university preservation directive immediately suspends ordinary six-month deletion, archival disposal, offboarding destruction, history rewriting, repository transfer or export deletion, and automated cleanup for all identified material.

Preserve identified repositories and related metadata in their existing form, including commits and branches; issues; pull requests, reviews, and comments; releases and tags; retained Actions results and logs; security and incident records; available organization audit and access records; packages and artifacts; and approved linked evidence. Do not delete, force-push, rewrite history, destroy or rotate away relevant evidence, remove relevant accounts or access records, sanitize retroactively, or treat a student export as a substitute for the authoritative held record.

Limit access under least privilege. Do not make held content public or disclose the existence or scope of a hold beyond authorized recipients. Faculty, students, and agents must follow official written preservation instructions and immediately escalate conflicts to the named university legal, records, IT, or research authority. They must not independently interpret, narrow, release, or expire the hold. Only the authorized issuing or releasing authority may end it in writing. After written release, normal retention and offboarding resume according to documented instructions.

Human owners must mark held resources and exclude them from automated deletion and offboarding. Agents and workflows must never delete or offboard a held repository. When GitHub retention is insufficient, coordinate with university-authorized archival or export systems; this policy does not promise indefinite technical retention beyond platform capabilities. This is operational policy, not legal advice. Official university and legal instructions control.

## Exceptions and Changes

Follow `EXCEPTIONS-AND-OVERRIDES.md`. Dr. Matthew Kisow may approve instructional exceptions. That authority cannot waive or override a legal hold, institutional preservation directive, law, security control, privacy or records obligation, or IRB or research requirement. IT, legal, IRB, records, privacy, or other authorized university approval remains required when an exception affects those areas. Record the owner, reason, scope, duration, safeguards, approval, review date, and rollback. Secrets and required security gates are non-waivable.

## Organization-Wide Enforcement Recommendation

Configure an organization-level policy, ruleset, template, or equivalent managed baseline so every future course repository automatically receives private-by-default student visibility, secret scanning and push protection, protected `main`, strict `verify` and `gitleaks` checks, resolved conversations, least-privilege access, force-push and deletion blocks, and the standard policies and templates. Preserve zero mandatory approving reviews for individual and small teams.

Organization-wide enforcement does not access student personal repositories, make student repositories public, authorize agents to merge or grade, or weaken faculty judgment, approved accommodations, privacy duties, or course-specific evidence requirements.
