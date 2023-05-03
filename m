X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/05/03/7
Message-ID: <336b0af3-572e-b601-a856-b09d0930d40e@eenterphace.org>
Date: Wed, 3 May 2023 22:40:30 +0200
From: Moritz Bechler <mbechler@...terphace.org>
To: oss-security@...ts.openwall.com
Subject: Re: Perl's HTTP::Tiny has insecure TLS cert default, affecting CPAN.pm and other modules
Content-Type: text/plain; charset=utf-8

Hi,

> 
> A default is not a vulnerability.  There are reasons why defaults cannot 
> be changed in libraries once they are stable.  This is also why 
> documentation exists.
> 
> Revoke these CVEs, it's a stain on the process.


while one may criticize that CVEs have been assigned both for the 
insecure default and (some of the) insecure usages, at least one of 
these is a legitimate case, in terms of CVEs likely the latter. And when 
it comes to defaming projects, at least in my book, choosing, keeping 
and defending bad defaults speaks to much more than a CVE being assigned.


Moritz
