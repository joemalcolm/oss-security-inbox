X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/03/24/8
Message-ID: <Pine.GSO.4.51.0803241856530.27382@faron.mitre.org>
Date: Mon, 24 Mar 2008 18:56:57 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re:  CVE Request: PHP PECL module APC vulnerable to stack-based buffer overflow
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2008-1488
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-1488
Reference: MISC:http://papasian.org/~dannyp/apcsmash.php.txt
Reference: CONFIRM:http://pecl.php.net/bugs/bug.php?id=13415

Stack-based buffer overflow in apc.c in Alternative PHP Cache (APC)
3.0.11 through 3.0.16 allows remote attackers to execute arbitrary
code via a long filename.


