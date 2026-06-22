X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/22/5
Message-ID: <de046635-08a6-4cee-b319-84508fec15cb@beuc.net>
Date: Mon, 22 Jun 2026 11:26:17 +0200
From: Sylvain Beucler <beuc@...c.net>
To: oss-security@...ts.openwall.com
Subject: Re: Proposal: Add separate oss-security-vulnerability-reports mailing list (for AI vulnpocalypse)
Content-Type: text/plain; charset=utf-8

Hello Jeremy,

On 18/06/2026 18:33, Jeremy Stanley wrote:
> On 2026-06-18 15:11:47 +0200 (+0200), Sylvain Beucler wrote:
> [...]
>> I skim through the oss-security posts as part of CVE triaging for 
>> Debian Long Term Support.
>>
>> I'd rather see projects group their notifications by release (which is 
>> when we usually have to act in the distros), as Alexander suggested, 
>> instead of sending them individually / automatically.
>> For example, I don't need 10 notifications for a single project 
>> release that we don't even package at Debian.
> [...]
> 
> I suppose it depends on the project's practices. For some projects in 
> which I'm involved doing upstream vulnerability coordination, we already 
> notify popular distributions with advance copies of the fixes prior to 
> publishing any advisory, and our public advisories initially link to 
> patches that in many cases are not even merged into upstream revision 
> control yet much less included in a release.
> 
> Our release process in those projects is predictable but asynchronous 
> and entirely disconnected from vulnerability management and even the 
> merging of the fixes themselves, so our advisories speculatively imply 
> the predicted version numbers for releases in which the fixes are 
> expected to eventually be included, but those releases may not occur for 
> days or weeks after advisory publication occurs.
> 
> The distributions I'm familiar with don't wait until there's an official 
> release including the fix, but instead apply the fixes to their copies 
> of our source trees (backporting or otherwise adapting them as 
> necessary) in order to be able to distribute patched packages in tandem 
> with the publication of our advisories.

Interesting.

This seems like an embargo-like workflow, usually for high/critical 
CVEs, which I believe won't involve sending notifications to this public 
list (though maybe to the private linux-distros@).

I was following-up about the common, lighter workflow in which a project 
registers some non-critical CVEs, publish a release along with a public 
announcement here, and let all distros get notified through triaging 
said new CVEs. Which contributes to the mass of notifications we may 
want to split to a separate list, or may want to regroup (my point).

If grouping by release still feels impractical, we can also encourage 
grouping by date, e.g. avoid 10 posts in a row for the same project.

Cheers!
Sylvain Beucler
Debian LTS Team
