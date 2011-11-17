X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/17/3
Message-ID: <20111117012009.GA18312@openwall.com>
Date: Thu, 17 Nov 2011 05:20:09 +0400
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2011-4313: BIND 9 Resolver crashes after logging an error in query.c
Content-Type: text/plain; charset=utf-8

On Thu, Nov 17, 2011 at 05:00:45AM +0400, Solar Designer wrote:
> 			newheader->attributes |= RDATASET_ATTR_NEGATIVE;
> 
> If 9.3.5 can't set this flag, then perhaps not checking for it was not a
> problem.  Then the question becomes whether the fixes to
> bin/named/query.c are required even when lib/dns/rbtdb.c did not have
> the problem.  In other words, are these a security fix for a separate
> attack vector (even if a similar one) or merely a hardening measure?
> Or are the changes to lib/dns/rbtdb.c merely a hardening measure?  I am
> not familiar with this code and with the specific attack(s), so I don't
> know the answers.

I just re-read the ISC advisory, and it has this relevant detail:

"The patch has two components. When a client query is handled, the code
which processes the response to the client has to ask the cache for the
records for the name that is being queried. The first component of the
patch prevents the cache from returning the inconsistent data. The
second component prevents named from crashing if it detects that it has
been given an inconsistent answer of this nature."

However, I can't conclusively interpret this as the two components being
redundant or not.

Alexander
