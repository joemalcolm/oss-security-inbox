X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/31/14
Message-ID: <5020eae4-1806-4379-a836-bd662bba09db@cpansec.org>
Date: Mon, 31 Aug 2026 18:30:57 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-19953: URI versions before 5.36 for Perl encode non-NFC host names to non-standard punycode labels via missing normalization in nameprep
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-19953                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-19953
   Distribution:  URI
       Versions:  before 5.36

       MetaCPAN:  https://metacpan.org/dist/URI
       VCS Repo:  https://github.com/libwww-perl/URI


URI versions before 5.36 for Perl encode non-NFC host names to
non-standard punycode labels via missing normalization in nameprep

Description
-----------
URI versions before 5.36 for Perl encode non-NFC host names to
non-standard punycode labels via missing normalization in nameprep.

nameprep lowercases each host label but performs no Unicode
normalization. IDNA requires a label to be normalized to Form C before
it is encoded (RFC 5891), so a label that is not already in NFC is
encoded to a different A-label than its normalized form. A label built
from the precomposed Devanagari sequence U+0958 U+093E encodes to
xn--72b5c without normalization but to xn--11b2fg after NFC
normalization, and xn--72b5c does not round-trip back to the original
label.

Any caller that reads host() from a URI built from untrusted input and
uses it for a security decision (an allow or deny list, an SSRF filter,
deduplication, a cache key) sees the non-standard label, while a client
that fetches the same URL resolves the NFC form, so the check and the
fetch can disagree about the host.

Problem types
-------------
- CWE-1289 Improper Validation of Unsafe Equivalence in Input

Solutions
---------
Upgrade to URI 5.36 or later.

References
----------
https://github.com/libwww-perl/URI/commit/956619a9e94f86d8d2c529b4e06a3674c54a73e7.patch
https://github.com/libwww-perl/URI/pull/191
https://metacpan.org/release/OALDERS/URI-5.36/changes
https://www.rfc-editor.org/rfc/rfc5891#section-5.2

Credits
-------
Naseeb Dangi (naseeb0), Nankai University, finder



