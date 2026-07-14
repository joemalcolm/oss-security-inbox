X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/14/2
Message-ID: <20260714020421.GA24818@openwall.com>
Date: Tue, 14 Jul 2026 04:04:21 +0200
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Cc: security@...ian.org
Subject: Re: new af_alg exploit in the wild?
Content-Type: text/plain; charset=utf-8

Hi Bernd,

On Tue, Jul 14, 2026 at 01:19:18AM +0200, Bernd Zeimetz wrote:
> few hours ago we had a webhost running Debian kernel 
> 6.12.90+deb13.1-amd64
> being compromised using a root exploit.

This is quite realistic.  You'd need 6.12.95 to have the below fixes
(quoting from Debian package changelog) for vulnerabilities with public
exploits:

    - eventpoll: fix ep_remove struct eventpoll / struct file UAF
      (CVE-2026-46242)

https://www.openwall.com/lists/oss-security/2026/07/08/13

    - ipv6: account for fraggap on the paged allocation path (CVE-2026-53362)

https://github.com/sgkdev/ipv6_frag_escape

(I expect a proper oss-security posting on the latter issue soon.)

> Unfortunately not with many useful traces left, the only obvious
> happening was loading the af_alg module (not used by other modules).

Probably the attacker ran many exploits, including for already fixed
issues such as Copy Fail, which may have left these traces otherwise
unrelated to whatever attack ultimately succeeded.

> I know that af_alg is marked as deprecated for 7.2, but is there any
> known exploit or issue that affects kernels of current distribution?

Known exploits against the kernel you were running, yes, but it wasn't
current for your distro.

Alexander

P.S. This isn't a Linux-only list, so when starting new threads let's
not imply and omit Linux from the Subject line when talking about Linux
kernel issues.
