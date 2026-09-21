X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/21/2
Message-ID: <abb35bcb-e25b-3c20-d01e-fb36a955a2ca@apache.org>
Date: Mon, 21 Sep 2026 12:47:17 +0000
From: Emmanuel Lécharny <elecharny@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-94301: Apache MINA: CVE-2026-47065 resolveProxyClass fix missing from 2.0.X and 2.1.X branches (2.0.30 / 2.1.14) ZDRES-232 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache MINA 2.0.0 before 2.0.31
- Apache MINA 2.1.0 before 2.1.15

Description:

The fix for CVE-2026-47065/ZDRES-232 ("resolveProxyClass Not Overridden - acceptMatchers Filter Bypass via java.lang.reflect.Proxy"), released on 2026-06-02 and announced as "Fully addressed" in MINA 2.2.8, 2.1.13 and 2.0.29, was committed to the
 2.2.X branch only. The 2.0.X and 2.1.X maintenance branches never received the resolveProxyClass() override, so the 2.0.29 and 2.1.13 artifacts listed as fixed -- and every later release on those lines, up to and including the current 2.0.30 and 2.1.14 -- remain vulnerable to the exact allow-list bypass that CVE-2026-47065 was meant to close.

Credit:

tonghuaroot (finder)

References:

https://lists.apache.org/thread/rzos6zds5x7obl8trkvznt1djw4f996p
https://mina.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-94301

