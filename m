X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/07/05/2
Message-ID: <20100705081441.GA896@mutt-is-awesome>
Date: Mon, 5 Jul 2010 11:14:41 +0300
From: Eren Türkay <eren@...dus.org.tr>
To: oss-security@...ts.openwall.com
Subject: Re: Request CVE ID for bogofilter base64 decoder heap corruption
Content-Type: text/plain; charset=utf-8

On Sat, Jul 03, 2010 at 10:57:20AM +0200, Matthias Andree wrote:
> Affected:	bogofilter <= 1.2.1
> 		SVN before 2010-07-03 08:40 UTC
> 
> Not affected:	bogofilter 1.2.2	    (to be released)

FYI, r6904 and r6906 seem to be related commits for the issue.

http://bogofilter.svn.sf.net/viewvc/bogofilter/trunk/bogofilter/src/base64.c?view=log

Regards,
Eren

Content of type "application/pgp-signature" skipped
