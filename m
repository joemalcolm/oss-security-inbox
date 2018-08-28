X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/08/28/9
Message-ID: <63a8aed5-d44a-a975-a2a3-932374b57a6c@redhat.com>
Date: Tue, 28 Aug 2018 15:08:18 +0200
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com, Greg KH <greg@...ah.com>
Subject: Re: Linux kernel: CVE-2018-14619 kernel: crash (possible privesc) in kernel crypto subsystem.
Content-Type: text/plain; charset=utf-8

On 08/28/2018 02:51 PM, Greg KH wrote:
> On Tue, Aug 28, 2018 at 04:49:14PM +1000, Wade Mealing wrote:
>> Gday,
>>
>> Syzkaller/syzbot found a use-after-free bug in the cryptographic
>> subsystem of the Linux kernel [1], that can be used to panic the
>> system and possibly escalate privileges.
> 
> Are we seriously now going to be assigning cves to everything that
> syzbot finds?  If so, great, this is going to be fun!
> 
> If not, why this specific patch?  What makes it specia from the hundreds
> of other syzbot finds that have been fixed (and not fixed yet)?

> If RHEL is not exposed, why does Red Hat care about this?

We have shipped supported kernels with this vulnerability.

But the real reason why I want this fixed is that the Python 3 test 
suite triggers this bug and panics some of our RPM builders. 8-/

Thanks,
Florian
