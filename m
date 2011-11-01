X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/01/1
Message-ID: <4EAF38A9.1010603@redhat.com>
Date: Tue, 01 Nov 2011 08:09:13 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: oom: fix integer overflow of points in oom_badness
Content-Type: text/plain; charset=utf-8

An integer overflow will happen on 64bit archs if task's sum of rss,
swapents and nr_ptes exceeds (2^31)/1000 value. This was introduced by
commit f755a04 oom: use pte pages in OOM score. This can cause a denial
of service.

https://lkml.org/lkml/2011/10/31/138

Eugene
-- 
Eugene Teo / Red Hat Security Response Team
