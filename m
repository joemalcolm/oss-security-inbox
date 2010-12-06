X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/12/06/10
Message-ID: <Pine.GSO.4.64.1012061622190.25660@faron.mitre.org>
Date: Mon, 6 Dec 2010 16:26:38 -0500 (EST)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request (PHP 5.3.x getSymbol() DoS; CERT VU#479900)
Content-Type: text/plain; charset=utf-8


CVE-2010-4409 was just assigned by MITRE for this issue.

- Steve


On Mon, 6 Dec 2010, Vincent Danen wrote:

> I haven't seen a CVE request for this already, and can't find a CVE name
> if one has been assigned.
>
> CERT has a bulletin up regarding a DoS in the getSymbol() function
> (integer overflow vulnerability):
>
> http://www.kb.cert.org/vuls/id/479900
> http://svn.php.net/viewvc?view=revision&revision=305571
> http://php.net/manual/en/numberformatter.getsymbol.php
