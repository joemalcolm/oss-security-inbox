X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/09/3
Message-ID: <817711553.357399.1299713822024.JavaMail.root@zmail05.collab.prod.int.phx2.redhat.com>
Date: Wed, 9 Mar 2011 18:37:02 -0500 (EST)
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley@...us.mitre.org
Subject: CVE request: libvirt: several API calls do not honour read-only connection
Content-Type: text/plain; charset=utf-8

"It has been found that several libvirt API calls (virNodeDeviceDettach,
virNodeDeviceReset, virDomainRevertToSnapshot, virDomainSnapshotDelete) did not
honour read-only connection. Remote attacker could use this flaw to crash the
host server (DoS)."

Reference: 
https://bugzilla.redhat.com/show_bug.cgi?id=683650

Thanks,
--
Petr Matousek / Red Hat Security Response Team

