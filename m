X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/25/1
Message-ID: <CA+YQQ6WcX+v1WUe4fVNpvogiaptSf7YYZK9YRw64vqPyw=qrnQ@mail.gmail.com>
Date: Fri, 24 Oct 2014 16:56:11 -0700
From: Tavis Ormandy <taviso@...xchg8b.com>
To: Michal Zalewski <lcamtuf@...edump.cx>
Cc: oss-security <oss-security@...ts.openwall.com>
Subject: Re: strings / libbfd crasher
Content-Type: text/plain; charset=utf-8

On 24 October 2014 13:31, Michal Zalewski <lcamtuf@...edump.cx> wrote:
> [+Tavis]
>
>>> I don't understand the user benefit of extracting strings only from
>>> certain sections of executables, and I almost feel like it's a side
>>> effect of strings being a part of binutils more than anything else.
>>
>> I fully agree. I wasn't aware strings does any kind of executable
>> parsing and I was very surprised that there is any attack vector at all
>> against it at all.
>
> Tavis mentioned to me some time ago that he made that suggestion
> upstream when he bumped into other issues many years ago; he can
> probably comment on how that went, but more generally, distro vendors
> have some latitude to apply non-upstream patches to change the default
> behavior... maybe that's the way to go.
>
> /mz

Yeah, `strings -a` is closer to what people expect by default - most
people find the section parsing a surprise. I found this one 10 years
ago https://bugs.gentoo.org/show_bug.cgi?id=91398, and suggested at
the time that maybe `strings -a` should be the default mode, enabling
bfd parsing only when requested.

This was dismissed by upstream, but I still think it's a good idea...

Tavis.


-- 
-------------------------------------
taviso@...xchg8b.com | pgp encrypted mail preferred
-------------------------------------------------------
