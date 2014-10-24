X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/24/11
Message-ID: <CALx_OUB2-TWCkWVawO=JS8HhY7_dX1jdpGTyGVctOVLXtXdhiw@mail.gmail.com>
Date: Fri, 24 Oct 2014 12:50:40 -0700
From: Michal Zalewski <lcamtuf@...edump.cx>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: strings / libbfd crasher
Content-Type: text/plain; charset=utf-8

Filed this as:
https://sourceware.org/bugzilla/show_bug.cgi?id=17510

On Fri, Oct 24, 2014 at 12:10 PM, Michal Zalewski <lcamtuf@...edump.cx> wrote:
> I do have a bunch more that seem exploitable, though - for example:
>
> http://lcamtuf.coredump.cx/strings-bfd-badfree - does this repro for
> people (I tried with binutils 2.24)?
>
> I think that given the expectations people have around what strings
> does and whether it's safe to run on untrusted binaries, I'd seriously
> question the wisdom of making it use libbfd, at least by default;
> perhaps distros want to consider non-upstream patches that default to
> the -a mode, instead?
>
> I don't understand the user benefit of extracting strings only from
> certain sections of executables, and I almost feel like it's a side
> effect of strings being a part of binutils more than anything else.
>
>
> On Fri, Oct 24, 2014 at 5:00 AM, Hanno Böck <hanno@...eck.de> wrote:
>> I've now put this in upstream's bugtracker:
>> https://sourceware.org/bugzilla/show_bug.cgi?id=17509
>>
>> Hope noone else has already done this.
>>
>> --
>> Hanno Böck
>> http://hboeck.de/
>>
>> mail/jabber: hanno@...eck.de
>> GPG: BBB51E42
