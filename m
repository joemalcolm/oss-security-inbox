X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/31/14
Message-ID: <amz1XwQWx4SUsArS@yuggoth.org>
Date: Fri, 31 Jul 2026 19:20:07 +0000
From: Jeremy Stanley <fungi@...goth.org>
To: oss-security@...ts.openwall.com
Subject: Re: Some Changes to GNOME Security Tracking
Content-Type: text/plain; charset=utf-8

On 2026-07-31 10:43:00 -0700 (-0700), Collin Funk wrote:
[...]
> I'm sure the projects banning AI submissions don't like it either.
> 
> It takes time to filter out the "bad" reports if you actually care 
> about checking each of them. This is especially true when AI 
> submissions are unnecessarily verbose, which is true for a large 
> portion of them. They also tend to exaggerate the security 
> implications of bugs, and are annoying in various other ways.

Wholehearted agreement, it's become a lot more nuanced recently. The 
projects/communities I'm involved with aren't banning "AI" 
written/assisted reports, but even though the slop factor is falling 
there's still a clear distinction.

Once upon a time, in the long-long ago, we received bug reports 
(I'll leave the words "security" or "vulnerability" out for the 
moment though this is also absolutely about that too) from users of 
our software. People were trying to run the things we've distributed 
as a community, and encountered defects, and they let us know and 
asked for help getting them fixed.

Now the vast majority of bug reports we receive are from 
disconnected "researchers" looking to make a name for themselves, 
pad their resumés/CVs, or promote their LLM-oriented code auditing 
services. These bugs weren't preventing a user from getting 
something done, and they weren't even encountered accidentally in 
the normal course of using the software. These independent parties 
reporting bugs to us now, not being users of the software 
themselves, have a very limited understanding of the ways it was 
intended to be used and what sorts of behaviors do or don't e.g. 
violate trust boundaries or result in unexpected behaviors.

It's reasonable to argue that if an LLM can't determine whether a 
behavior is a trust violation then your project's documentation is 
deficient in some way, relying on too much tribal knowledge or 
"common sense" interpretation. But then, who among us can say with 
confidence that we have perfect documentation in our projects? The 
unfortunate upshot is that, because of this missing context, many 
defects which do in fact represent legitimate failures of the 
software in some way are being conservatively reported in private to 
a limited number of vulnerability coordination contacts. The 
hallucinations are fading, the bugs are themselves real, but in most 
cases they don't represent practical security vulnerabilities an 
attacker is going to exploit.

I share some of the other frustration expressed about efforts like 
Akrites (my opinion does not represent that of my employer), though 
I'll argue that it's not directly about financial investment, rather 
that the people already deeply embedded in our communities with the 
necessary skillset to evaluate such reports in private are still all 
too often already busy with other priorities and so we lack the 
bandwidth to handle this deluge. From my perspective we don't need 
an outside consultant telling us what to fix and how, we need more 
interested contributors in our communities picking up boring 
day-to-day (usually not security-related at all) maintenance tasks 
so that our established community members with all the necessary 
context can actually spend time focusing on vulnerability evaluation 
and coordination.
-- 
Jeremy Stanley

Download attachment "signature.asc" of type "application/pgp-signature" (964 bytes)
