X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/12/07/6
Message-ID: <20161207133758.GA25762@lorien.valinor.li>
Date: Wed, 7 Dec 2016 14:37:58 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: Re: CVE-2016-8655 Linux af_packet.c race condition (local root)
Content-Type: text/plain; charset=utf-8

Hi Hanno,

On Wed, Dec 07, 2016 at 02:15:15PM +0100, Hanno Böck wrote:
> Hi,
> 
> I'm running kernel 4.8.12, which has the fix you pointed out included,
> however:
> 
> > You can also run it with "crash" as the first argument to force a
> > panic.
> 
> running your code with the "crash" parameter reliably panics this
> kernel.
> This doesn't seem right. Is this an incomplete or nonworking fix?

The fix actually should not be included in 4.8.12. It is 

$ git describe --contains 84ac7260236a49c79eede91617700174c2c19b0c
v4.9-rc8~5^2~14

Regards, hope this helps,
Salvatore
