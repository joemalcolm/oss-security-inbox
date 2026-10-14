X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/14/12
Message-ID: <67a2f0f9-5e78-49d6-87b9-aff4e6f6c371@nlnetlabs.nl>
Date: Wed, 14 Oct 2026 21:09:47 +0200
From: Willem Toorop <willem@...etlabs.nl>
To: oss-security@...ts.openwall.com
Subject: NSD 4.15.3 security release
Content-Type: text/plain; charset=utf-8

Several vulnerabilities were found in NSD.
We released 4.15.3 as a security release on Wednesday 14 October 
including the relevant fixes.

The overview of the vulnerabilities with a brief description is:

CVE-2026-101337 - severity: HIGH
RCE class stack overwrite from specially formatted base64 RDATA field

CVE-2026-101338 - severity: HIGH
RCE class stack overwrite from a crafted and formatted SVCB or HTTPS RR

CVE-2026-101339 - severity: HIGH
RCE class stack overwrite from a crafted and formatted HIP RR

CVE-2026-101341 - severity: HIGH
RCE class stack overwrite from specially formatted TXT-DATA RDATA field

You can find detailed information on each vulnerability attached to this 
email along with their respective patches.

For ease of deployment we also provide a combined patch including all of 
them (patch_combined-4.15.3.diff).

The patches are tested to apply/work on 4.15.2.


Best regards,
-- Willem, on behalf of the NSD team.

View attachment "CVE-2026-101337.txt" of type "text/plain" (1477 bytes)

View attachment "patch_CVE-2026-101337.diff" of type "text/x-patch" (1717 bytes)

View attachment "CVE-2026-101338.txt" of type "text/plain" (1433 bytes)

View attachment "patch_CVE-2026-101338.diff" of type "text/x-patch" (604 bytes)

View attachment "CVE-2026-101339.txt" of type "text/plain" (1464 bytes)

View attachment "patch_CVE-2026-101339.diff" of type "text/x-patch" (4538 bytes)

View attachment "CVE-2026-101341.txt" of type "text/plain" (1572 bytes)

View attachment "patch_CVE-2026-101341.diff" of type "text/x-patch" (407 bytes)

View attachment "patch_combined-4.15.3.diff" of type "text/x-patch" (7266 bytes)

Download attachment "OpenPGP_0xE5F8F8212F77A498.asc" of type "application/pgp-keys" (6255 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (834 bytes)
