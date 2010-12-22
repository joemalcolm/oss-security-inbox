X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/12/22/5
Message-ID: <4d118c16.cf05ec0a.1275.ffffec8a@mx.google.com>
Date: Tue, 21 Dec 2010 23:27:46 -0600
From: Raphael Geissert <geissert@...ian.org>
To: oss-security@...ts.openwall.com, earl@...lhood.com, 607693@...s.debian.org
Subject: Re: CVE Request -- MHonArc: Improper escaping of certain HTML sequences (XSS)
Content-Type: text/plain; charset=utf-8

Earl Hood wrote:
> With that said, do have an available patch that fixes
> the problem?
> 
> If not, I can look into it during the holiday break to
> get a fix for it.  Note, even if there is a fix for the
> case you provided, there is no 100% guarantee that there
> could be other data input sequences that get by the filter.
> Hence, those concerned about security disable the
> HTML filter:

Attached patch is a quick way to fix it. It increases the processing time 
(it has to run filter() at least twice per message,) but ensures that no 
undesired html is returned (unless one of the existing routines misses 
something.)

What do you think about it?

Regards,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net

View attachment "mhonarc.CVE-2010-4524.patch" of type "text/x-patch" (710 bytes)
