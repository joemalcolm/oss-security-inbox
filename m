X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/11/05/6
Message-ID: <878ux2trwu.fsf@mid.deneb.enyo.de>
Date: Tue, 05 Nov 2013 23:17:21 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: additional fix for CVE-2012-2825 libxslt crash
Content-Type: text/plain; charset=utf-8

* Vincent Danen:

> The reason this doesn't crash for me on Red Hat Enterprise Linux 5 which
> ships 1.1.17 is because we included this patch (well, the developer did)
> a day after the initial build with the comment:
>
> - CVE-2012-2825 requires an extra patch on 1.1.17
>
> So, I think this does require a second CVE.

Has anyone shipped an incomplete update?  If yes, then I think we
actually need a second CVE.  In the past, we got them for similar
cases, and at least Debian's tracking more or less assumes that it's
possible to assign CVEs to deal with such corner cases.
