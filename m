X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/08/25/1
Message-ID: <4A937C4D.7010405@kernel.sg>
Date: Tue, 25 Aug 2009 13:53:17 +0800
From: Eugene Teo <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE-2009-2698 kernel: udp socket NULL ptr dereference
Content-Type: text/plain; charset=utf-8

A flaw was found in the udp_sendmsg() implementation in the Linux kernel 
when using the MSG_MORE flag on UDP sockets. A local, unprivileged user 
could use this flaw to cause a local denial of service or escalate their 
privileges. This was fixed by Herbert Xu in v2.6.19-rc1, and reported by 
Tavis Ormandy and Julien Tinnes of the Google Security Team.

Upstream commits:
http://git.kernel.org/linus/1e0c14f49d6b393179f423abbac47f85618d3d46

References:
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2009-2698
https://rhn.redhat.com/errata/RHSA-2009-1222.html
https://rhn.redhat.com/errata/RHSA-2009-1223.html

Thanks, Eugene
