X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/07/10/5
Message-ID: <20130710122848.GM4441@dhcp-25-225.brq.redhat.com>
Date: Wed, 10 Jul 2013 14:28:49 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Cc: libvirt-security@...hat.com
Subject: [NOT A CVE REQUEST] CVE-2013-2230 -- libvirt: multiple registered events crash
Content-Type: text/plain; charset=utf-8

A flaw was found in the way multiple events registration were handled in
libvirt qemu driver.

A remote user able to issue commands to libvirt daemon could use this
flaw to crash libvirtd.

Upstream fix:
http://libvirt.org/git/?p=libvirt.git;a=commit;h=f38c8185f97720ecae7ef2291fbaa5d6b0209e17

References:
https://bugzilla.redhat.com/show_bug.cgi?id=981476

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
