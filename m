X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/01/14/2
Message-ID: <20140114093510.GY9943@dhcp-25-225.brq.redhat.com>
Date: Tue, 14 Jan 2014 10:35:10 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Cc: libvirt-security@...hat.com, Jiri Denemark <jdenemar@...hat.com>, Eric Blake <eblake@...hat.com>
Subject: CVE Request -- libvirt: denial of service with keepalive
Content-Type: text/plain; charset=utf-8

On Thu, Jan 09, 2014 at 02:58:06PM -0700, Eric Blake wrote:
> https://bugzilla.redhat.com/show_bug.cgi?id=1047577 is a publicly
> reported bug that details a libvirtd crash caused by a race when
> keepalive is requested but the connection is closed prior to
> establishing connection credentials.  Since this crash occurs before
> libvirtd can distinguish between read-only vs. read-write clients, it
> can be used as a denial of service attack by read-only clients, and
> therefore needs a CVE.

Upstream patches:
http://libvirt.org/git/?p=libvirt.git;a=commit;h=173c291
http://libvirt.org/git/?p=libvirt.git;a=commit;h=066c8ef

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
PGP: 0xC44977CA 8107 AF16 A416 F9AF 18F3  D874 3E78 6F42 C449 77CA
