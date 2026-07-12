X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/12/1
Message-ID: <5975BDB8-1045-4921-BAED-C1E3809DC5E5@proton.me>
Date: Sun, 12 Jul 2026 10:13:27 +0000
From: gregdurys.security@...ton.me
To: oss-security@...ts.openwall.com
Subject: Skillable SCORM launch: userId parameter not validated against session token allows allocation bypass and cross-user DoS
Content-Type: text/plain; charset=utf-8

Skillable (formerly Learn on Demand Systems) is a hosted lab-
provisioning service integrated into learning management systems over
SCORM. The SCORM lab launch endpoint at scorm.skillable.com validates
a SCORM launch token sufficiently to authorise the launch, but enforces its per-user
launch limit against a userId query parameter that the browser
supplies and that is never cross-validated against the token (CWE-639,
authorisation bypass through a user-controlled key). An authenticated
student can alter the userId client-side to bypass launch rate limits,
launch concurrent lab instances that provision cloud VMs at the
course provider's expense, and consume another enrolled user's lab allocation to deny them
access. Skillable subsequently confirmed to an affected customer
that the same weakness could affect exam allocations and could
return details associated with another learner's session. Testing
was performed against the reporter's own enrolment and, for
cross-user confirmation, a consenting fellow student's account on the Red Team Ops course. The
vendor's position is that this is an inherent SCORM limitation rather
than an implementation flaw. The vendor states that no fix is planned
for the SCORM launch path, and the recommended remediation is migration to an API or LTI
1.3 launch integration. CVE-2026-56877 was assigned by MITRE.


Identifiers
-----------
GHSA: not applicable
CVE: CVE-2026-56877 (assigned; record publication pending)


Affected project
----------------
Vendor: Skillable (formerly Learn on Demand Systems)
Service: Hosted SCORM lab provisioning (scorm.skillable.com)
Affected endpoint: GET /scorm/launch (userId query parameter)
Related scaling vector: authenticated learner enumeration exposed by the LMS


Affected versions
-----------------
Hosted service; no version identifiers or commit hashes apply.
Confirmed affected during testing on 2026-04-28 and subsequently
acknowledged by the vendor. The vendor states that no fix is planned
for the SCORM launch path.
Fix: none public as of publication (the vendor states
no fix is planned for the SCORM launch path).


Severity
--------
CVSS 3.1 Base Score: 6.5 (Medium)
Vector: AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H


Summary
-------
The SCORM lab launch flow runs entirely client-side. Loading a lab
unit in the LearnWorlds course player builds a launch URL and requests
it from scorm.skillable.com with a SCORM token and a userId as query
parameters. Skillable validates the token sufficiently to authorise the launch, then
evaluates the per-user launch limit against the supplied userId. The
token answers whether the session is enrolled; the userId decides
whose allocation the launch counts against. The token is server-validated, while the userId is
client-controlled, and no binding between the two is enforced.

The userId accepts arbitrary strings with no format validation. Both
683175c1ac36b0299c24b31g (expected length, non-hexadecimal final character) and
000000000000000000000001 (a fabricated structure) were accepted and
provisioned lab instances. The same SCORM token launches labs under
different userId values, which confirms the token is not bound to a
specific user identity, and each launch under a distinct userId
creates a separate LabInstanceId. The token remained unchanged across the tested launches, indicating
that it did not provide a user-specific binding to the supplied
userId.

Confirmed against the reporter's own account: rate-limit bypass
(launches beyond the configured per-user limit) and concurrent lab
instances running under a single token. Cross-user denial of service
was confirmed on 2026-05-03 against a consenting fellow student. A lab
launched under that student's userId consumed the student's
allocation, and the student was subsequently locked out of the same
lab while other labs launched normally, which matches how a consumed
per-user allocation presents to the victim. An authenticated user enumeration vector on the LMS returns
other enrolled users' userId values and would scale any of these
across the enumerable enrolled population. Each lab instance typically provisions a domain controller
plus one to three machines for 30 to 60 minutes, at the course
provider's expense.

The exam launch path was not tested by the reporter. Skillable's
customer advisory confirmed that another learner's exam allocation
could be consumed through the same mechanism, and that a launch
response could return details of another learner's active or saved
session. The CVSS score above covers only the confirmed cross-user
denial of service (C:N/I:N/A:H). The possible session-data exposure
was identified by Skillable and was not independently verified by the
reporter, so it is not reflected in the score.


Remediation
-----------
Bind the launch to a server-validated learner identity, for example
through a user-scoped signed token or server-to-server integration.
Do not enforce per-user limits using an unverified browser-supplied
userId. Where such binding cannot be added to the legacy SCORM path,
migrate to the API or LTI 1.3 integration.

The vendor has declined to apply a server-side fix to the SCORM launch
path. The vendor's recommended remediation for affected customers is
migration to an API or LTI 1.3 launch integration, which carries the
identity binding the SCORM launch path lacks.


Disclosure timeline
-------------------
2026-04-28 Per-user rate-limit error observed; userId modification via
a proxy match-and-replace rule returned a new LabInstanceId
2026-04-29 Concurrent lab instances confirmed against a single account
2026-05-03 Cross-user denial of service confirmed with a consenting
fellow student
2026-05-08 Findings documented; Skillable support ticket #4043837
raised; disclosure channel provided
2026-05-11 Report submitted to Disclosures@...llable.com (encrypted
archive)
2026-05-13 Skillable acknowledged receipt (Nat Shere, Manager, Product
Security)
2026-05-19 CVE request submitted to MITRE (Skillable is not a CNA)
2026-05-27 Status request to Skillable - no response
2026-06-08 Second follow-up, restating the 60-day disclosure window
(closing 2026-07-12)
2026-06-10 Skillable responded that the issue is "an inherent flaw in
the SCORM technology" and asked that it not be disclosed
without written permission
2026-06-10 Pushback sent; open-ended embargo declined; 2026-07-12 date
held
2026-06-23 MITRE assigned CVE-2026-56877; coordinated disclosure
remained under embargo until 2026-07-12
2026-06-26 Skillable sent at least one affected customer an advisory ("SCORM-based
lab launches and recommended migration"; no CVE, no CVSS),
stating no server-side fix for the SCORM path and
recommending migration
2026-06-26 Coordination update sent to Skillable noting the assignment
and the embargo date
2026-07-12 Advisory published


Current status
--------------
Vendor fix: none planned for the SCORM launch path
Vendor remediation: migrate to an API or LTI 1.3 launch integration
Customer advisory: sent to at least one affected customer on 2026-06-26 (private
notification, no CVE, no CVSS)
CVE: CVE-2026-56877, assigned by the MITRE CNA of
Last Resort


References
----------
[1] Advisory writeup:
https://payloadforge.io/beyond-crto-skillable/
[2] GitHub advisory:
https://github.com/GregDurys/security-advisories/tree/main/skillable
[3] CVE-2026-56877:
https://www.cve.org/CVERecord?id=CVE-2026-56877
[4] CWE-639: Authorization Bypass Through User-Controlled Key:
https://cwe.mitre.org/data/definitions/639.html


Credit
------
Discovered by Greg Durys
https://github.com/GregDurys


