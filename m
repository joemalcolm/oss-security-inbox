X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/05/28/7
Message-ID: <CALCETrW-UY_UAywWx+8FAA20ZxgN90jX6kx9kG2gGFbG6L4Aug@mail.gmail.com>
Date: Wed, 28 May 2014 14:51:16 -0700
From: Andy Lutomirski <luto@...capital.net>
To: Greg KH <greg@...ah.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: CVE request: Linux kernel DoS with syscall auditing
Content-Type: text/plain; charset=utf-8

On Wed, May 28, 2014 at 2:53 PM, Greg KH <greg@...ah.com> wrote:
> On Wed, May 28, 2014 at 02:45:59PM -0700, Andy Lutomirski wrote:
>> Issuing a system call with a random large number will OOPS, depending
>> on configuration.  A configuration that will enable this bug is:
>>
>> # auditctl -a exit,always -S open
>>
>> No privilege whatsoever is required to trigger the OOPS.
>>
>> It's possible that this can be extended to more than just a DoS --
>> with some care and willingness to exploit timing attacks, this is a
>> read of arbitrary single bits in kernel memory.
>
> Is there a kernel fix for this anywhere?

No, but there will be soon.

The correct fix is, IMO, CONFIG_AUDITSYSCALL=n.  That code is garbage.

--Andy
