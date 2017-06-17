X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/17/7
Message-ID: <e499fcaf-3255-5db3-7b3e-43261bbf8a9d@pipping.org>
Date: Sun, 18 Jun 2017 01:20:31 +0200
From: Sebastian Pipping <sebastian@...ping.org>
To: oss-security@...ts.openwall.com
Subject: Expat 2.2.1 security fixes
Content-Type: text/plain; charset=utf-8

Hi!


Expat 2.2.1 has been released.  The change log has more details [2] than
this mail, including commit SHA1s.
For a quick overview of the security fixes and CVEs, we have:

   CVE-2017-9233  External entity infinite loop DoS [1]
  (CVE-2016-9063) Integer overflow (re-fix)
             n/a  More integer overflow fixes
  (CVE-2016-0718) Fix regression bugs from 2.2.0's fix to CVE-2016-0718
  (CVE-2016-5300) Use os-specific entropy sources like getrandom
             n/a  No longer leak parser pointer information
             n/a  Prevent use of uninitialised variables
             n/a  Add missing API parameter validation (NULL, len<0)
  (CVE-2012-0876) Counter hash flooding with SipHash

If you control copies of Expat somewhere, please get them updated.

Best



Sebastian


[1] https://libexpat.github.io/doc/cve-2017-9233/
[2] https://github.com/libexpat/libexpat/blob/master/expat/Changes
