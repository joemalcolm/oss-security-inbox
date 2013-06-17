X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/06/17/3
Message-ID: <CAEmQOhB9=_LXeJHk6U3WymYvNZaoEKnUAfN3zV1qir5W=R7yOQ@mail.gmail.com>
Date: Mon, 17 Jun 2013 23:52:47 +0200
From: Jonathan Salwan <jonathan.salwan@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: Linux - ext4 support
Content-Type: text/plain; charset=utf-8

On Mon, Jun 17, 2013 at 10:29 PM, Greg KH <greg@...ah.com> wrote:
> On Mon, Jun 17, 2013 at 10:12:34PM +0200, Jonathan Salwan wrote:
>> Hi,
>>
>> Could you assign a CVE for this issue please?
>>
>> https://bugzilla.redhat.com/show_bug.cgi?id=971170
>
> I thought we (the ext4 developers and kernel security team) discussed
> this and determined that a user could _not_ trigger this problem.  Or
> was I mistaken as to the output of that conversation?
>
> thanks,
>
> greg k-h

Only with CAP_SYS_RESOURCE indeed.


Thanks,

-- Jonathan
