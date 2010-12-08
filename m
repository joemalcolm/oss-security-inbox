X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/12/08/10
Message-ID: <20101208165635.1537e0ee@redhat.com>
Date: Wed, 8 Dec 2010 16:56:35 +0100
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Cc: cxib@...urityreason.com
Subject: Re: Re: CVE request (PHP 5.3.x getSymbol() DoS; CERT VU#479900)
Content-Type: text/plain; charset=utf-8

On Wed, 8 Dec 2010 14:27:22 +0000 (UTC) Maksymilian Arciemowicz wrote:

> my mistake, not setSybol() but getLocale()
> 
> $nx=new IntlDateFormatter("pl", IntlDateFormatter::FULL,
> IntlDateFormatter::FULL);
> $nx->getLocale(1);

1 is one of the (two?) values on which this does not crash ;).  Yeah,
this does strlen(NULL) crash otherwise.

-- 
Tomas Hoger / Red Hat Security Response Team
