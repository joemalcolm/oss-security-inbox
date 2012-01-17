X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/17/6
Message-ID: <1326822907.3234.25.camel@mdlinux>
Date: Tue, 17 Jan 2012 12:55:07 -0500
From: Marc Deslauriers <marc.deslauriers@...onical.com>
To: coley@...us.mitre.org
Cc: oss-security@...ts.openwall.com, security@...ntu.com
Subject: CVE Request: overlayfs
Content-Type: text/plain; charset=utf-8

Could we please get a CVE assigned to the following issue:

overlayfs, as used in the Ubuntu kernel, doesn't perform required inode
security checks, bypassing intended security restrictions.

Bug:
https://bugs.launchpad.net/ubuntu/+source/linux/+bug/915941

Upstream source:
git://git.kernel.org/pub/scm/linux/kernel/git/mszeredi/vfs.git

Thanks,

Marc.


-- 
Marc Deslauriers
Ubuntu Security Engineer     | http://www.ubuntu.com/
Canonical Ltd.               | http://www.canonical.com/

