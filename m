X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/06/04/2
Message-ID: <CAA7hUgHtdh9ckayyuQyLn-_rNNo84-yoTEmyZm53HLt2Gfchmw@mail.gmail.com>
Date: Tue, 4 Jun 2013 15:51:14 +0200
From: Raphael Geissert <geissert@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: libraw: multiple issues
Content-Type: text/plain; charset=utf-8

Hi again,

On 29 May 2013 20:00, Kurt Seifried <kseifried@...hat.com> wrote:
> On 05/29/2013 03:18 AM, Raphael Geissert wrote:
>> On 28 May 2013 19:58, Kurt Seifried <kseifried@...hat.com> wrote:
>>> On 05/28/2013 02:43 AM, Raphael Geissert wrote:
>>>> So there's a double-free (fixed in 0.15.2[3])
>>
>> https://github.com/LibRaw/LibRaw/commit/19ffddb0fe1a4ffdb459b797ffcf7f490d28b5a6
>
> Please use CVE-2013-2126 for this issue.

FWIW, I've noticed that libkdcraw and darktable embed copies of libraw
that are vulnerable to the double free.

Cheers,
--
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
