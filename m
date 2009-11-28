X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/11/28/2
Message-ID: <Pine.GSO.4.51.0911281138360.8809@faron.mitre.org>
Date: Sat, 28 Nov 2009 11:40:37 -0500 (EST)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: Josh Bressers <bressers@...hat.com>
cc: oss-security@...ts.openwall.com
Subject: Re: CVE request: Argument injections in multiple PEAR packages
Content-Type: text/plain; charset=utf-8


All,

Please use CVE-2009-4023 for the $from variable in Mail only.  I just
assigned CVE-2009-4111 for the outstanding bug for $recipient; since that
argument was reported after $from had been fixed, we are effectively
dealing with different downstream versions and possibly partial patches by
some distros.

- Steve
