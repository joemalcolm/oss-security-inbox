X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/20/10
Message-ID: <4F68B82C.9020408@redhat.com>
Date: Tue, 20 Mar 2012 11:02:36 -0600
From: Kurt Seifried <kseifried@...hat.com>
To: oss-security@...ts.openwall.com
CC: Vincent Danen <vdanen@...hat.com>
Subject: Re: CVE request: maradns deleted domain record cache persistance flaw
Content-Type: text/plain; charset=utf-8

On 03/19/2012 10:18 PM, Vincent Danen wrote:
> I haven't seen a request for this yet:
> 
> It was reported that MaraDNS suffers from a flaw where it is susceptible to
> spoofing attacks.  Due to an error in the cache update policy, which
> does not
> properly handle revoked domain names, a remote attacker could keep a domain
> name resolvable after it has been deleted from the registration.
> 
> This flaw is fixed in versions 1.3.0.7.15 and 1.4.12, and is reported to
> affect
> all prior versions.
> 
> References:
> 
> http://www.maradns.org/changelog.html
> https://secunia.com/advisories/48492/
> https://bugzilla.redhat.com/show_bug.cgi?id=804770
> 

Please use CVE-2012-1570 for this issue.

-- 
Kurt Seifried Red Hat Security Response Team (SRT)
