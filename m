X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/18/2
Message-ID: <Pine.LNX.4.64.1412171944070.31164@beijing.mitre.org>
Date: Wed, 17 Dec 2014 19:45:08 -0500 (EST)
From: cve-assign@...re.org
To: Sean Amoss <ackle@...too.org>
cc: OSS Security List <oss-security@...ts.openwall.com>, cve-assign@...re.org, security@...too.org
Subject: Re: CVE Request: ZNC NULL Pointer Dereference
Content-Type: text/plain; charset=utf-8


On Sat, 13 Dec 2014, Sean Amoss wrote:

> Hello,
>
> It looks like the following issue has not received a CVE identifier as
> of yet:
>
> A NULL pointer dereference has been found in the
> "CWebAdminMod::ChanPage()" function in modules/webadmin.cpp.
>
> This was reported to Gentoo [1] by means of a Secunia advisory [2],
> which in turn referenced the upstream bug request [3].
>
>
> [1] https://bugs.gentoo.org/show_bug.cgi?id=507794
> [2] https://secunia.com/advisories/57795/
> [3] https://github.com/znc/znc/issues/528

Yse CVE-2014-9403.

---

CVE assignment team, MITRE CVE Numbering Authority M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
