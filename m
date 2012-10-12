X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/10/12/6
Message-ID: <20121012205041.GF2676@redhat.com>
Date: Fri, 12 Oct 2012 14:50:41 -0600
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Cc: security@...y-lang.org
Subject: CVE request: ruby file creation due in insertion of illegal NUL character
Content-Type: text/plain; charset=utf-8

Just noticed this today on ruby's web site:

http://preview.ruby-lang.org/en/news/2012/10/12/poisoned-NUL-byte-vulnerability/

The fix is located here:

http://svn.ruby-lang.org/cgi-bin/viewvc.cgi?view=revision&revision=37163

I don't see a CVE name associated with the announcement or commit, so
I don't believe one has been assigned.

-- 
Vincent Danen / Red Hat Security Response Team 
