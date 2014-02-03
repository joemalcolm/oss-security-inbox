X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/02/03/9
Message-ID: <52EF3360.90306@redhat.com>
Date: Mon, 03 Feb 2014 17:12:48 +1100
From: Murray McAllister <mmcallis@...hat.com>
To: oss-security@...ts.openwall.com
CC: 737385@...s.debian.org
Subject: CVE request: a2ps insecure temporary file use
Content-Type: text/plain; charset=utf-8

Hello,

Jakub Wilk found that a2ps, a tool to convert text and other types of
files to PostScript, insecurely used a temporary file in spy_user(). A
local attacker could use this flaw to perform a symbolic link attack to
modify an arbitrary file accessible to the user running a2ps:

http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=737385

The original report notes there are calls to tempname_ensure(). If any
of those are found to be vulnerable, would they use the same CVE number,
or require a different one?

References:
http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=737385
https://bugzilla.redhat.com/show_bug.cgi?id=1060630

Thanks,

--
Murray McAllister / Red Hat Security Response Team
