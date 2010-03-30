X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/03/30/11
Message-ID: <Pine.GSO.4.64.1003301639530.4709@faron.mitre.org>
Date: Tue, 30 Mar 2010 16:41:06 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE id request: ikiwiki
Content-Type: text/plain; charset=utf-8


On Wed, 17 Mar 2010, Nico Golde wrote:

> "javascript insertion via svg uris
>
> Ivan Shmakov pointed out that the htmlscrubber allowed data:image/* urls,
> including data:image/svg+xml. But svg can contain javascript, so that is
> unsafe."
> http://ikiwiki.info/security/#index30h2

Note that this URL is erroneous (it's for an older, similar issue); you 
want this one:

http://ikiwiki.info/security/#index36h2

Use CVE-2010-1195

- Steve
