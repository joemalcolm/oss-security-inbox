X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/04/20/2
Message-ID: <49EC41C9.6010607@redhat.com>
Date: Mon, 20 Apr 2009 17:35:05 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: ipv6: null pointer dereference in __inet6_check_established()
Content-Type: text/plain; charset=utf-8

According to the upstream commit 3f53a381, "we already have a valid net
in that place, but... the tw pointer can be NULL there sometimes, thus
causing an oops in NET_NS=y case.

The same place in ipv4 code already works correctly using existing
net, rather than tw's one."

The bug exists since 2.6.27.

http://git.kernel.org/linus/3f53a38131a4e7a053c0aa060aba0411242fb6b9

Thanks, Eugene
-- 
Eugene Teo / Red Hat Security Response Team
