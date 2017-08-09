X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/08/09/6
Message-ID: <CA+PdXcvm1e3zS6uWy-hRs1Sg+RevsbY5kV0X16_sKwS6DxRnxQ@mail.gmail.com>
Date: Wed, 9 Aug 2017 08:18:54 -0400
From: Glenn Randers-Pehrson <glennrp@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Cve issue discussion
Content-Type: text/plain; charset=utf-8

On Wed, Aug 9, 2017 at 3:49 AM, ne xo <nexo123@...look.kr> wrote:
> Most bugs in ASan do not cause crash in non-ASan environments.
>
> You should check with the valgrind tool.

That's what I do.

Valgrind exhibited the large memory request but did it quickly.
