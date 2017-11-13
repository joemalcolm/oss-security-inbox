X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/13/2
Message-ID: <640892254.31427608.1510585620318.JavaMail.zimbra@redhat.com>
Date: Mon, 13 Nov 2017 10:07:00 -0500 (EST)
From: Vladis Dronov <vdronov@...hat.com>
To: oss-security@...ts.openwall.com, Greg KH <greg@...ah.com>
Subject: Re: CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver
Content-Type: text/plain; charset=utf-8

Hello, Greg, all,

My fault here was indeed not stating that a Red Hat's product is
vulnerable (thus, a CVE was assigned), but stating that only Linux
kernel is vulnerable (while indeed it was fixed a long ago). Please,
accept my apologies.

> I hate to ask, but why are you getting CVEs for bugs fixed over a year
> ago, and are already in all stable kernel releases a year ago?  Why does
> it matter?

I'm afraid, you won't like the answer, but in a short word, the Red Hat
is a CNA (CVE Numbering Authority) for Red Hat's products and the Linux
kernel and we've decided to assign this CVE.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
