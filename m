X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/16/3
Message-ID: <72f6073c-62ed-4e2e-bb78-b06ee3cce433@nlnetlabs.nl>
Date: Wed, 16 Sep 2026 10:26:55 +0200
From: Yorgos Thessalonikefs <yorgos@...etlabs.nl>
To: oss-security@...ts.openwall.com
Subject: Unbound: 1.26.1 addresses multiple CVE items
Content-Type: text/plain; charset=utf-8

Hi there,

(The official announcement can be found at:
https://community.nlnetlabs.nl/t/unbound-1-26-1-released/3463)

Several vulnerabilities were found in Unbound.

We are releasing 1.26.1 as a security release today (September 16) 
including the relevant fixes.

The overview of the vulnerabilities with a brief description is:

CVE-2026-81642 - severity: CRITICAL
Heap buffer overflow and possible Remote Code Execution when digesting 
DNSKEY

CVE-2026-81634 - severity: HIGH
Possible heap buffer overflow during DNSSEC canonicalization

CVE-2026-82717 - severity: HIGH
CNAME synthesis could lead to heap corruption

CVE-2026-77955 - severity: MEDIUM
Possible ZONEMD verification bypass window

CVE-2026-78227 - severity: MEDIUM
Use-after-free in DoQ stream output buffer on reset re-transmission

CVE-2026-80225 - severity: MEDIUM
Possible degradation of service from continuous queries on the same 
TCP/DoT connection

CVE-2026-82720 - severity: MEDIUM
Use-after-free in DoH stream cleanup code path

CVE-2026-85501 - severity: MEDIUM
Retrap: Novel Vulnerabilities to launch Algorithmic Complexity Attacks 
on DNSSEC

CVE-2026-77860 - severity: LOW
'serve-expired' can bypass Unbound 'wait-limit'


More information about the vulnerabilities can be found at:
https://nlnetlabs.nl/projects/unbound/security-advisories/


Best regards,
-- Yorgos, on behalf of the Unbound team.


** This email is signed. Keys of the NLnet Labs people are published on
https://www.nlnetlabs.nl/people/ **

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (834 bytes)
