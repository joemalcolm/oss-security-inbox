X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/07/15/2
Message-ID: <4E1FF43B.8010507@redhat.com>
Date: Fri, 15 Jul 2011 16:03:07 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE-2009-4067 kernel: usb: buffer overflow in auerswald_probe()
Content-Type: text/plain; charset=utf-8

A buffer overflow flaw was found in the Linux kernel's Auerswald
PBX/System Telephone usb driver implementation. There's no upstream
patch as the affected driver was removed from the kernel in 2.6.27.

For more information, check out the references:
http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2009-4067
http://labs.mwrinfosecurity.com/files/Advisories/mwri_linux-usb-buffer-overflow_2009-10-29.pdf
https://bugzilla.redhat.com/CVE-2009-4067

(Attention Steve:) Looks like MITRE assigned this CVE to the reporter on
Nov 24, 2009, but did not update their CVE database entry for this since
then. Fortunately this is not a critical issue...

Eugene
