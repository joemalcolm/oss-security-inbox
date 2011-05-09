X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/05/09/2
Message-ID: <4DC75331.2080406@redhat.com>
Date: Mon, 09 May 2011 10:36:33 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE-2011-1771 kernel: cifs oops when creating file with O_DIRECT set
Content-Type: text/plain; charset=utf-8

CIFS does not do O_DIRECT, so when you open a file with it, you will 
trigger a NULL pointer dereference. This is a regression introduced with 
the patchset to clean up filehandle management in CIFS. The fix checks 
for a NULL filp->private_data before trying to dereference it.

http://marc.info/?l=linux-cifs&m=130204730006155&w=2
https://bugzilla.redhat.com/CVE-2011-1771

Introduced by cdff08e7 (v2.6.37-rc1)

Upstream commit
http://git.kernel.org/linus/77970693

Thanks, Eugene
