X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/20/2
Message-ID: <20120320102000.GI3053@dhcp-25-225.brq.redhat.com>
Date: Tue, 20 Mar 2012 11:20:01 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request -- kernel: execshield: predictable ascii armour base address
Content-Type: text/plain; charset=utf-8

When running a binary with a lot of shared libraries, predictable base
address is used for one of the loaded libraries.

This flaw could be used to bypass ASLR.

References:
http://scarybeastsecurity.blogspot.com/2012/03/some-random-observations-on-linux-aslr.html
https://bugzilla.redhat.com/show_bug.cgi?id=804947

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
