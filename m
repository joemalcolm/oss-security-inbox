X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/11
Message-ID: <CADk+mPC0DS15FJKJZaz1j8fpXV14nn7X98oADq6Bdmsrdb-Gkw@mail.gmail.com>
Date: Tue, 17 Nov 2026 08:39:07 -0800
From: Rainer Gerhards <rgerhards@...scon.com>
To: oss-security@...ts.openwall.com
Subject: rsyslog GHSA-f9hg-rj32-693x: mmanon stack buffer overflow
Content-Type: text/plain; charset=utf-8

rsyslog GHSA-f9hg-rj32-693x: mmanon stack buffer overflow in embedded
IPv4-in-IPv6 anonymization

GHSA-f9hg-rj32-693x concerns a stack buffer overflow in rsyslog mmanon
while anonymizing an embedded IPv4-in-IPv6 token. A malformed log
message must reach a configured mmanon action with embedded IPv4
anonymization enabled. An exposed unauthenticated network input
feeding that action permits a network attacker to trigger the
vulnerable path. An assert-enabled build aborts; an NDEBUG build under
AddressSanitizer reports an out-of-bounds stack write. The
demonstrated security impact is loss of logging availability. Code
execution and confidentiality or integrity impacts have not been
established.

CVE: CVE-2026-129833
Severity: High, CVSS 3.1 7.5 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H)
CWE: CWE-121
Affected upstream versions: rsyslog >= 8.31.0, including v8.2610.0
Fixed version: 2026-11-17 daily stable
Reporter credit: Manyo9

Advisory:
https://github.com/rsyslog/rsyslog/security/advisories/GHSA-f9hg-rj32-693x

Public fix PR:
https://github.com/rsyslog/rsyslog/pull/8020

The attached source-only patch applies to current public main. It
rejects overlong embedded IPv6 groups and guards the complete token
length before copying. Malformed tokens remain unchanged.

Patch: GHSA-f9hg-rj32-693x-source-only-4d9c2e613.patch
SHA-256: 797865b29ede6f0a00728836a538ad96e72c6900cb1bbecca12441f7c08afec6

Workaround: prevent untrusted log text from reaching the affected
mmanon action. Where operationally acceptable, set
embeddedipv4.enable="off" on that action or restrict the inputs and
senders that can reach it. Disabling embedded anonymization changes
logging behavior.

Source merge, tag and binary package availability must be checked
separately; none is implied by this notice.

Download attachment "GHSA-f9hg-rj32-693x-source-only-4d9c2e613.patch" of type "application/octet-stream" (1123 bytes)
