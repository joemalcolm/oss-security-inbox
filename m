X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/01/25/15
Message-ID: <4D3F52CA.8070204@redhat.com>
Date: Wed, 26 Jan 2011 06:46:34 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE-2010-4238 xen dom0 issue
Content-Type: text/plain; charset=utf-8

A missing sanity check was found in vbd_create() in the Xen hypervisor
implementation. As CD-ROM drives are not supported by the blkback 
back-end driver, attempting to use a virtual CD-ROM drive with blkback 
could trigger a denial of service (crash) on the host system running the 
Xen hypervisor.

https://bugzilla.redhat.com/CVE-2010-4238

This affects Red Hat Enterprise Linux 5 only. There's no upstream patch.

https://bugzilla.redhat.com/CVE-2010-4238

Eugene
