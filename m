X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/09/16/4
Message-ID: <Pine.GSO.4.51.0809152058040.6953@faron.mitre.org>
Date: Mon, 15 Sep 2008 20:59:40 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
cc: coley@...us.mitre.org
Subject: Re: CVE Request (ruby -- DNS spoofing vulnerability in resolv.rb)
Content-Type: text/plain; charset=utf-8


On Thu, 11 Sep 2008, Tomas Hoger wrote:

> > We're treating this as a distinct issue because this is *REALLY* bad
> > randomness within a particular implementation, besides the inherent
> > limitation of DNS when source ports are fixed.
>
> Applying this rule, separate id should probably be used for PyDNS [1]
> [2] and adns [3] as well, at they both suffer from the similar flaws -
> use predictable transactions ids and source port.

CVE-2008-4099 - PyDNS

CVE-2008-4100 - adns

- Steve
