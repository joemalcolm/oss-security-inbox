X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/12/17/24
Message-ID: <Pine.GSO.4.51.0812171106440.17008@faron.mitre.org>
Date: Wed, 17 Dec 2008 11:07:45 -0500 (EST)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE id request: php-xajax
Content-Type: text/plain; charset=utf-8


On Wed, 17 Dec 2008, Steffen Joeris wrote:

> The patch for CVE-2007-2739 seems incomplete as it doesn't escape "&".
> I recommend removing the replace call and using htmlspecialchars() instead.

This counts for a new CVE, so use CVE-2008-5623

Will there be more details available, or should I just write the
description up based on the oss-security post?  Which versions are
affected?

> Also, I seem to be unable to find anything regarding CVE-2007-2740. Did
> anyone manage to find a patch or even what kind of issue we are talking
> about? I only see the XSS.

CVE-2007-2740 is based on the xajax PHP and Javascript library 0.2.5
Release Notes and Changelog, dated May 16, 2007, which states:
"...Security vunerabilities have been patched."

- Steve
