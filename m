X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/02/02/3
Message-ID: <4B67FB5A.6020407@redhat.com>
Date: Tue, 02 Feb 2010 18:15:54 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: Thomas Biege <thomas@...e.de>
Subject: Re: KVM possible security issues fixed
Content-Type: text/plain; charset=utf-8

On 02/02/2010 05:59 PM, Thomas Biege wrote:
> Hello,
> the following was listed in the changelog of kvm
> - slirp: fix use-after-free
> - usb-linux.c: fix buffer overflow

Josh wrote some notes here:
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2010-0297

> - fix potential stack corruption saving MSRs (Eduardo Habkost)

I did not investigate this as it was already fixed in Red Hat Enterprise 
Linux 5 before we saw the changelog.

> Looks like these are security issues. Does someone know more about?
> Any details about exploitability etc.

Thanks, Eugene
-- 
Eugene Teo / Red Hat Security Response Team
