X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/04/21/6
Message-ID: <20110421163726.GF2125@redhat.com>
Date: Thu, 21 Apr 2011 10:37:27 -0600
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: CVE-2011-1089-like flaw in mount.nfs
Content-Type: text/plain; charset=utf-8

A similar issue to CVE-2011-1089 was found in mount.nfs because it uses
it's own addmntent() implementation to update /etc/mtab
(nfs_addmntend()).  It also fails to anticipate resource limits and
could trigger corruption of the mtab file.

For more details see:

https://bugzilla.redhat.com/show_bug.cgi?id=697975

Could a CVE name be assigned to this issue please?  Thanks.

-- 
Vincent Danen / Red Hat Security Response Team 
