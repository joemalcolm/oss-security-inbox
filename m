X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/12/22/3
Message-ID: <50D51BE0.2090306@cs.ucla.edu>
Date: Fri, 21 Dec 2012 18:33:04 -0800
From: Paul Eggert <eggert@...ucla.edu>
To: coley@...us.mitre.org, oss-security@...ts.openwall.com,  security@...ntu.com
Subject: Re: CVE Request: grep
Content-Type: text/plain; charset=utf-8

On 12/21/2012 04:19 PM, Seth Arnold wrote:
> Paul, are any security issues fixed with those patches?

Possibly.  I usually don't bother to try to find exploits,
so I can't say for sure.

> Did I overlook
> any other patches that need CVE numbers?

If memory serves you also need to update gnulib.

The set of patches is tricky enough that it is probably
better to upgrade to 2.11; that's simpler, and arguably
it's more likely to be safe.  You might want to fix
the two bugs that were introduced in 2.11 (see
the NEWS file), but you probably already have a 2.11
package that does that, somewhere.  You might also
want to undo the -r change introduced in 2.11.
