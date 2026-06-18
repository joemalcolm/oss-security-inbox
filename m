X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/18/5
Message-ID: <ajQd4UwEhCaBYu9y@yuggoth.org>
Date: Thu, 18 Jun 2026 16:33:37 +0000
From: Jeremy Stanley <fungi@...goth.org>
To: oss-security@...ts.openwall.com
Subject: Re: Proposal: Add separate oss-security-vulnerability-reports mailing list (for AI vulnpocalypse)
Content-Type: text/plain; charset=utf-8

On 2026-06-18 15:11:47 +0200 (+0200), Sylvain Beucler wrote:
[...]
>I skim through the oss-security posts as part of CVE triaging for 
>Debian Long Term Support.
>
>I'd rather see projects group their notifications by release 
>(which is when we usually have to act in the distros), as 
>Alexander suggested, instead of sending them individually / 
>automatically.
>For example, I don't need 10 notifications for a single project 
>release that we don't even package at Debian.
[...]

I suppose it depends on the project's practices. For some projects 
in which I'm involved doing upstream vulnerability coordination, we 
already notify popular distributions with advance copies of the 
fixes prior to publishing any advisory, and our public advisories 
initially link to patches that in many cases are not even merged 
into upstream revision control yet much less included in a release.

Our release process in those projects is predictable but 
asynchronous and entirely disconnected from vulnerability management 
and even the merging of the fixes themselves, so our advisories 
speculatively imply the predicted version numbers for releases in 
which the fixes are expected to eventually be included, but those 
releases may not occur for days or weeks after advisory publication 
occurs.

The distributions I'm familiar with don't wait until there's an 
official release including the fix, but instead apply the fixes to 
their copies of our source trees (backporting or otherwise adapting 
them as necessary) in order to be able to distribute patched 
packages in tandem with the publication of our advisories.
-- 
Jeremy Stanley

Download attachment "signature.asc" of type "application/pgp-signature" (964 bytes)
