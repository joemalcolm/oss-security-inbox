X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/37
Message-Id: <DMR2ZAT3AMGN.2LGDFOLD2UNHH@gr.ht>
Date: Mon, 09 Nov 2026 15:49:22 -0800
From: "Gregory Mullen" <oss-security@...ht>
To: <oss-security@...ts.openwall.com>
Subject: Re: Home Assistant: the password is not the key — token secrets in cleartext, two token classes never expire, password change revokes none (2026.11.0, live-proven)
Content-Type: text/plain; charset=utf-8

> Is there an actual security issue here? I read it as "if you can access
> the config directory or backups diretory then you can get a token that
> can't be revoked easily."
>
> Sure maybe room for improvement - which should be discussed with
> home-assistant maintainers first not here. Not convinced it is a
> security issue though. If you have access to the config directory
> chances are you already have access to everything already. And hopefully
> people are being careful with backups.

No, I don't think there's a meaningful exploit here. If you give someone your
"home key" as above, they could make an impression and keep it forever too. So
their security model holds. :P The "exploit" as described is boring, if it even
exists at all. But this is the straw that broke my back, so to speak. 

With the number of LLM generated/assisted exploits being disclosed
irresponsibly. I feel it's important to draw a line in the sand, and not just
allow malicious disclosures to become the new normal. This report isn't
critically important, but I *strongly* feel that rejecting behavior like this is
important.

I suspect the people who use LLMs to find exploits for them also aren't smart
enough to understand the risks they could expose people to. Those who don't
need an LLM to understand, need to be careful we don't forget it either. It's a
game, until it isn't.


