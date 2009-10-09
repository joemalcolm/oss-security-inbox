X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/10/09/3
Message-ID: <1906670250.1976511255120503093.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Fri, 9 Oct 2009 16:35:03 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley@...us.mitre.org
Subject: Re: CVE request: Unbound
Content-Type: text/plain; charset=utf-8


----- "Florian Weimer" <fw@...eb.enyo.de> wrote:

> Unbound before 1.3.4 does not check the signatures on NSEC3 records
> under unspecified conditions, enabling attackers who can perform DNS
> spoofing to downgrade existing secure delegations to insecure status,
> which then can be targeted in further spoofing attacks.
> 
> <http://unbound.net/pipermail/unbound-users/2009-October/000852.html>
> 
> (Older versions, back to 1.0.x, are also affected.)

Steve Christey asked me to assign CVE ids for oss-security requests for a bit,
so don't think it odd when I keep replying to these.

Please use CVE-2009-3602 for this.

Thanks

-- 
    JB
