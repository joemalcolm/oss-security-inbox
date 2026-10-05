X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/05/15
Message-ID: <asOxewM8cOGtoEYn@yuggoth.org>
Date: Mon, 5 Oct 2026 14:17:39 +0000
From: Jeremy Stanley <fungi@...goth.org>
To: oss-security@...ts.openwall.com
Subject: Re: cloud computing provider disclosures
Content-Type: text/plain; charset=utf-8

On 2026-10-04 21:45:06 -0400 (-0400), Aaron Rainbolt wrote:
[...]
> If cloud providers can't update with near-zero notice, they 
> arguably shouldn't be providing cloud services.
[...]

While this is true to some extent, getting early access to fixes 
helps reduce the window between public disclosure and risk 
mitigation by allowing their operators to schedule this work to 
coincide with a coordinated advisory publication. Also I've lost 
count of the number of times a public cloud operator has spotted a 
logic or testing gap in the pre-advisory copies of fixes which were 
missed by the developers in review (reviewing and testing fixes in 
secret under embargo is notoriously challenging for open source 
developer communities used to working completely in the open under 
normal circumstances).

> The "early access to security vuln details" group should be as 
> tiny as possible to reduce the chances of anyone malicious being 
> in the early access list.
[...]

Yes, for the open source cloud platform I'm involved in, I help 
coordinate and vet a list of known downstream operator contacts for 
(brief) advance notice of upcoming coordinated advisory publications 
under embargo. While we do also notify the private linux-distros 
list (because a majority of them package at least some of our 
software), I don't think we'd send advance notice to a list of cloud 
operators where we don't even know if they're running our software 
at all.
-- 
Jeremy Stanley

Download attachment "signature.asc" of type "application/pgp-signature" (964 bytes)
