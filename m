X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/05/2
Message-ID: <4F542215.7040103@redhat.com>
Date: Mon, 05 Mar 2012 10:16:53 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "stev >> \"Steven M. Christey\"" <coley@...us.mitre.org>
Subject: CVE-2011-4348 kernel: incomplete fix for CVE-2011-2482
Content-Type: text/plain; charset=utf-8

When testing [CVE-2011-2482] with SELinux disabled (haven't triggered
panic on patched kernel with selinux on), the reproducer run after
regular user causes soft lookups and the machine becomes completely
unresponsive on patched kernel. Target machine was unresponsive after
remote part of reproducer (con) killed. Target with patched kernel
needed to be rebooted to start working regularly.

Upstream commit:
http://git.kernel.org/linus/ae53b5bd77719fed58086c5be60ce4f22bffe1c6

Reference:
https://bugzilla.redhat.com/CVE-2011-4348

Thanks, Eugene
