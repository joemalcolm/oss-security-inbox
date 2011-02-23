X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/23/11
Message-ID: <4D64BAC8.2000501@msgid.tls.msk.ru>
Date: Wed, 23 Feb 2011 10:44:08 +0300
From: Michael Tokarev <mjt@....msk.ru>
To: oss-security@...ts.openwall.com
CC: Nelson Elhage <nelhage@...lice.com>,  Dan Rosenberg <dan.j.rosenberg@...il.com>
Subject: Re: Physical access vulnerabilities and auto-mounting
Content-Type: text/plain; charset=utf-8

23.02.2011 08:46, Nelson Elhage wrote:
> I don't have any definite opinions here about where to draw which
> lines, but I want to point out that in addition to physical attack
> vectors, virtualization tools are also potentially affected by these
> kinds of bugs. If you try to mount an untrusted VM's virtual disk
> image from somewhere, you're also vulnerable to that VM triggering
> bugs in the filesystem or other layers.

And that's why projects like http://www.libguestfs.org/ emerges.
FWIW ;)

/mjt
