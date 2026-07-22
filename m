X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/22/8
Message-ID: <amDNLxJhBEV2lB7z@larwa.hq.kempniu.pl>
Date: Wed, 22 Jul 2026 16:01:19 +0200
From: Michał Kępień <michal@....org>
To: oss-security@...ts.openwall.com
Cc: security-officer@....org
Subject: ISC has disclosed nine vulnerabilities in BIND 9 (CVE-2026-10723, CVE-2026-10822, CVE-2026-11331, CVE-2026-11605, CVE-2026-11622, CVE-2026-11721, CVE-2026-12617, CVE-2026-13204, CVE-2026-13321)
Content-Type: text/plain; charset=utf-8

On 22 July 2026, Internet Systems Consortium disclosed nine vulnerabilities affecting our BIND 9 software:

- CVE-2026-10723:       Incorrect acceptance of NSEC3 records https://kb.isc.org/docs/cve-2026-10723
- CVE-2026-10822:       Key Record using PRIVATEDNS algorithm may lead to unexpected exit https://kb.isc.org/docs/cve-2026-10822
- CVE-2026-11331:       Potential wildcard CNAME RPZ policy bypass https://kb.isc.org/docs/cve-2026-11331
- CVE-2026-11605:       Unnecessary validation of DNSSEC signed records https://kb.isc.org/docs/cve-2026-11605
- CVE-2026-11622:       Potential memory usage beyond configured limits https://kb.isc.org/docs/cve-2026-11622
- CVE-2026-11721:       Cache poisoning possible with label count discrepancy, RRSIG, and wildcards https://kb.isc.org/docs/cve-2026-11721
- CVE-2026-12617:       Record ordering based unexpected exit with CNAME or DNAME https://kb.isc.org/docs/cve-2026-12617
- CVE-2026-13204:       Unexpected exit in certain situations with NSEC and NSEC3 both present https://kb.isc.org/docs/cve-2026-13204
- CVE-2026-13321:       DNSSEC Validation Bypass via Out-of-Zone NSEC Next Field https://kb.isc.org/docs/cve-2026-13321

New versions of BIND 9 are available:

- https://downloads.isc.org/isc/bind9/9.20.26/
- https://downloads.isc.org/isc/bind9/9.21.24/

For more information and other release formats, consult the ISC software download page: https://www.isc.org/download/

With the public announcement of these vulnerabilities, the embargo period is ended and any updated software packages that have been prepared may be released.

-- 
Best regards,
Michał Kępień
