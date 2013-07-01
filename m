X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/07/01/6
Message-ID: <20130701152159.GI10319@dhcp-25-225.brq.redhat.com>
Date: Mon, 1 Jul 2013 17:21:59 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Cc: libvirt-security@...hat.com
Subject: CVE-2013-2218 -- libvirt: crash when listing network interfaces with filters
Content-Type: text/plain; charset=utf-8

The virConnectListAllInterfaces method has a double-free of the
'struct netcf_if' object when any of the filtering flags cause
an interface to be skipped over. For example when running the
command 'virsh iface-list --inactive'

Upstream fix:
http://libvirt.org/git/?p=libvirt.git;a=commit;h=244e0b8cf15ca2ef48d82058e728656e6c4bad11

References:
https://bugzilla.redhat.com/show_bug.cgi?id=980112

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
