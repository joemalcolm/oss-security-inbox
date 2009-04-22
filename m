X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/04/22/2
Message-ID: <49EEB60E.40505@redhat.com>
Date: Wed, 22 Apr 2009 14:15:42 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE-2009-1192 kernel: agp: zero pages before sending to userspace
Content-Type: text/plain; charset=utf-8

"AGP pages might be mapped into userspace finally, so the pages should
be set to zero before userspace can use it. Otherwise there is potential
information leakage."

http://git.kernel.org/linus/59de2bebabc5027f93df999d59cc65df591c3e6e
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2009-1192

Thanks, Eugene
-- 
Eugene Teo / Red Hat Security Response Team
