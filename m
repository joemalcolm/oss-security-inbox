X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/05/9
Message-ID: <e7814b25-cdeb-4639-bb72-e2fa1b900a2e@cpansec.org>
Date: Mon, 5 Oct 2026 07:55:09 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-19954: Net::Whois::Raw versions before 2.99044 for Perl ship a pwhois command-line tool that queries WHOIS for the wrong domain for unicode domain names
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-19954                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-19954

   Distribution:  Net-Whois-Raw
       Versions:  before 2.99044
       MetaCPAN:  https://metacpan.org/dist/Net-Whois-Raw
       VCS Repo:  https://github.com/regru/Net-Whois-Raw


Net::Whois::Raw versions before 2.99044 for Perl ship a pwhois
command-line tool that queries WHOIS for the wrong domain for unicode
domain names

Description
-----------
Net::Whois::Raw versions before 2.99044 for Perl ship a pwhois
command-line tool that queries WHOIS for the wrong domain for unicode
domain names.

pwhois encodes each non-ASCII label directly using Net::IDN::Punycode
and prepends xn--. Apart from lowercasing ASCII and Cyrillic letters,
it skips the IDNA mapping and normalization steps, so a label with
other uppercase letters, or not in NFC, encodes to a different A-label
than its IDNA form. For example, a label of U+00C9 followed by "cole"
encodes to "xn--cole-pka" rather than "xn--cole-9oa".

The Net::Whois::Raw library modules are not affected.

Problem types
-------------
- CWE-176 Improper Handling of Unicode Encoding

Workarounds
-----------
Apply the patch.

For deployments that cannot apply the patch, convert the domain name to
its A-label form, for example with Net::IDN::Encode::domain_to_ascii,
before passing it to pwhois. pwhois passes all-ASCII names through
unchanged.

References
----------
https://metacpan.org/release/NALOBIN/Net-Whois-Raw-2.99044/changes
https://security.metacpan.org/patches/N/Net-Whois-Raw/2.99043/CVE-2026-19954-r1.patch
https://github.com/regru/Net-Whois-Raw/issues/34
https://github.com/regru/Net-Whois-Raw/pull/35
https://metacpan.org/release/PJCJ/Net-IDN-Encode-2.590-TRIAL/view/lib/Net/IDN/Punycode.pm#WARNING
https://www.rfc-editor.org/rfc/rfc5891#section-5.2



