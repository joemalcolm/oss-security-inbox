X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/08/18/1
Message-ID: <4C6B6DA3.3050008@redhat.com>
Date: Wed, 18 Aug 2010 13:20:35 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request - kernel: net sched memleak
Content-Type: text/plain; charset=utf-8

http://patchwork.ozlabs.org/patch/61857/
https://bugzilla.redhat.com/show_bug.cgi?id=624903

Memory leak issue was found numerous functions in net/sched/act_*.c.

This was introduced since v2.6.9-rc2.

Thanks, Eugene
-- 
main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
