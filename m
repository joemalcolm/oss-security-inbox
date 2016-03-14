X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/03/14/21
Message-ID: <alpine.GSO.2.20.1603141257140.12737@freddy.simplesystems.org>
Date: Mon, 14 Mar 2016 13:01:38 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@...ple.dallas.tx.us>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: Re: CVE-Request - GNU Awk.
Content-Type: text/plain; charset=utf-8

On Mon, 14 Mar 2016, Kurt Seifried wrote:

> Is a SIGSEGV on it's own enough to justify a CVE? For some apps the answer
> would be yes (e.g. a single threaded network service that crashes out). For
> something like gawk I'm not so sure, it's a local utility that shouldn't

I don't see a security issue here.  It is just a bug.  In order for it 
to be a security issue, it needs to be caused by external data input 
into the program (e.g data processed by the awk script).  This would 
also apply to a network service which has a bug and crashes due to 
something other than specific external input (e.g. resource leak).

Bob
-- 
Bob Friesenhahn
bfriesen@...ple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
