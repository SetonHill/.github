# Security Policy

Version: 0.3.0

## Report Privately

Report a suspected vulnerability or exposed credential through an approved private repository vulnerability-reporting mechanism when enabled or the university's official IT/security channel. Use the official course or syllabus channel for course-specific coordination. Do not open a public issue or discussion. Do not include the secret or restricted data in the report; provide only the repository, affected area, time observed, and safe impact description.

Use the university's official IT/security channel. Do not substitute a personal faculty email or invent a reporting URL.

## Secret Response

If a secret is committed or displayed:

1. Stop using it and stop the affected workflow.
2. Notify the instructor or security owner privately.
3. Revoke or rotate the credential promptly.
4. Remove it from the current tree without reproducing it elsewhere.
5. Determine with the authorized security owner whether Git-history remediation is required.
6. Verify GitHub push protection, secret scanning, Gitleaks, local scans, and any affected system.
7. Record only sanitized incident facts and recovery evidence.

Deleting the latest file or commit is not sufficient because the value may remain in history. Never paste a secret into an issue, pull request, screenshot, chat, agent prompt, log, journal, or evidence record.

Likely secret findings and required security checks cannot be overridden by students. Agents must stop without quoting the value and direct private escalation.

## Baseline

Require two-factor authentication, least privilege, private-by-default student repositories, protected `main`, strict `verify` and `gitleaks` checks, GitHub secret scanning, push protection where available, ignored local secret files, and sanitized environment templates. Classroom examples are educational patterns and are not automatically production-safe.

## Legal Hold and Required Preservation

A valid legal or litigation hold, records-preservation directive, subpoena-related preservation notice, research-integrity hold, or other authorized university preservation directive suspends ordinary deletion, archival disposal, offboarding destruction, history rewriting, repository transfer or export deletion, evidence rotation or destruction, and automated cleanup for identified material. Credential rotation needed to contain an active security incident must be coordinated so relevant evidence is preserved safely; never keep using an exposed credential merely to preserve evidence.

Preserve identified repositories, security and incident records, retained workflow results and logs, available audit and access records, and other identified metadata in their existing form. Do not delete, force-push, rewrite history, sanitize retroactively, remove relevant accounts or access records, or permit a student export to replace the authoritative held record.

Restrict access under least privilege. Do not make held content public or disclose the existence or scope of a hold beyond authorized recipients. Follow official written preservation instructions and immediately escalate conflicts to the named university legal, records, IT, or research authority. Only the authorized issuing or releasing authority may end a hold in writing. Agents and automated workflows must not delete or offboard held resources; a human owner marks and excludes them from automation.

After written release, normal retention and offboarding resume as directed. When GitHub retention is insufficient, coordinate with university-authorized archival or export systems. This is operational policy, not legal advice; official university and legal instructions control.
