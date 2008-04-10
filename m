X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/04/10/5
Message-ID: <Pine.GSO.4.51.0804101438420.18291@faron.mitre.org>
Date: Thu, 10 Apr 2008 14:38:52 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: Jonathan Smith <smithj@...ethemallocs.com>
cc: oss-security@...ts.openwall.com, "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: buffer overflow in Python zlib extension module
Content-Type: text/plain; charset=utf-8


Cute.


======================================================
Name: CVE-2008-1721
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-1721
Reference: BUGTRAQ:20080409 IOActive Security Advisory: Buffer overflow in Python zlib extension module
Reference: URL:http://www.securityfocus.com/archive/1/archive/1/490690/100/0/threaded
Reference: CONFIRM:http://bugs.python.org/issue2586
Reference: BID:28715
Reference: URL:http://www.securityfocus.com/bid/28715

Integer signedness error in the zlib extension module in Python 2.5.2
and earlier allows remote attackers to execute arbitrary code via a
negative signed integer, which triggers insufficient memory allocation
and a buffer overflow.


