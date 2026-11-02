X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/02/6
Message-ID: <67d0ffd8-767e-4ef8-ba61-23f94957fd18@pipping.org>
Date: Mon, 2 Nov 2026 18:20:14 +0100
From: Sebastian Pipping <sebastian@...ping.org>
To: oss-security@...ts.openwall.com
Subject: libexpat 2.10.0 fixes two vulnerabilities
Content-Type: text/plain; charset=utf-8

Hello oss-security,


just a quick note that libexpat 2.10.0 (or "Expat 2.10.0") released
today is fixing four vulnerabilities:

- CVE-2026-113351
- CVE-2026-115506
- CVE-2026-117610
- CVE-2026-118370

The related part of the change log is this:

            #1431  CVE-2026-113351 -- Fix denial of service with use of
                     `XML_ParserReset`
   #1433 #1436 ..
   #1438 #1439 ..
            #1442  CVE-2026-115506 -- Detect billion laughs attacks
                     quicker and more of its variations. Related payload
                     fuzzer at:
                       https://github.com/hannob/lololol
                     Please note that a layer of compression around XML
                     can significantly reduce the minimum attack payload
                     size.
                     In case of backporting, please note pull request
                     #1439 in particular.
            #1444  CVE-2026-117610 -- Fix initial non-final empty
                     subparser parse calls. Was segfaulting previously.
            #1450  CVE-2026-118370 -- Protect `attIndex` and `nPrefixes`
                     in function `storeAtts` from signed integer overflow

Some key links are:

- The blog post about it
   https://blog.hartwork.org/posts/expat-2-10-0-released/

- The full change log of release 2.10.0
   https://github.com/libexpat/libexpat/blob/R_2_10_0/expat/Changes

- The fixing pull requests
   - https://github.com/libexpat/libexpat/pull/1431
   - https://github.com/libexpat/libexpat/pull/1433
   - https://github.com/libexpat/libexpat/pull/1439
   - https://github.com/libexpat/libexpat/pull/1444
   - https://github.com/libexpat/libexpat/pull/1450

- The NVD CVE metadata
   - https://nvd.nist.gov/vuln/detail/cve-2026-113351
   - https://nvd.nist.gov/vuln/detail/cve-2026-115506
   - https://nvd.nist.gov/vuln/detail/cve-2026-117610
   - https://nvd.nist.gov/vuln/detail/cve-2026-118370

Best



Sebastian

