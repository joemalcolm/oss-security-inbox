X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/14/11
Message-ID:  <DBBPR04MB7673D6B7BB8E058423E608DB929D2@DBBPR04MB7673.eurprd04.prod.outlook.com>
Date: Wed, 14 Oct 2026 18:46:01 +0000
From: Oleh Konko <security@...al.org>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Multiple TLS libraries: X.509 Name Constraints enforcement bypasses (CVE-2026-34073, CVE-2026-3833, CVE-2026-5263, CVE-2026-33810; CERT/CC VU#573195, VU#948176, VU#410595)
Content-Type: text/plain; charset=utf-8

Hello,

CERT/CC published three vulnerability notes on 13 and 14 October 2026
about how open-source TLS/X.509 libraries enforce Name Constraints
(RFC 5280 section 4.2.1.10). I reported the findings. This is a
summary of public fixes and statuses; it does not announce new CVEs.

https://kb.cert.org/vuls/id/573195
https://kb.cert.org/vuls/id/948176
https://kb.cert.org/vuls/id/410595

The differences fall into four areas: DNS-name comparison (RFC 5280
requires case-insensitive matching), IP addresses (the RFC does not say
whether IPv4-mapped IPv6 should be treated as IPv4), URI-authority
parsing, and wildcards (the RFC does not define wildcard SAN semantics).

Fixed or merged:

  pyca/cryptography  CVE-2026-34073, fixed in 46.0.6. DNS constraints
                     were checked against the certificate's SANs but not
                     against the requested peer name.
                     GHSA-m959-cc7f-wv43
  rustls/webpki      wildcards under permitted subtrees: CVE-2026-93601,
                     fixed in 0.103.12 / 0.104.0-alpha.6
                     (GHSA-xgp8-3hg3-c2mh). Unsupported URI constraints
                     were accepted: CVE-2026-93600, first fix in
                     0.103.12 / 0.104.0-alpha.6, excludedSubtrees case
                     completed in 0.103.13 / 0.104.0-alpha.7
                     (GHSA-965h-392x-2mh5).
  GnuTLS             CVE-2026-3833, fixed in 3.8.13. DNS names and the
                     domain part of rfc822Name constraints compared
                     case-sensitively. Independently co-reported.
  wolfSSL            CVE-2026-5263, fixed in 5.9.1: URI constraints parsed
                     but not enforced. Fragment wildcards (e.g. *foo.com):
                     PR 9991, in 5.9.1. Note: VU#948176 cites
                     CVE-2026-3547 for the URI report; that CVE record
                     describes an ALPN parsing issue.
  AWS-LC             wildcard Common Name fallback fixed in 1.71.0 /
                     aws-lc-sys 0.39.0 (GHSA-3jrg-j22w-mpmc,
                     GHSA-394x-vwmw-crm3). The same advisory covers
                     Unicode CN; VU#948176 lists that report as still
                     under coordination.
  Go crypto/x509     CVE-2026-33810, fixed in Go 1.26.2 (GO-2026-4866,
                     co-credited): case handling in wildcard
                     parent-constraint lookup.
  OpenSSL            URI authority: the userinfo scan for @ ran past
                     /, ? or #. PR #30319; OpenSSL confirmed on
                     2026-09-10 that it is in all then-supported versions.
  BoringSSL          VU#410595.8 (wildcard vs excluded host) and .12
                     (trailing-dot DNS names) fixed upstream in commit
                     5774eca (2026-03-04), legacy crypto/x509 path.

Open, disputed or declined (per the notes):

  Go                 two reports in triage; IPv4-mapped IPv6 report not
                     accepted as meeting the security bar
  OpenSSL            userinfo-colon report in triage
  BoringSSL          .9 accepted (upstream change b84dc60, 2026-05-05),
                     .10 disputed, .11 declined
  Mozilla NSS        IP-address report under coordination
  LibreSSL           wildcard report under coordination
  s2n-tls            Common Name fallback report in triage
  Mbed TLS           non-critical Name Constraints not enforced in the
                     reported configuration; vendor treats support as a
                     feature request, reporter's concern disputed

Conditions, according to CERT/CC: an attacker needs a trusted signature
over chosen certificate fields, an affected validation path must be
reachable, and the application must use the accepted name for
authorization. The notes do not report exploitation. Using one of these
libraries does not by itself mean a product reaches an affected path.

No test vectors are published for anything not fixed.

Per-finding status with dated sources:
https://paperlock.org/findings/

Regards,
Oleh Konko
1seal - https://1seal.org/research/

