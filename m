X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/04/10/8
Message-ID: <1334068155.4721.464.camel@mdlinux>
Date: Tue, 10 Apr 2012 10:29:15 -0400
From: Marc Deslauriers <marc.deslauriers@...onical.com>
To: coley@...us.mitre.org
Cc: oss-security@...ts.openwall.com, security@...ntu.com
Subject: CVE Request: cobbler (Ubuntu-specific)
Content-Type: text/plain; charset=utf-8

Could we please get a CVE assigned to the following issue?:

A Ubuntu-specific script called "cobbler-ubuntu-import" in the Ubuntu
cobbler package downloads isos from a mirror, and checks them against
MD5SUMS, but does not verify the validity of that MD5SUMS file itself
against the MD5SUMS.gpg. This was fixed in version 2.2.2-0ubuntu32 of
the package.

Bug:
https://bugs.launchpad.net/ubuntu/+source/cobbler/+bug/974460

Commit:
http://bazaar.launchpad.net/~ubuntu-branches/ubuntu/precise/cobbler/precise/revision/98

Thanks,

Marc.

-- 
Marc Deslauriers
Ubuntu Security Engineer     | http://www.ubuntu.com/
Canonical Ltd.               | http://www.canonical.com/


