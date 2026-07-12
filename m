X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/12/2
Message-ID: <20260712165336.GA13021@openwall.com>
Date: Sun, 12 Jul 2026 18:53:36 +0200
From: Solar Designer <solar@...nwall.com>
To: gregdurys.security@...ton.me
Cc: oss-security@...ts.openwall.com
Subject: Re: Skillable SCORM launch: userId parameter not validated against session token allows allocation bypass and cross-user DoS
Content-Type: text/plain; charset=utf-8

Hi,

I'm sorry I let this message through (as a moderator).  It shouldn't be
in here since it's about a hosted service and lacks open source focus.
We generally don't let this sort of disclosures through to oss-security,
and upon a closer look I see no reason to have made an exception this
time.  Well, let this serve as an example of what kind of off-topic
messages are occasionally being sent in here.  I'd normally redirect the
sender to post to the full-disclosure list instead.

On Sun, Jul 12, 2026 at 10:13:27AM +0000, gregdurys.security@...ton.me wrote:
> Skillable (formerly Learn on Demand Systems) is a hosted lab-
> provisioning service

> CVE-2026-56877 was assigned by MITRE.

> References
> ----------
> [1] Advisory writeup:
> https://payloadforge.io/beyond-crto-skillable/

It's interesting this got assigned a CVE at all even though it's not in
released software.  The writeup above explains:

> A 2022 CVE Program article explained that cloud service CVEs provide the
> clearest value where “the vulnerability requires customer or peer
> action to resolve,” contrasting that with cases where the provider
> silently fixes and customers have nothing to do. This is the opposite:
> the vendor won’t fix, so the customer must migrate.

and links to:

https://medium.com/@cve_program/dispelling-the-myth-cve-id-assignment-and-record-publication-for-vulnerabilities-affecting-cloud-6d1937a34f1c

which says:

> CVE Program Blog
> Sep 13, 2022
> 
> There exists a myth that the CVE® Program does not assign CVE IDs and
> publish CVE Records for vulnerabilities affecting cloud services. This
> myth has propagated on social media, repeated over and over again by
> those who really believe it. In fact, the CVE Program has and does
> assign CVE IDs and publish CVE Records for vulnerabilities affecting
> cloud services.
> 
> The CVE Rules are publicly available. Rule 7.4.4 states:
> 
>     7.4.4 CNAs MAY assign a CVE ID to a vulnerability if:
> 
>     1. The product or service is owned by the CVE Numbering Authority (CNA)
> 
>     2. The product or service is not customer controlled, and
> 
>     3. The vulnerability requires customer or peer action to resolve
> 
> The CVE Board is responsible for the strategic direction, governance,
> operational structure, policies, and rules of the CVE Program. Both the
> CVE Board’s and the CVE Program’s goal is to ensure that users
> can take action to protect themselves against vulnerabilities. When a
> vulnerability does not require customer action, issuing a CVE generates
> a high volume of unactionable noise for users instead of a high-fidelity
> signal that they can act upon. At the request of participating cloud
> service providers (CSPs), the Board changed the CVE Program rules over
> two years ago, to enable CVE ID assignment and record publication for
> vulnerabilities affecting cloud services.

Alexander
