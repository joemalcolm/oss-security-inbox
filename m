X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/11
Message-ID: <ddaf4ff4-761d-4860-ad7f-05c024ebbe3c@nlnetlabs.nl>
Date: Wed, 21 Oct 2026 11:06:11 +0200
From: Yorgos Thessalonikefs <yorgos@...etlabs.nl>
To: oss-security@...ts.openwall.com
Subject: Unbound: 1.26.2 addresses multiple CVE items
Content-Type: text/plain; charset=utf-8

Hi there,

(The official announcement can be found at:
https://community.nlnetlabs.nl/t/unbound-1-26-2-released/3495)

Several vulnerabilities were found in Unbound.

We are releasing 1.26.2 as a security release today (October 21) 
including the relevant fixes.

The overview of the vulnerabilities with a brief description is:

CVE-2026-97206 - severity: HIGH
DoQ path-migration can lead to use-after-free on multi-threaded deployments.

CVE-2026-50106 - severity: MEDIUM
Possible insecure NXDOMAIN for non-existing records under a configured 
island trust anchor underneath an insecure parent.

CVE-2026-96405 - severity: MEDIUM
Aggregate DNS name chained pointer decompression work leads to 
degradation of service.

CVE-2026-109125 - severity: MEDIUM
Possible cache poisoning vulnerability via a cache side-channel exposed 
by 'unwanted-reply-threshold'.

CVE-2026-35501 - severity: LOW
Bypass of a configured island trust anchor underneath an insecure parent 
from an atacker-controlled NSEC record.


More information about the vulnerabilities can be found at:
https://nlnetlabs.nl/projects/unbound/security-advisories/


Best regards,
-- Yorgos, on behalf of the Unbound team.


** This email is signed. Keys of the NLnet Labs people are published on
https://www.nlnetlabs.nl/people/ **

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (834 bytes)
