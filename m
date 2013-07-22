X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/07/22/3
Message-ID: <20130722132239.GG26504@dhcp-25-225.brq.redhat.com>
Date: Mon, 22 Jul 2013 15:22:40 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Cc: Laszlo Ersek <lersek@...hat.com>, Lev Veyde <lveyde@...hat.com>, aliguori@...ibm.com, mdroth@...ux.vnet.ibm.com
Subject: CVE-2013-2231 -- qemu: qemu-ga win32 service unquoted search path
Content-Type: text/plain; charset=utf-8

An unquoted search path flaw was found in the way qemu guest agent
service for Windows was installed into the system.

A local unprivileged user could use this flaw to increase their
privileges.

References:
https://bugzilla.redhat.com/show_bug.cgi?id=980757
http://cwe.mitre.org/data/definitions/428.html

-- 
Petr Matousek / Red Hat Security Response Team
