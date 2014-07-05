X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/07/05/5
Message-ID: <1404585680.1720.5.camel@scapa>
Date: Sat, 05 Jul 2014 20:41:20 +0200
From: Yves-Alexis Perez <corsac@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2014-4699: Linux ptrace bug
Content-Type: text/plain; charset=utf-8

On sam., 2014-07-05 at 22:25 +0400, Solar Designer wrote:
> So far, we're aware that the problem is definitely triggerable on recent
> kernels (at least mainline and recent Ubuntu) running on Intel CPUs
> (including in guest kernels in some VMs that run on Intel CPU hosts).

For what it's worth, we managed to reproduce the crash on Debian 3.14.9-1
kernel (from sid), but not on the stable 3.2.57-3+deb7u2 (there's a
double faute but no panic), on Intel CPUs.

Regards,
-- 
Yves-Alexis

Download attachment "signature.asc" of type "application/pgp-signature" (474 bytes)
