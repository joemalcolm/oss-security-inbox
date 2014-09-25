X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/25/34
Message-ID: <20140925175813.GB2921@openwall.com>
Date: Thu, 25 Sep 2014 21:58:13 +0400
From: Solar Designer <solar@...nwall.com>
To: Christos Zoulas <christos@...las.com>
Cc: oss-security@...ts.openwall.com, chet.ramey@...e.edu
Subject: Re: CVE-2014-6271: remote code execution through bash
Content-Type: text/plain; charset=utf-8

On Thu, Sep 25, 2014 at 01:34:51PM -0400, Christos Zoulas wrote:
> I think that at this point the only salvation is to disable function
> import by default and provide a command line flag and a "set" flag
> to explicitly enable it (so that scripts that depend on it can
> easily be fixed). It is not a widely used feature, and both subshells
> and sourced scripts don't need it or use it. It might have seemed
> like a good idea a couple of decades ago, but it needs to go.

Good idea to also add a "set" flag.  Thanks!

Alexander
