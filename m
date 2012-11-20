X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/11/20/3
Message-ID: <20121120161438.GY4959@redhat.com>
Date: Tue, 20 Nov 2012 09:14:38 -0700
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Subject: libssh 0.5.3 release fixes multiple security issues
Content-Type: text/plain; charset=utf-8

As reported to distros@ on 20121114:

A number of flaws were found in libssh prior to 0.5.3 by Xi Wang and Florian
Weimer of the Red Hat Product Security Team:

CVE-2012-4559: multiple double free() flaws
CVE-2012-4560: multiple buffer overflow flaws
CVE-2012-4561: multiple invalid free() flaws
CVE-2012-4562: multiple improper overflow checks

http://www.libssh.org/2012/11/20/libssh-0-5-3-security-release/
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2012-4559
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2012-4560
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2012-4561
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2012-4562

Patches for the flaws are attached to the bugs in our bugzilla.

-- 
Vincent Danen / Red Hat Security Response Team
