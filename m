X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/12/17/10
Message-ID: <Pine.GSO.4.51.0812162114230.5724@faron.mitre.org>
Date: Tue, 16 Dec 2008 21:18:20 -0500 (EST)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: Jan Lieskovsky <jlieskov@...hat.com>
cc: Andreas Ericsson <ae@....se>, Eygene Ryabinkin <rea-sec@...elabs.ru>, oss-security@...ts.openwall.com, coley@...re.org
Subject: Re: CVE Request (nagios)
Content-Type: text/plain; charset=utf-8


On Thu, 11 Dec 2008, Jan Lieskovsky wrote:

>   I can't follow this. Nagios 3.0.5 should fix two issues:

Neither can I.  I'm not sure if we need to clean up the CVE descriptions
or not.

Note that general CVE practice is - if you have vuln X in version 1, and
you don't completely fix X, then we give a separate CVE for version 2.

In this case, I'd probably want to modify CVE-2008-5028 to say it's
related to "submission of external commands" which is in the 3.0.6
changelog, then refer to the original, pre-3.0.5 CSRF as the "Tim
Starling" bug or something like that.

- Steve
