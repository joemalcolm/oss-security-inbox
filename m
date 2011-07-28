X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/07/28/4
Message-ID: <mpro.lp1gob3w5e11102h5.taviso@cmpxchg8b.com>
Date: Thu, 28 Jul 2011 12:19:23 +0200
From: Tavis Ormandy <taviso@...xchg8b.com>
To: oss-security@...ts.openwall.com
Subject: Re: Re: two systemtap flaws: CVE-2011-2502 and CVE-2011-2503
Content-Type: text/plain; charset=utf-8

Huzaifa Sidhpurwala <huzaifas@...hat.com>
wrote:

> On 07/28/2011 03:34 PM, Tavis Ormandy wrote:
> 
> > Interesting, I also looked at systemtap and found a local root
> > (CVE-2010-4170), but was under the impression we had agreed it should be
> > restricted to a privileged group?
> > 
> > https://wiki.egi.eu/wiki/EGI_CSIRT:Alerts/systemtap-2010-11-18
> > 
> > I stopped looking because I concluded that had eliminated any security
> > risk, is that no longer the case?
> > 
> I believe this does reduce the risk, but does not totally eliminate it.
> 
> 

Oh I see, the group restriction is still in place, but you still support
adding unprivileged users to the group?

Understood, I think that sounds reasonable.

Tavis.


-- 
-------------------------------------
taviso@...xchg8b.com | pgp encrypted mail preferred
-------------------------------------------------------

