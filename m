X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/14/1
Message-ID: <20260714000328.GE858880@qaa.vinc17.org>
Date: Tue, 14 Jul 2026 02:03:28 +0200
From: Vincent Lefevre <vincent@...c17.net>
To: oss-security@...ts.openwall.com
Cc: security@...ian.org
Subject: Re: new af_alg exploit in the wild?
Content-Type: text/plain; charset=utf-8

On 2026-07-14 01:19:18 +0200, Bernd Zeimetz wrote:
> Hi oss-sec,
> 
> few hours ago we had a webhost running Debian kernel 6.12.90+deb13.1-amd64
> being compromised using a root exploit.
> Unfortunately not with many useful traces left, the only obvious
> happening was loading the af_alg module (not used by other modules).
> 
> I know that af_alg is marked as deprecated for 7.2, but is there any
> known exploit or issue that affects kernels of current distribution?
> 
> We've blacklisted the module everywhere now.

https://copy.fail/ suggests to blacklist algif_aead.
Or is this another vulnerability?

-- 
Vincent Lefèvre <vincent@...c17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)
