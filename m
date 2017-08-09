X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/08/09/7
Message-id: <A94014E2-68EB-47B6-88B1-088FAD967837@apple.com>
Date: Wed, 09 Aug 2017 09:07:04 -0400
From: Jesse Hertz <jesse_hertz@...le.com>
To: oss-security@...ts.openwall.com
Subject: Re: Cve issue discussion
Content-Type: text/plain; charset=utf-8

If a non-ASAN build under valgrind caused it to consume a lot of memory, then its a legitimate issue, report it to libpng.
> On Aug 9, 2017, at 8:18 AM, Glenn Randers-Pehrson <glennrp@...il.com> wrote:
> 
> On Wed, Aug 9, 2017 at 3:49 AM, ne xo <nexo123@...look.kr> wrote:
>> Most bugs in ASan do not cause crash in non-ASan environments.
>> 
>> You should check with the valgrind tool.
> 
> That's what I do.
> 
> Valgrind exhibited the large memory request but did it quickly.


Download attachment "signature.asc" of type "application/pgp-signature" (802 bytes)
