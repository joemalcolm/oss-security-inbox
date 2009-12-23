X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/12/23/9
Message-ID: <Pine.GSO.4.64.0912231809360.21134@faron.mitre.org>
Date: Wed, 23 Dec 2009 18:10:27 -0500 (EST)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re:  CVE request: polipo DoS via overly large "Content-Length" header
Content-Type: text/plain; charset=utf-8


On Sat, 12 Dec 2009, Raphael Geissert wrote:

> A vulnerability has been found in polipo that allows a remote attacker to
> crash the daemon via an overly large "Content-Length" header.

Use CVE-2009-4413, to be filled in later.

Note: CVE-2009-3305 has been assigned to a separate crash using a 
malformed Cache-Control line, as documented in 
http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=547047

- Steve
