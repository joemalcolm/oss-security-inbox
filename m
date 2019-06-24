X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/06/24/6
Message-ID: <alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
Date: Mon, 24 Jun 2019 10:42:40 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@...ple.dallas.tx.us>
To: oss-security@...ts.openwall.com
Subject: Re: Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz
Content-Type: text/plain; charset=utf-8

On Mon, 24 Jun 2019, Dmitry Vyukov wrote:
>
> So what are community thoughts on automatic CVE assignment?
> That would definitely get some attention to these bugs by vendors
> (because that's open CVEs in their products then). And this should be
> implementable because both OSS-Fuzz and syzbot are automated enough
> already. However I afraid that these CVEs may be as automatically
> sorted into a trashcan then :)

An excess of CVEs would cause CVEs to be not very meaningful any more.

Most oss-fuzz issue detections are not CVE worthy.  For example, a 
one-byte read "heap overflow" is not likely to cause any actual harm 
but oss-fuzz would classify it as "heap overflow".

Bob
-- 
Bob Friesenhahn
bfriesen@...ple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
