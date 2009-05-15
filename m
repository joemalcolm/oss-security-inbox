X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/05/15/7
Message-ID: <Pine.GSO.4.51.0905151624500.6857@faron.mitre.org>
Date: Fri, 15 May 2009 16:25:39 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: ptrace race CVE ID?
Content-Type: text/plain; charset=utf-8


On Fri, 15 May 2009, Michael K. Johnson wrote:

> > CVE-2009-1527, I think
>
> Thanks again, that's clearly it.

The CVE-2009-1527 description doesn't have "ptrace" alone, just ptrace.c,
which is why you wouldn't have found it if you searched on the CVE web
site.  I've since added a keyword so it'll be found in the future.

- Steve
