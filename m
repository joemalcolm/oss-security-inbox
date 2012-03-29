X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/29/11
Message-ID: <4F7463BD.1060509@pre-sense.de>
Date: Thu, 29 Mar 2012 15:29:33 +0200
From: Timo Warns <warns@...-sense.de>
To: oss-security@...ts.openwall.com
Subject: Re:  CVE-2012-1162 / -1163: Incorrect loop construct and numeric overflow in libzip
Content-Type: text/plain; charset=utf-8

I just realized that only libzip 0.10 is affected by these
vulnerabilities, but not older versions of libzip.

Stefan Cornelius has identified the precise commits that introduced the
vulnerabilities:
https://bugzilla.redhat.com/show_bug.cgi?id=802564
https://bugzilla.redhat.com/show_bug.cgi?id=803028

As PHP and zipruby include older versions of libzip, they are not
affected by the issues.

Cheers, Timo
