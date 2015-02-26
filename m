X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/26/2
Message-ID: <54EEE796.7010201@redhat.com>
Date: Thu, 26 Feb 2015 10:29:58 +0100
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com, Assign a CVE Identifier <cve-assign@...re.org>
Subject: CVE request: glibc scanf implementation crashes on certain inputs
Content-Type: text/plain; charset=utf-8

This bug

  https://sourceware.org/bugzilla/show_bug.cgi?id=13138

causes scanf and related functions to crash when processing certain
inputs.  This happens with the numeric conversions (%d, %f and others),
and includes valid numbers (ISO C allows crashes or worse on invalid
inputs, but glibc is buggy even by this standard).

The first glibc version which received the fix for this bug is 2.15.
The bug was reported in 2011, so it should receive a CVE-2011-XXXX name.

-- 
Florian Weimer / Red Hat Product Security
