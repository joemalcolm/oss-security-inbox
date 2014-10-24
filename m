X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/24/14
Message-ID: <CALx_OUDCV098HO+KFJrLuMtBomAUw2PdY-ikCbnmkGp=1NmyaQ@mail.gmail.com>
Date: Fri, 24 Oct 2014 13:31:28 -0700
From: Michal Zalewski <lcamtuf@...edump.cx>
To: oss-security <oss-security@...ts.openwall.com>, Tavis Ormandy <taviso@...xchg8b.com>
Subject: Re: strings / libbfd crasher
Content-Type: text/plain; charset=utf-8

[+Tavis]

>> I don't understand the user benefit of extracting strings only from
>> certain sections of executables, and I almost feel like it's a side
>> effect of strings being a part of binutils more than anything else.
>
> I fully agree. I wasn't aware strings does any kind of executable
> parsing and I was very surprised that there is any attack vector at all
> against it at all.

Tavis mentioned to me some time ago that he made that suggestion
upstream when he bumped into other issues many years ago; he can
probably comment on how that went, but more generally, distro vendors
have some latitude to apply non-upstream patches to change the default
behavior... maybe that's the way to go.

/mz
