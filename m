X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/01/11/2
Message-ID: <Pine.GSO.4.64.1101101924100.8774@faron.mitre.org>
Date: Mon, 10 Jan 2011 19:27:28 -0500 (EST)
From: "Steven M. Christey" <coley@...-smtp.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: possible flaw in widely used strtod.c implementation
Content-Type: text/plain; charset=utf-8


Since this problem stems from a single codebase, strtod.c, so it gets a 
single CVE identifier (already assigned CVE-2010-4645).  The CVE 
description will "blame" strtod.c and mention PHP, and any other 
high-profile software that is discovered to use the same vulnerable, 
shared code.

- Steve
