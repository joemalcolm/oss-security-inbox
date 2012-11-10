X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/11/10/10
Message-ID: <20121110203019.GR13903@dhcp-25-225.brq.redhat.com>
Date: Sat, 10 Nov 2012 21:30:20 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request -- vdsm: certificate generation upon node creation
Content-Type: text/plain; charset=utf-8

When new node image is being created, vdsm.rpm is added to the node
image and self-signed key (and certificate) is created. This key/cert
allows vdsm to start and serve requests from anyone who has a matching
key/cert which could be anybody holding the node image.

Upstream fix:
http://gerrit.ovirt.org/#/c/8368/

Acknowledgements:

This issue was discovered by Dan Kenigsberg of Red Hat.

References:
https://bugzilla.redhat.com/show_bug.cgi?id=875367

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
