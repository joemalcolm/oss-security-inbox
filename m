X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/10/18/19
Message-ID: <20121018203531.GB12222@inutil.org>
Date: Thu, 18 Oct 2012 22:35:31 +0200
From: Moritz Muehlenhoff <jmm@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2012-2248: isc-dhcp, Debian-specific: build path included in PATH
Content-Type: text/plain; charset=utf-8

Hi Kurt,
Issues only affecting testing/unstable should always be assigned a CVE ID
nonetheless. The Debian ecosystem is much more than stable alone:
There is a great deal of derivative distributions [1], which import packages
from Debian testing/unstable and having a CVE ID is a convenient way to
track whether they are affected.

[1] http://wiki.debian.org/Derivatives/Census

Cheers,
        Moritz
