X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/31/13
Message-ID: <682cf455-567c-435a-b122-b796f3f2d51a@pipping.org>
Date: Mon, 31 Aug 2026 18:18:50 +0200
From: Sebastian Pipping <sebastian@...ping.org>
To: oss-security@...ts.openwall.com
Subject: libexpat 2.8.4 fixes 4 vulnerabilities
Content-Type: text/plain; charset=utf-8

Hello oss-security,


just a quick note that libexpat 2.8.4 (or "Expat 2.8.4") released today
is fixing four vulnerabilities:

- CVE-2026-66046
- CVE-2026-76641
- CVE-2026-76956
- CVE-2026-76957

The related part of the change log is this:

   #1321 #1331  CVE-2026-66046, CVE-2026-76641 -- Fix quadratic runtime
                  from "attribute isCdata lookups" that allowed denial of
                  service attacks through moderately sized crafted XML
                  input (CWE-407).
                  The vulnerability is closely related to past
                  CVE-2026-45186 that was fixed with Expat 2.8.1.
                  Please note that a layer of compression around XML can
                  significantly reduce the minimum attack payload size.
                  Upstream CVSS 3.1 vector:
                  AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H (CVSS score: 7.5)
                  (Note the "AV:N" for network/remote.)
         #1322  CVE-2026-76957 -- Protect custom encoding callbacks from
                  parser re-entry. The vulnerability is closely related
                  to past issues CVE-2026-50219, CVE-2026-56131 and
                  CVE-2026-56412 that were all fixed with Expat 2.8.2.
         #1326  CVE-2026-76956 -- Fix inverted getentropy() return
                  handling; allowed for hash flooding denial of services
                  in configurations where getentropy is configured or
                  detected as the only high quality entropy extractor.
                  Upstream CVSS 3.1 vector:
                  AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:H (CVSS score: 5.9)
                  (Note the "AV:N" for network/remote.)

Some key links are:

- The blog post about it
   https://blog.hartwork.org/posts/expat-2-8-4-released/

- The full change log of release 2.8.4
   https://github.com/libexpat/libexpat/blob/R_2_8_4/expat/Changes

- The fixing pull requests
   - https://github.com/libexpat/libexpat/pull/1321
   - https://github.com/libexpat/libexpat/pull/1322
   - https://github.com/libexpat/libexpat/pull/1326
   - https://github.com/libexpat/libexpat/pull/1331

- The NVD CVE metadata
   - https://nvd.nist.gov/vuln/detail/cve-2026-66046
   - https://nvd.nist.gov/vuln/detail/cve-2026-76641
   - https://nvd.nist.gov/vuln/detail/cve-2026-76956
   - https://nvd.nist.gov/vuln/detail/cve-2026-76957

Best



Sebastian

