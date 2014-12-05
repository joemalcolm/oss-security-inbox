X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/05/21
Message-ID: <CALPTtNVKmLRRJWq1Bm4UDptSjGTbLwK1m7ezApeY8wg9W0g1jw@mail.gmail.com>
Date: Fri, 5 Dec 2014 14:15:03 -0800
From: Reed Loden <reed@...dloden.com>
To: oss-security@...ts.openwall.com
Subject: Re: Offset2lib: bypassing full ASLR on 64bit Linux
Content-Type: text/plain; charset=utf-8

On Fri, Dec 5, 2014 at 7:09 AM, Daniel Micay <danielmicay@...il.com> wrote:

>
> Mozilla has no excuse for not enabling PIE for Firefox, because 99% of
> the code is in dynamic libraries already. It has no performance impact.
>

For the record, Mozilla tried it several months ago and had to back it out.

"Nautilus (the file manager) can't open PIE executables, which makes
distributing PIE executable essentially impossible."

https://bugzilla.mozilla.org/show_bug.cgi?id=857628#c6 (which caused
https://bugzilla.mozilla.org/show_bug.cgi?id=1076892)

~reed

