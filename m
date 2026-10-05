X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/05/16
Message-ID: <06678f84-23c7-4fca-a88e-bc32bce55375@pipping.org>
Date: Mon, 5 Oct 2026 20:18:10 +0200
From: Sebastian Pipping <sebastian@...ping.org>
To: oss-security@...ts.openwall.com
Subject: libexpat 2.9.0 fixes two vulnerabilities
Content-Type: text/plain; charset=utf-8

Hello oss-security,


just a quick note that libexpat 2.9.0 (or "Expat 2.9.0") released today
is fixing two vulnerabilities:

- CVE-2026-77214
- CVE-2026-102633

The related part of the change log is this:

   #1392  CVE-2026-102633 -- Integer overflow in function expat_realloc
            on 32bit platforms
   #1393  CVE-2026-77214 -- Validate parameter `len` against available
            buffer capacity in XML_ParseBuffer

Some key links are:

- The blog post about it
   https://blog.hartwork.org/posts/expat-2-9-0-released/

- The full change log of release 2.9.0
   https://github.com/libexpat/libexpat/blob/R_2_9_0/expat/Changes

- The fixing pull requests
   - https://github.com/libexpat/libexpat/pull/1392
   - https://github.com/libexpat/libexpat/pull/1393

- The NVD CVE metadata
   - https://nvd.nist.gov/vuln/detail/cve-2026-77214
   - https://nvd.nist.gov/vuln/detail/cve-2026-102633

Best



Sebastian

