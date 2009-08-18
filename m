X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/08/18/6
Message-ID: <Pine.GSO.4.51.0908181433250.17763@faron.mitre.org>
Date: Tue, 18 Aug 2009 14:33:35 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: kernel: parisc: isa-eeprom missing lower bound check
Content-Type: text/plain; charset=utf-8


Use CVE-2009-2846, to be filled in later.

- Steve


On Mon, 10 Aug 2009, Eugene Teo wrote:

> loff_t is a signed type. If userspace passes a negative ppos, the
> "count" range check is weakened. If ppos is negative, the readb() later
> in the function will poke in random memory. Only affects if you are
> using a PA-RISC kernel with CONFIG_EISA set.
>
> Upstream commit:
> http://git.kernel.org/linus/6b4dbcd86a9d464057fcc7abe4d0574093071fcc
>
> Reference:
> http://patchwork.kernel.org/patch/36418/
>
> Thanks, Eugene
>
