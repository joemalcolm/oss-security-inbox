X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/08/26/1
Message-ID: <4A94950B.6010503@kernel.sg>
Date: Wed, 26 Aug 2009 09:51:07 +0800
From: Eugene Teo <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: AF_LLC getsockname 5-Byte Stack Disclosure
Content-Type: text/plain; charset=utf-8

sllc_arphrd member of sockaddr_llc might not be changed. Zero sllc 
before copying to the above layer's structure.

Note that LLC sockets are restricted to root since v2.6.25-rc9 (see 
commit 3480c63b).

Upstream commit:
http://git.kernel.org/linus/28e9fc592cb8c7a43e4d3147b38be6032a0e81bc

Reproducer:
http://jon.oberheide.org/files/llc-getsockname-leak.c

Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=519305

Thanks, Eugene
