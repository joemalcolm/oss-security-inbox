X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/03/12/4
Message-ID: <Pine.GSO.4.51.0803121216000.7262@faron.mitre.org>
Date: Wed, 12 Mar 2008 12:16:20 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: setrlimit can be avoided (Linux less than 2.6.22)
Content-Type: text/plain; charset=utf-8


On Tue, 11 Mar 2008, Kees Cook wrote:

> This rlimit-avoiding bug probably needs a CVE associated with it.  Users
> could avoid RLIMIT_CPU by setting it to "0".  The fixes in 2.6.17 did
> not actually fix the problem.

Use CVE-2008-1294 - will be filled in later.

- Steve
