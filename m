X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/04/10
Message-ID: <f1a15e19-36ba-4dd5-8187-0b2f94c868ae@redhat.com>
Date: Wed, 4 Nov 2026 12:01:04 -0500
From: Carlos O'Donell <carlos@...hat.com>
To: oss-security@...ts.openwall.com
Subject: The GNU C Library security advisories update for 2026-11-04
Content-Type: text/plain; charset=utf-8

The following security advisories have been published:

GLIBC-SA-2026-0026:
===================
BIG-HKSCS decoding hang on crafted input

Converting crafted BIG-HKSCS input to UCS-4 or the internal wide
character encoding, for example with iconv, in the GNU C Library version
2.18 through 2.31 may result in the converter making no progress,
causing the calling application to hang.

When decoding input in the BIG5-HKSCS character set, four double-byte
sequences map to two Unicode code points each (for example, 0x88 0x62
maps to U+00CA U+0304).  The BIG5-HKSCS gconv step emits the first code
point and saves the second one in the converter state, to be emitted on
the following call.  After emitting the saved second code point the step
failed to clear the converter state.  As a result, when such a sequence
is decoded, subsequent calls repeatedly re-emit the saved second code
point and consume no input.  The converter then keeps emitting the
pending character without consuming further input, so an application
that retries the conversion loops forever.  The input and encoding must
be attacker controlled.

CVE-Id: CVE-2026-122054
Public-Date: 2020-03-27
Vulnerable-Commit: f22bc486c1ce5e92380a0d06b98fbba639d170e4 (2.17.90-786)
Fix-Commit: c580e6466d6da8262820cdbad19f32c5546226cf (2.32)
CVSS: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:H - 5.9
Reported-By: Tom Honermann

