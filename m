X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/08/12/5
Message-ID: <alpine.GSO.2.20.1908120945250.19899@scrappy.simplesystems.org>
Date: Mon, 12 Aug 2019 09:46:55 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@...ple.dallas.tx.us>
To: oss-security@...ts.openwall.com
Subject: Re: ghostscript CVE-2019-10216: -dSAFER escape via .buildfont1
Content-Type: text/plain; charset=utf-8

Is it known if this issue also impacts the PDF reader?  I see that the 
involved code is Resource/Init/gs_type1.ps which is presumably related 
to Postscript Type 1 fonts, which might be included in a PDF file.

Bob
-- 
Bob Friesenhahn
bfriesen@...ple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
