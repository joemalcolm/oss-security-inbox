X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/07/31/4
Message-ID: <20120731145944.GC14466@dhcp-25-225.brq.redhat.com>
Date: Tue, 31 Jul 2012 16:59:44 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request -- libvirt: crash in virTypedParameterArrayClear
Content-Type: text/plain; charset=utf-8

It has been found that sending crafted RPC command with nparams set to 0
can lead to libvirtd accessing random memory, possibly leading to crash.
A remote attacker could use this flaw to crash libvirtd (DoS).

Upstream proposed fix:
https://www.redhat.com/archives/libvir-list/2012-July/msg01650.html

References:
https://www.redhat.com/archives/libvir-list/2012-July/msg01650.html
https://bugzilla.redhat.com/show_bug.cgi?id=844734

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
