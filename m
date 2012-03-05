X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/05/3
Message-ID: <4F5422BF.7030708@redhat.com>
Date: Mon, 05 Mar 2012 10:19:43 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE-2011-3593 kernel: vlan: fix panic when handling priority tagged frames
Content-Type: text/plain; charset=utf-8

A partner reported that frames with priority tags only (VID=0 in the
frame), could cause a panic on some drivers. It affects the Linux kernel
as shipped with Red Hat Enterprise Linux 6 due to incorrect backporting
of upstream patches. It does not affect the upstream kernel.

https://bugzilla.redhat.com/CVE-2011-3593

Thanks, Eugene
