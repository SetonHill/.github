# Exceptions and Overrides

Version: 0.3.0

## Advisory Agent Findings

Agent findings are advice and evidence, not approval or a grade. A student may override an advisory finding by recording the finding, the decision, a technical rationale, supporting tests or documentation, risks, and the person accountable. The instructor decides whether that evidence satisfies course expectations.

Correct valid findings. Do not omit, hide, or silently dismiss a finding. Agent outages use the documented manual checklist, timestamped error record, peer review when available, and disclosure.

## Non-Overridable Security Stops

A likely secret or credential finding, failed required secret scan, disabled push protection where it is required and available, or attempted exposure of restricted student or infrastructure data stops the workflow. A student cannot override the stop. Do not quote the suspected value. Escalate privately, rotate or revoke affected credentials, and follow `SECURITY.md`.

Only the authorized instructor and the university IT or security owner may resolve a security stop after evidence shows the risk has been contained. They may not declare an exposed credential safe without rotation merely to permit a merge. Secrets and required security gates are non-waivable.

## Faculty and Organization Exceptions

A policy exception records the requester, approver, reason, exact scope, duration, safeguards, review date, and rollback. Keep sensitive exception details in the approved private system. Public policy records may state that an exception exists without identifying a student or exposing protected facts.

Dr. Matthew Kisow may approve instructional exceptions. IT, legal, IRB, records, privacy, or other authorized university approval is also required when security, privacy, research, records, or institutional controls are implicated. Public-release exceptions require the applicable privacy, licensing, teammate-consent, and security reviews.

## Legal Hold and Required Preservation

Dr. Matthew Kisow's instructional exception authority cannot waive or override a legal or litigation hold, records-preservation directive, subpoena-related preservation notice, research-integrity hold, other authorized university preservation directive, law, security control, privacy or records obligation, or IRB or research requirement.

A valid written preservation directive immediately suspends ordinary deletion, archival disposal, offboarding destruction, history rewriting, repository transfer or export deletion, and automated cleanup for identified material. Preserve the repository and related metadata in their existing form. Do not force-push, sanitize retroactively, destroy relevant evidence, remove relevant accounts or access records, or allow a student export to substitute for the authoritative held record.

Follow official written instructions and escalate conflicts immediately to the named university legal, records, IT, or research authority. Do not independently interpret, narrow, release, or expire a hold. Only its authorized issuing or releasing authority may end it in writing. Limit access under least privilege, keep the hold and its scope confidential except to authorized recipients, and never make held content public.

Human owners must mark and exclude held resources from automated deletion or offboarding. Agents and workflows must not delete held resources. If GitHub cannot meet the required retention, coordinate with university-authorized archival or export systems. This is operational policy, not legal advice; official university and legal instructions control.
