X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/09/16/10
Message-ID: <48CF75CF.8020404@redhat.com>
Date: Tue, 16 Sep 2008 17:01:03 +0800
From: Eugene Teo <eteo@...hat.com>
To: oss-security@...ts.openwall.com
CC: coley@...re.org
Subject: CVE request: kernel: splice: fix bad unlock_page() in error case
Content-Type: text/plain; charset=utf-8

Hi Steve,

This bug requires a CVE name. Please allocate one.

This upstream commit addressed a user triggerable DoS:
6a860c979b35469e4d77da781a96bdb2ca05ae64

Summary:
[PATCH] splice: fix bad unlock_page() in error case

If add_to_page_cache_lru() fails, the page will not be locked. But
splice jumps to an error path that does a page release and unlock,
causing a BUG() in unlock_page().

Reproducer:
http://lkml.org/lkml/2007/7/30/448
(different issue, but same reproducer)

References:
http://lkml.org/lkml/2007/7/20/168
https://bugzilla.redhat.com/show_bug.cgi?id=462434

Thanks, Eugene
-- 
Eugene Teo / Red Hat Security Response Team
