X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/07/05/27
Message-ID: <94fcbfb6-70a5-348f-3f5c-ef5f6aec00fe@gentoo.org>
Date: Thu, 6 Jul 2017 00:06:03 +0200
From: Kristian Fiskerstrand <k_f@...too.org>
To: oss-security@...ts.openwall.com, Daniel Micay <danielmicay@...il.com>
Subject: Re: systemd fails to parse user that should run service
Content-Type: text/plain; charset=utf-8

On 07/05/2017 05:06 PM, Daniel Micay wrote:
> https://github.com/shadow-maint/shadow/blob/master/libmisc/chkname.c#L49
> 
> POSIX also says "." is a portable character, which isn't allowed by
> shadow either. What are distributions using to provide useradd if not
> shadow?

At least Gentoo has patched shadow to allow dot in username since 2005:
https://gitweb.gentoo.org/repo/gentoo/historical.git/commit/?id=be804d756a1834932c05896a87e6ca2e7c602038

-- 
Kristian Fiskerstrand
OpenPGP keyblock reachable at hkp://pool.sks-keyservers.net
fpr:94CB AFDD 3034 5109 5618 35AA 0B7F 8B60 E3ED FAE3



Download attachment "signature.asc" of type "application/pgp-signature" (489 bytes)
