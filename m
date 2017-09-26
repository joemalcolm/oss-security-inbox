X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/09/26/4
Message-ID: <20170926065556.irjryveao6xcjmds@perpetual.pseudorandom.co.uk>
Date: Tue, 26 Sep 2017 07:55:56 +0100
From: Simon McVittie <smcv@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: Linux kernel CVEs not mentioned on oss-security
Content-Type: text/plain; charset=utf-8

On Mon, 25 Sep 2017 at 21:50:59 +0000, Priedhorsky, Reid wrote:
> 2. Is there another source of comprehensive coverage of vulnerabilities
> in the Linux kernel, including but not necessarily limited to all CVEs
> issued for it?

https://security-tracker.debian.org/tracker/source-package/linux is
probably not comprehensive either, but should include all the
non-embargoed CVEs and other vulnerabilities that the Debian security team
is aware of, including vulnerabilities that were assessed as too minor
to justify a Debian security advisory.

(The same works for any other Debian source package, e.g.
https://security-tracker.debian.org/tracker/source-package/ioquake3 is
a less extreme case.)

Regards,
    smcv
