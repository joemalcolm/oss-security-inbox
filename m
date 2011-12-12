X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/12/12/2
Message-ID: <20111212162444.GD1648@redhat.com>
Date: Mon, 12 Dec 2011 09:24:56 -0700
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: rocksndiamonds world-writable working/config directory
Content-Type: text/plain; charset=utf-8

rocksndiamonds creates its ~/.rocksndiamonds/ directory as
world-writable.  This could allow a local attacker to replace a cache
file with a symbolic link to a file they would not otherwise have access
to, and the next time the victim loaded the game, it would be
overwritten.

Could a CVE be assigned to this please?

References:

http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=651620
https://bugzilla.redhat.com/show_bug.cgi?id=766805

-- 
Vincent Danen / Red Hat Security Response Team 
