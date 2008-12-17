X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/12/17/11
Message-ID: <Pine.GSO.4.51.0812162121230.5724@faron.mitre.org>
Date: Tue, 16 Dec 2008 21:24:32 -0500 (EST)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: Eugene Teo <eugeneteo@...nel.sg>
cc: "Steven M. Christey" <coley@...us.mitre.org>, oss-security@...ts.openwall.com
Subject: Re: CVE request: kernel: applicom: fix an unchecked user ioctl range
Content-Type: text/plain; charset=utf-8


On Wed, 17 Dec 2008, Eugene Teo wrote:

> Hmm, there's a comment in the ac_ioctl() that the device for this is
> only accessible by root, so if out of range may not matter. Hmm. So,
> maybe, maybe not.

Our current approach would be, probably not.

We're probably going to see an increase in issues related to IOCTLs
(simply because we're seeing an increase in CVE, mostly in Windows
software so far).  So the accessibility of the IOCTL matters - in some
cases, maybe the IOCTL shouldn't be exposed to anybody untrusted at all
(maybe you're listening on a socket that allows anyone to connect).  In
other cases, maybe it can accept requests from untrusted users but then
has to validate its inputs, like we're seeing with userland-to-kernel
interfaces.

- Steve
