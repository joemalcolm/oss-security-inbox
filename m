X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/04/04/27
Message-ID: <925919548.144219.1301928036464.JavaMail.root@zmail05.collab.prod.int.phx2.redhat.com>
Date: Mon, 4 Apr 2011 10:40:36 -0400 (EDT)
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley@...us.mitre.org, Josh Bressers <bressers@...hat.com>
Subject: CVE request: libvirt: error reporting in libvirtd is not thread safe
Content-Type: text/plain; charset=utf-8

"It has been found that when several libvirtd threads are
reporting errors at the same time, the errors can get mixed
or corrupted, potentially leading to a libvirtd crash (DoS)."

Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=693391
https://www.redhat.com/archives/libvir-list/2011-March/msg01087.html

Thanks,
--
Petr Matousek / Red Hat Security Response Team
