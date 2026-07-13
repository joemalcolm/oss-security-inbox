X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/13/9
Message-ID: <ba1432ea2985045268404fb596b9c2aa@bzed.de>
Date: Tue, 14 Jul 2026 01:19:18 +0200
From: Bernd Zeimetz <bernd@...d.de>
To: oss-security@...ts.openwall.com
Cc: security@...ian.org
Subject: new af_alg exploit in the wild?
Content-Type: text/plain; charset=utf-8

Hi oss-sec,

few hours ago we had a webhost running Debian kernel 
6.12.90+deb13.1-amd64
being compromised using a root exploit.
Unfortunately not with many useful traces left, the only obvious
happening was loading the af_alg module (not used by other modules).

I know that af_alg is marked as deprecated for 7.2, but is there any
known exploit or issue that affects kernels of current distribution?

We've blacklisted the module everywhere now.


Best regards,

Bernd
-- 
  Bernd Zeimetz                            Debian GNU/Linux Developer
  http://bzed.de                                http://www.debian.org
  GPG Fingerprint: ECA1 E3F2 8E11 2432 D485  DD95 EB36 171A 6FF9 435F

