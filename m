X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/01/07/2
Message-ID: <20190107163608.24ovdibadervqvqe@suse.de>
Date: Mon, 7 Jan 2019 17:36:08 +0100
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: Re: New pagecache based sidechannel attack published
Content-Type: text/plain; charset=utf-8

On Mon, Jan 07, 2019 at 08:43:40AM +0100, Marcus Meissner wrote:
> Hi,
> 
> https://www.theregister.co.uk/2019/01/05/boffins_beat_page_cache/
> https://arxiv.org/abs/1901.01161
> 
> Daniel Gruss, Erik Kraft, Trishita Tiwari, Michael Schwarz, Ari Trachtenberg, Jason Hennessey, Alex Ionescu, Anders Fogh
> have published a paper describing side channels attacks using OS pagecache statistics, allowing looking at
> things like keystroke timing and others.
> 
> This affects not just Linux, but also Windows and potentially other OS.
> 
> Linux mainline patch:
>   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=574823bfab82d9d8fa47f422778043fbb4b4f50e
> 
> I have requested a Linux specific CVE.

CVE-2019-5489 was assigned.

Ciao, Marcus
