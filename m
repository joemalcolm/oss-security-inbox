X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/8
Message-ID: <b015e67b-5655-47b9-8d4e-a4786dd594bc@isc.org>
Date: Wed, 21 Oct 2026 14:57:40 +0200
From: Andoni Duarte Pintado <andoni@....org>
To: oss-security@...ts.openwall.com
Cc: security-officer@....org
Subject: ISC has disclosed four vulnerabilities in BIND 9 (CVE-2026-19630, CVE-2026-94300, CVE-2026-96888, CVE-2026-97313)
Content-Type: text/plain; charset=utf-8

On 21 October 2026, Internet Systems Consortium disclosed four 
vulnerabilities affecting our BIND 9 software:

- CVE-2026-19630:       Amplified resource exhaustion in inbound message 
processing https://kb.isc.org/docs/cve-2026-19630
- CVE-2026-94300:       Concurrent GSS-TSIG messages corrupt memory 
https://kb.isc.org/docs/cve-2026-94300
- CVE-2026-96888:       Named may terminate unexpectedly when a redirect 
zone is used with strict QNAME minimization 
https://kb.isc.org/docs/cve-2026-96888
- CVE-2026-97313:       Specific RPZ configurations and query patterns 
may result in an unexpected exit https://kb.isc.org/docs/cve-2026-97313

New versions of BIND 9 are available:

- https://downloads.isc.org/isc/bind9/9.20.30/
- https://downloads.isc.org/isc/bind9/9.21.27/

For more information and other release formats, consult the ISC software 
download page: https://www.isc.org/download/

With the public announcement of these vulnerabilities, the embargo 
period is ended and any updated software packages that have been 
prepared may be released.

Download attachment "OpenPGP_0xAC8CB67D23BB7510.asc" of type "application/pgp-keys" (665 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (237 bytes)
