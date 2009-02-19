X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/02/19/2
Message-ID: <20090219212536.GA11769@logo.rdu.rpath.com>
Date: Thu, 19 Feb 2009 16:25:36 -0500
From: "Michael K. Johnson" <johnsonm@...th.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: Poppler -Two Denial of Service Vulnerabilities
Content-Type: text/plain; charset=utf-8

On Fri, Feb 13, 2009 at 11:20:40AM +0200, Pinar Yanardag wrote:
> 1) An uninitialised memory access error in the 
> "FormWidgetChoice::loadDefaults()" function can be exploited to cause a 
> crash via a specially crafted PDF document.

This is changeset 1fc342eadcbbb41302f190b215c5daf23c9ec9b1 in poppler's
git and is associated with poppler bug 19790

> 2) An error in the "JBIG2Stream::readSymbolDictSeg()" function can be 
> exploited to cause a crash via a specially crafted PDF document.

This is changeset d3f04f537fb3e963c149a7e2d8d83c7cb19da8c0 in poppler's
git and is associated with poppler bug 19702

These bugs were reported fixed in poppler-0.10.4.tar.gz, released on
February 10, 2009
