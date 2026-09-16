X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/16/4
Message-ID: <9cb7931b-7ae5-4183-a739-f9610cdcb1b2@isc.org>
Date: Wed, 16 Sep 2026 15:31:00 +0200
From: Nicki Křížek <nicki@....org>
To: oss-security@...ts.openwall.com
Cc: security-officer@....org
Subject: ISC has disclosed fourteen vulnerabilities in BIND 9 (CVE-2026-19033, CVE-2026-19662, CVE-2026-19666, CVE-2026-19667, CVE-2026-19668, CVE-2026-19941, CVE-2026-75029, CVE-2026-76163, CVE-2026-77119, CVE-2026-77692, CVE-2026-78301, CVE-2026-80274, CVE-2026-81563, CVE-2026-81736)
Content-Type: text/plain; charset=utf-8

On 16 September 2026, Internet Systems Consortium disclosed fourteen vulnerabilities affecting our BIND 9 software:

- CVE-2026-19033:       Unauthenticated IXFR deltas are applied to the live zone before TSIG verification https://kb.isc.org/docs/cve-2026-19033
- CVE-2026-19662:       qpcache NOQNAME proof use-after-free crashes recursive resolver https://kb.isc.org/docs/cve-2026-19662
- CVE-2026-19666:       Use-after-free in query_addnoqnameproof() via the DNS64 filter64 path https://kb.isc.org/docs/cve-2026-19666
- CVE-2026-19667:       Remote assertion failure via 16-bit length truncation in `dns_ncache_add()` https://kb.isc.org/docs/cve-2026-19667
- CVE-2026-19668:       Resource Exhaustion via Excessive DNSSEC Cryptographic Material Matching https://kb.isc.org/docs/cve-2026-19668
- CVE-2026-19941:       checkwildcard() accepts an out-of-zone NSEC as a wildcard-nonexistence proof https://kb.isc.org/docs/cve-2026-19941
- CVE-2026-75029:       Message parser retains every identical singleton RDATA, enabling wire-to-work amplification https://kb.isc.org/docs/cve-2026-75029
- CVE-2026-76163:       named aborts on a TKEY query when the user configuration has no global options statement https://kb.isc.org/docs/cve-2026-76163
- CVE-2026-77119:       NSEC3 insecure-referral proof can use unrelated cached NSEC3 RRsets https://kb.isc.org/docs/cve-2026-77119
- CVE-2026-77692:       Unauthenticated remote crash of named via a single DoH SIG(0) request https://kb.isc.org/docs/cve-2026-77692
- CVE-2026-78301:       Out-of-zone database nodes can become authoritative zone cuts https://kb.isc.org/docs/cve-2026-78301
- CVE-2026-80274:       Validating resolver can abort while caching a mismatched NOQNAME proof https://kb.isc.org/docs/cve-2026-80274
- CVE-2026-81563:       SVCB AliasMode additional-data error leaks qpcache references https://kb.isc.org/docs/cve-2026-81563
- CVE-2026-81736:       Remote CPU denial of service through cached SVCB/HTTPS AliasMode trees https://kb.isc.org/docs/cve-2026-81736

New versions of BIND 9 are available:

- https://downloads.isc.org/isc/bind9/9.20.29/
- https://downloads.isc.org/isc/bind9/9.21.26/

For more information and other release formats, consult the ISC software download page: https://www.isc.org/download/

With the public announcement of these vulnerabilities, the embargo period is ended and any updated software packages that have been prepared may be released.

-- 
Nicki Křížek


Download attachment "OpenPGP_0x01623B9B652A20A7.asc" of type "application/pgp-keys" (3176 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (229 bytes)
