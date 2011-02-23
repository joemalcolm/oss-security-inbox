X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/23/9
Message-ID: <20110223061818.GA22747@openwall.com>
Date: Wed, 23 Feb 2011 09:18:18 +0300
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: Physical access vulnerabilities and auto-mounting
Content-Type: text/plain; charset=utf-8

On Wed, Feb 23, 2011 at 12:46:47AM -0500, Nelson Elhage wrote:
> I don't have any definite opinions here about where to draw which
> lines, but I want to point out that in addition to physical attack
> vectors, virtualization tools are also potentially affected by these
> kinds of bugs. If you try to mount an untrusted VM's virtual disk
> image from somewhere, you're also vulnerable to that VM triggering
> bugs in the filesystem or other layers.

Excellent point.

Arguably, that would indicate improper design of the virtualization tool
or an inappropriate action by a sysadmin, though.  Here's an example:

http://www.linode.com/backups/

"The backup system must be able to mount your disk images on the host."

I wonder if they realize the risk they're taking...

Alexander
