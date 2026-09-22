X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/22/8
Message-ID: <99db5458-7f91-43d1-96c9-20b22969c6d6@pipping.org>
Date: Tue, 22 Sep 2026 16:56:13 +0200
From: Sebastian Pipping <sebastian@...ping.org>
To: oss-security@...ts.openwall.com
Subject: libexpat 2.8.5 fixes CVE-2026-93990 (malformed UTF-16 smuggling)
Content-Type: text/plain; charset=utf-8

Hello oss-security,


just a quick note that libexpat 2.8.5 (or "Expat 2.8.5") released
today is fixing CVE-2026-93990:

   Reject high surrogates not followed by a low surrogate during UTF-16
   decoding; previously, malformed UTF-16 could be smuggled into the
   application using Expat and could cause arbitrary damage there,
   depending on how malformed UTF-16 was handled inside the application;
   validation was not their job but Expat's. This is similar to past
   vulnerability CVE-2022-25235.
   Upstream CVSS 3.1 vector:
   AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H (CVSS score: 9.8)

Some key links are:

- The blog post about it
   https://blog.hartwork.org/posts/expat-2-8-5-released/

- The change log of release 2.8.5
   https://github.com/libexpat/libexpat/blob/R_2_8_5/expat/Changes

- The fixing pull request
   https://github.com/libexpat/libexpat/pull/1282

- The NVD CVE metadata
   https://nvd.nist.gov/vuln/detail/CVE-2026-93990
   (with a different CVSS vector)

Best



Sebastian

