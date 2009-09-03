X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/09/03/4
Message-ID: <4A9FEA2F.8080501@redhat.com>
Date: Fri, 04 Sep 2009 00:09:19 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: NULL pointer dereference in sg_build_indirect()
Content-Type: text/plain; charset=utf-8

Backtrace:
http://lkml.org/lkml/2009/9/3/1

Upstream proposed patch:
http://lkml.org/lkml/2009/9/3/107

Triggered by firing up "xcdroast" to duplicate a CD.

[...]
  out:
  	for (i = 0; i < k; i++)
-		__free_pages(schp->pages[k], order);
+		__free_pages(schp->pages[i], order);

When the allocation in sg_build_indirect() fails, an oops can occur 
because of an obvious typo.

This was introduced by upstream commit 10db10d1 in v2.6.28-rc1.

Thanks, Eugene
