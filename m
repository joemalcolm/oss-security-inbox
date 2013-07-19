X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/07/19/9
Message-ID: <20130719161256.GV4441@dhcp-25-225.brq.redhat.com>
Date: Fri, 19 Jul 2013 18:12:57 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Cc: libvirt-security@...hat.com
Subject: CVE request -- libvirt: double free of returned JSON array in qemuAgentGetVCPUs()
Content-Type: text/plain; charset=utf-8

A part of the returned monitor response was freed twice and caused
crashes of the daemon when using guest agent cpu count retrieval.

A remote user able to issue commands to libvirt daemon could use this
flaw to crash libvirtd or, potentially, escalate their privileges to
that of libvirtd process.

References:
https://bugzilla.redhat.com/show_bug.cgi?id=986383
https://bugzilla.redhat.com/show_bug.cgi?id=984821
https://www.redhat.com/archives/libvir-list/2013-July/msg01035.html

Upstream fix:
http://libvirt.org/git/?p=libvirt.git;a=commit;h=dfc692350a04a70b4ca65667c30869b3bfdaf034

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
