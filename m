X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/11/5
Message-ID: <df7cb6f8-c393-4ae0-864f-36239ca22759@pipping.org>
Date: Tue, 11 Aug 2026 16:11:09 +0200
From: Sebastian Pipping <sebastian@...ping.org>
To: oss-security@...ts.openwall.com
Subject: libexpat 2.8.3 fixes CVE-2026-72522 (denial of service)
Content-Type: text/plain; charset=utf-8

Hello oss-security,


just a quick note that libexpat 2.8.3 (or "Expat 2.8.3") released
yesterday is fixing CVE-2026-72522:

   Fix an out-of-bounds read and the resulting infinite loop caused by
   treating low surrogates (Unicode) the same as high surrogates in
   functions *_toUtf16.
   Needs Expat compiled with 16bit character support (e.g. with Firefox
   and/or on Windows) to be affected.
   Upstream CVSS 3.1 vector:
   AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H (CVSS score: 7.5)
   (Note the "AV:N" for network/remote, the "AV:L" in NVD by Mitre is
   mistaken.)
   Original bug report from Mozilla at:
   https://bugzilla.mozilla.org/show_bug.cgi?id=2053153

Some key links are:

- The blog post about it
   https://blog.hartwork.org/posts/expat-2-8-3-released/

- The change log of release 2.8.3
   https://github.com/libexpat/libexpat/blob/R_2_8_3/expat/Changes

- The fixing pull request
   https://github.com/libexpat/libexpat/pull/1296

- The NVD CVE metadata
   https://nvd.nist.gov/vuln/detail/CVE-2026-72522
   (with mistaken CVSS vector, see above)

Best



Sebastian

