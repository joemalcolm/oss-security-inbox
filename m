X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/08/13/7
Message-ID: <1407944123.16212.8.camel@scapa>
Date: Wed, 13 Aug 2014 17:35:23 +0200
From: Yves-Alexis Perez <corsac@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: ro bind mount bypass using user namespaces
Content-Type: text/plain; charset=utf-8


On Tue, Aug 12, 2014 at 02:48:28PM -0700, Kenton Varda wrote:
> Due to a bug in the Linux kernel's implementation of remount, on systems
> with unprivileged user namespaces enabled, it is possible for an
> unprivileged user to gain write access to any visible read-only bind mount.
> It is also possible to bypass flags like nodev, nosuid, and noexec.
> 
So that means running with both USER_NS=y and
kernel.unprivileged_userns_clone=1?

Regards,
-- 
Yves-Alexis

Download attachment "signature.asc" of type "application/pgp-signature" (474 bytes)
