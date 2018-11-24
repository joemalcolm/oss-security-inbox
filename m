X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/11/24/2
Message-ID: <a40aa855b2656ce82d611ea22fb6fb0c76c86353.camel@debian.org>
Date: Sat, 24 Nov 2018 10:08:15 +0100
From: Yves-Alexis Perez <corsac@...ian.org>
To: oss-security@...ts.openwall.com, Wei Wu <ww9210@...il.com>
Subject: Re: fwd: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit provided)
Content-Type: text/plain; charset=utf-8

On Fri, 2018-11-23 at 21:45 +0100, Yves-Alexis Perez wrote:
> On Fri, 2018-11-23 at 19:09 +0100, Greg KH wrote:
> > As was discussed further on one of the threads on this topic, it looks
> > like this is a 4.20-rc issue only, and that 4.19 does not have this
> > issue.  So it might not be relevant to any distro at all, but I suggest
> > that people test themselves to be sure.
> 
> Hi Greg, thanks for the precision.

And considering no released kernel is vulnerable, here is the proof of concept
code provided initially.

Regards,
-- 
Yves-Alexis

View attachment "exp.c" of type "text/x-csrc" (6113 bytes)

Download attachment "signature.asc" of type "application/pgp-signature" (489 bytes)
