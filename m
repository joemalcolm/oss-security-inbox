X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/25/1
Message-ID: <4CEDF6DE.4080607@redhat.com>
Date: Thu, 25 Nov 2010 13:40:46 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE-2010-3699 xen: guest->host denial of service from invalid xenbus transitions
Content-Type: text/plain; charset=utf-8

A guest can cause the backend driver to leak a kernel thread. Such 
leaked threads hold references to the device, which makes the device 
impossible to tear down. If shut down, the guest remains a zombie 
domain, the xenwatch process hangs, and most xm commands will stop working.

Upstream commit:
http://xenbits.xen.org/linux-2.6.18-xen.hg?rev/59f097ef181b

Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=636411

Thanks, Eugene
