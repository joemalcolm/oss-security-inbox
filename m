X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/28/2
Message-ID: <8e0643ac-b114-48f9-a979-d5e5bd9a4081@nlnetlabs.nl>
Date: Fri, 28 Aug 2026 12:12:25 +0200
From: Willem Toorop <willem@...etlabs.nl>
To: oss-security@...ts.openwall.com
Subject: NSD 4.15.1 security release
Content-Type: text/plain; charset=utf-8

Several vulnerabilities were found in NSD.
We released 4.15.1 as a security release on Wednesday 26 August 
including the relevant fixes.

The overview of the vulnerabilities with a brief description is:

CVE-2026-18664 - severity: HIGH
Wrong interpretation of ACL ranges

CVE-2026-18916 - severity: MEDIUM
Remote TCP DoS by throttling the TCP receive window

CVE-2026-19401 - severity: HIGH
Remote UDP DoS by sending multiple DNS Cookie options

CVE-2026-19538 - severity: HIGH
Bypass of BLOCKED ACL items on proxy protocol port over TCP or TLS

You can find detailed information on each vulnerability attached to this 
email along with their respective patches.

For ease of deployment we also provide a combined patch including all of 
them (patch_combined-4.15.1.diff).

The patches are tested to apply/work on 4.15.0.


Best regards,
-- Willem, on behalf of the NSD team.


View attachment "CVE-2026-18664.txt" of type "text/plain" (1482 bytes)

View attachment "patch_CVE-2026-18664.diff" of type "text/x-patch" (880 bytes)

View attachment "CVE-2026-18916.txt" of type "text/plain" (1067 bytes)

View attachment "patch_CVE-2026-18916.diff" of type "text/x-patch" (962 bytes)

View attachment "CVE-2026-19401.txt" of type "text/plain" (1227 bytes)

View attachment "patch_CVE-2026-19401.diff" of type "text/x-patch" (2044 bytes)

View attachment "CVE-2026-19538.txt" of type "text/plain" (1254 bytes)

View attachment "patch_CVE-2026-19538.diff" of type "text/x-patch" (452 bytes)

View attachment "patch_combined-4.15.1.diff" of type "text/x-patch" (4286 bytes)

Download attachment "OpenPGP_0xE5F8F8212F77A498.asc" of type "application/pgp-keys" (6255 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (834 bytes)
