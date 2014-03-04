X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/03/04/6
Message-ID: <20140304110013.GN12584@dhcp-25-225.brq.redhat.com>
Date: Tue, 4 Mar 2014 12:00:13 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2014-0101 -- Linux kernel: net: sctp: null pointer dereference when processing authenticated cookie_echo chunk
Content-Type: text/plain; charset=utf-8

A flaw was found in the way Linux kernel processed authenticated
COOKIE_ECHO chunks.

A remote attacker could use this flaw to crash the system by sending a
maliciously prepared SCTP handshake in order to trigger a NULL pointer
dereference on the server.

Introduced by:
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=bbd0d59809f9

Upstream patch submission:
http://patchwork.ozlabs.org/patch/325898/

References:
https://bugzilla.redhat.com/show_bug.cgi?id=1070705

-- 
Petr Matousek / Red Hat Security Response Team
PGP: 0xC44977CA 8107 AF16 A416 F9AF 18F3  D874 3E78 6F42 C449 77CA
