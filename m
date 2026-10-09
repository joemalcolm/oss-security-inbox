X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/09/20
Message-ID: <603f2093-6707-4551-8186-13aec56ec9dd@oracle.com>
Date: Fri, 9 Oct 2026 13:29:45 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Unfixed vulnerabilities in Cyrus SASL
Content-Type: text/plain; charset=utf-8

https://github.com/cyrusimap/cyrus-sasl/issues/891 points out there are
a number of publicly reported security issues in the Cyrus SASL project,
with no response from maintainers, other than former maintainers saying
they are no longer involved; no new version since 2022, and the only
commits in the past year being doc updates to note cyrus-imapd releases.

The listed open security issues are:

* Memory leaks in _sasl_make_plain_secret and _sasl_auxprop_verify_apop,
   lib/checkpw.c #887 - https://github.com/cyrusimap/cyrus-sasl/issues/887

* [VS-CSASL-2026-0001] - 1-Byte Heap Out-of-Bounds Read in Cyrus SASL SCRAM
   GS2 Header Parser #888 - https://github.com/cyrusimap/cyrus-sasl/issues/888

* [Security] Heap Buffer Overflow in DIGEST-MD5 add_to_challenge()doc
   (plugins/digestmd5.c) and others #889
   - https://github.com/cyrusimap/cyrus-sasl/issues/889

* --with-pic static build registers zero SASL mechanisms and yields a
    non-PIC libsasl2.a (CRAM-MD5 unavailable; won't link into a PIE) #895
  - https://github.com/cyrusimap/cyrus-sasl/issues/895

* [Security] SRP server authentication bypass: A == 0 (mod N) not rejected
   (CWE-347) #896 - https://github.com/cyrusimap/cyrus-sasl/issues/887

Only one of these appears to have been assigned a CVE id so far - Red Hat
assigned CVE-2026-107161 for https://bugzilla.redhat.com/show_bug.cgi?id=2460420
which seems to match https://github.com/cyrusimap/cyrus-sasl/issues/889 (or
perhaps be an independent finding of the same issue?)

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

