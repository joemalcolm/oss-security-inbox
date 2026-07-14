X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/14/11
Message-ID: <alXulV2mtaEz5q2q@definition.pseudorandom.co.uk>
Date: Tue, 14 Jul 2026 09:08:53 +0100
From: Simon McVittie <smcv@...ian.org>
To: oss-security@...ts.openwall.com
Cc: security@...ian.org
Subject: Re: new af_alg exploit in the wild?
Content-Type: text/plain; charset=utf-8

On Tue, 14 Jul 2026 at 04:04:21 +0200, Solar Designer wrote:
>On Tue, Jul 14, 2026 at 01:19:18AM +0200, Bernd Zeimetz wrote:
>> few hours ago we had a webhost running Debian kernel
>> 6.12.90+deb13.1-amd64
>> being compromised using a root exploit.
>
>This is quite realistic.  You'd need 6.12.95 to have the below fixes
>(quoting from Debian package changelog) for vulnerabilities with public
>exploits:
>
>    - eventpoll: fix ep_remove struct eventpoll / struct file UAF
>      (CVE-2026-46242)
>
>https://www.openwall.com/lists/oss-security/2026/07/08/13
>
>    - ipv6: account for fraggap on the paged allocation path (CVE-2026-53362)
>
>https://github.com/sgkdev/ipv6_frag_escape

Also CVE-2026-46331 ("packet_edit_meme") [1] which was a local root 
vulnerability if I understand correctly, and has been known for a while 
(fixed in 6.12.94, Debian advisory on 21st June) therefore probably 
well-known to attackers.

     smcv

[1] https://security-tracker.debian.org/tracker/CVE-2026-46331
