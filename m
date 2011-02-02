X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/02/1
Message-ID: <AANLkTinbk+EJVzewvQ2HhN-pt=8tQn-Pv7Lis76qTfa3@mail.gmail.com>
Date: Wed, 2 Feb 2011 03:23:32 +0000
From: Michael Gilbert <michael.s.gilbert@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: xpdf
Content-Type: text/plain; charset=utf-8

On Thu, Jan 20, 2011 at 11:15 PM, Dan Rosenberg wrote:
> 2. Malformed commands may cause corruption of the internal stack used
> to maintain graphics contexts, leading to potentially exploitable
> memory corruption.  Fixed in poppler commit at [2], hopefully fixed
> soon at xpdf upstream.

Correct me if I'm wrong, but it looks like all versions of xpdf and
poppler <= 0.12.x should not be affected by this issue (since graphics
states are not tracked via stackheight in those versions).  Also,
according to redhat, poppler in rhel5 does not crash when tested with
your poc.  Would you be willing to share so we can test that?

Best wishes,
Mike
