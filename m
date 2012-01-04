X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/04/5
Message-ID: <4b867641-5dd5-47b5-a482-6968871fd2d6@zmail15.collab.prod.int.phx2.redhat.com>
Date: Wed, 04 Jan 2012 06:56:36 -0500 (EST)
From: Ramon de C Valle <rcvalle@...hat.com>
To: oss-security@...ts.openwall.com
Cc: Vincent Danen <vdanen@...hat.com>, Tomas Hoger <thoger@...hat.com>
Subject: CVE request: ghostscript: system initialization file uncontrolled search path element
Content-Type: text/plain; charset=utf-8

Hi Kurt,

We identified and are separating the bugs discussed in Bug 599564[1] in two
different issues. Can you assign a CVE Identifier to the following issue:

Ghostscript included the current working directory in its library search
path by default. If a user ran Ghostscript without the "-P-" option in an
attacker-controlled directory containing a specially-crafted PostScript
library file, it could cause Ghostscript to execute arbitrary PostScript
code. With this update, Ghostscript no longer searches the current working
directory for library files by default.[1]

[1] https://bugzilla.redhat.com/show_bug.cgi?id=599564

Thanks,

-- 
Ramon de C Valle / Red Hat Security Response Team
