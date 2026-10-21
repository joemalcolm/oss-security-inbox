X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/31
Message-ID: <20261021221320.yvmxkcet7zjtvoq6@jwilk.net>
Date: Thu, 22 Oct 2026 00:13:20 +0200
From: Jakub Wilk <jwilk@...lk.net>
To: oss-security@...ts.openwall.com
Subject: Re: eMudhra Intermediates Compromise
Content-Type: text/plain; charset=utf-8

* Solar Designer <solar@...nwall.com>, 2026-10-21 07:54:
>On Tue, Oct 20, 2026 at 03:44:34PM -0400, Jeffrey Walton wrote:
>>It is probably worth noting the Comodo AAA Services Root removal is 
>>not related to the eMudhra incident.
>Are you sure? Doesn't it cross-sign the compromised intermediates?

It does cross-sign them.

>>The issue with Comodo AAA Services Root was the removal of the TLS 
>>trust bit by browsers because the root is too old. The current 
>>CA/Browser (CA/B) Baseline Requirements (BR) policies say a root has a
>>maximum lifespan of 15 years from creation date. Comodo AAA Services 
>>Root was issued in 2004, so it violates current policy. Also see 
>><https://cabforum.org/working-groups/server/baseline-requirements/>.

FWIW, I couldn't find such a requirement in CA/B BR.

>This may be right, but perhaps the urgency to remove it now is related 
>to the eMudhra incident?
>
>Incidentally, it is not yet removed in NSS 3.131.1, which does remove 
>the emSign certs.  An omission to fix in a further update urgently?

AFAICT the Comodo AAA cert hasn't been removed from NSS, but it had the 
web trust bit turned off last year:
https://bugzilla.mozilla.org/show_bug.cgi?id=1957685

That said, my Firefox 153 ESR (which is supposed to include that change) 
still trusted the Comodo AAA cert, so I'm confused.

-- 
Jakub Wilk
