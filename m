X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/05/04/1
Message-ID: <20120504073143.GC16166@suse.de>
Date: Fri, 4 May 2012 09:31:44 +0200
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: CVE Request: more tight ioctl permissions in dl2k driver
Content-Type: text/plain; charset=utf-8

Hi,

Can you please assign a CVE for this issue:

Stephan Mueller reported lack of capable(CAP_NET_ADMIN) checks
in private ioctls in the dl2k network card driver.

The netdev team will probably remove the handling of the SIOCDEVPRIVATE*
calls from this driver though and not use Jeffs patch directly.

References:
	http://www.spinics.net/lists/netdev/msg196365.html
	http://www.spinics.net/lists/netdev/msg196381.html
	http://www.spinics.net/lists/netdev/msg196382.html
	https://bugzilla.novell.com/show_bug.cgi?id=758813

Ciao, Marcus
