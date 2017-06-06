X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/06/1
Message-ID: <20170606052025.hnwrsb5kmnf54v7r@lorien.valinor.li>
Date: Tue, 6 Jun 2017 07:20:25 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: Information on recent sqlite3 issues?
Content-Type: text/plain; charset=utf-8

On Thu, Jun 01, 2017 at 03:42:13PM +0200, Moritz Muehlenhoff wrote:
> On Thu, Jun 01, 2017 at 07:14:46AM -0600, Kurt Seifried wrote:
> > I will bring this up at the next cve board meeting (2 weeks from now).
> 
> Thanks! That also goes beyond sqlite, BTW. There's also a number of
> CVE IDs issued by Apple for libxml/libxslt which are in the same 
> position.
> 
> libxml:
> CVE-2016-4619 CVE-2016-4616 CVE-2016-4615 CVE-2016-4614 CVE-2015-7116
> CVE-2015-7115
> 
> libxslt:
> CVE-2017-2477 CVE-2016-4612 CVE-2016-4610 CVE-2016-4609 CVE-2016-4608
> CVE-2016-4607

On a query to Apple's product security team we got confirmed that

CVE-2016-4612 is a duplicate of CVE-2016-1683 (libxslt)

and

CVE-2016-4619 is a duplicate of CVE-2015-8317 (libxml2)

But no other information for the other CVEs.

Regards,
Salvatore
