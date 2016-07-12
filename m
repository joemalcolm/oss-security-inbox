X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/07/12/4
Message-ID: <20160712130848.GA27890@lorien.valinor.li>
Date: Tue, 12 Jul 2016 15:08:48 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Cc: ondrej@...y.org
Subject: CVE Request: libgd: Out-Of-Bounds Read in function read_image_tga of gd_tga.c
Content-Type: text/plain; charset=utf-8

Hi

Another issue was reported in the libgd issue tracker, an
out-of-bounds reads in read_image_tga in gd_tga.c:

https://github.com/libgd/libgd/issues/248

Pull request: https://github.com/libgd/libgd/pull/251

Upstream issue contains a reproducer for the issue and Ondřej Surý
confirmed that this is not a duplicate of issue #247. Could you assign
a CVE for this issue?

Regards,
Salvatore
