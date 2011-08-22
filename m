X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/08/22/9
Message-ID: <1231476421.212930.1314038372136.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 22 Aug 2011 14:39:32 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE assignment php NULL pointer dereference - CVE-2011-3182
Content-Type: text/plain; charset=utf-8

This message was sent to the full-disclosure mailing list:
http://marc.info/?l=full-disclosure&m=131373057621672&w=2

>From what I can tell, this is a plausible problem. The advisory doesn't
show any specific places where this could be exploited, but there are quite
a few unchecked calls to malloc(). Rather than go through them all, I'm
assigning the ID CVE-2011-3182 to be safe.

Thanks.

-- 
    JB
