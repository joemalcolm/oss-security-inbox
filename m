X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/22/6
Message-ID: <ajl6w3hSJDdZEvQ5@yuggoth.org>
Date: Mon, 22 Jun 2026 18:11:15 +0000
From: Jeremy Stanley <fungi@...goth.org>
To: oss-security@...ts.openwall.com
Subject: Re: Proposal: Add separate oss-security-vulnerability-reports mailing list (for AI vulnpocalypse)
Content-Type: text/plain; charset=utf-8

On 2026-06-22 11:26:17 +0200 (+0200), Sylvain Beucler wrote:
>On 18/06/2026 18:33, Jeremy Stanley wrote:
[...]
>>I suppose it depends on the project's practices. For some 
>>projects in which I'm involved doing upstream vulnerability 
>>coordination, we already notify popular distributions with 
>>advance copies of the fixes prior to publishing any advisory, 
>>and our public advisories initially link to patches that in many 
>>cases are not even merged into upstream revision control yet 
>>much less included in a release.
>>
>>Our release process in those projects is predictable but 
>>asynchronous and entirely disconnected from vulnerability 
>>management and even the merging of the fixes themselves, so our 
>>advisories speculatively imply the predicted version numbers for 
>>releases in which the fixes are expected to eventually be 
>>included, but those releases may not occur for days or weeks 
>>after advisory publication occurs.
>>
>>The distributions I'm familiar with don't wait until there's an 
>>official release including the fix, but instead apply the fixes 
>>to their copies of our source trees (backporting or otherwise 
>>adapting them as necessary) in order to be able to distribute 
>>patched packages in tandem with the publication of our 
>>advisories.
>
>Interesting.
>
>This seems like an embargo-like workflow, usually for 
>high/critical CVEs, which I believe won't involve sending 
>notifications to this public list (though maybe to the private 
>linux-distros@).

It's both... Yes advance notification in the case of embargoed 
vulnerabilities is going to the linux-distros mailing list as well 
as about 100 distinct organizations that have asked to be included 
directly (either because they redistribute the software or run 
public-facing commercial production instances of it). However, a 
final round of testing and code review for the fixes occurs when the 
corresponding bug reports get switched to public and the 
pre-reviewed/manually pre-tested patches get pushed into the public 
code review system and approved to merge.

>I was following-up about the common, lighter workflow in which a 
>project registers some non-critical CVEs, publish a release along 
>with a public announcement here, and let all distros get notified 
>through triaging said new CVEs. Which contributes to the mass of 
>notifications we may want to split to a separate list, or may want 
>to regroup (my point).

In our case, the presumed lower-risk (and also broken embargo or 
otherwise premature disclosure) workflow looks essentially like the 
embargoed one does, only without advance notification or private 
manual testing/reviewing. Changes that fix the public bugs are 
pushed into code review where they're automatically tested and 
reviewed, and once it looks like those changes are at the state 
where there's consensus and they're likely to merge we publish an 
advisory linking to the patches and indicating that they'll be 
included in the next release.

But in both cases, the actual release process is separate, with 
asynchronous requests per branch, reviewed and approved by an 
entirely different group of volunteers in the community. Depending 
on circumstances, it can sometimes be weeks or months before those 
commits end up in a release (especially for some of the older stable 
branches of the software, where testing is a little more bitrotten 
and interested reviewers are scarce). We really don't want to wait 
for releases to occur in order to notify redistributors and users 
that they should apply patches.

Keep in mind that just because a bug was originally filed in public, 
or perhaps became public accidentally/inadvertently, that doesn't 
mean it's not "severe" (and to quote Greg Kroah-Hartman from a post 
on this list back in October, "we can not know if a specific bug we
fix really is a 'major' issue for you or not"). But also, we're 
selective about what qualifies for an advisory at all in order to 
not unnecessarily fatigue stakeholders, so for example risks we 
consider impractical to exploit do not lead to a published security 
advisory. In fact, we maintain an entire classification system to 
explain why a security-related bug may not lead to an advisory.

>If grouping by release still feels impractical, we can also 
>encourage grouping by date, e.g. avoid 10 posts in a row for the 
>same project.

It may also depend on context. In the projects I'm talking about, 
we're publishing a few advisories per week right now, usually on 
different days, not posting 10 separate advisories on one day. If we 
have multiple security fixes we're going to make public on the same 
day for the same Git repository, or similar fixes across multiple 
repositories, we do already combine them into a single publication 
that links to the relevant patches for all of them, or even in some 
cases go against traditional reviewer-friendly practice by using an 
omnibus patch that fixes multiple vulnerabilities in order to ease 
downstream burden.

The challenge with your proposal, for me, is that we don't tie our 
advisories and patches strongly to release planning. This is both in 
service of getting fixes into the hands of users more quickly, and 
also in order to put less pressure on the part of our community that 
handles our release process. And we're far from being the only 
free/libre open source community that works this way. Our workflows 
stem from a desire to be open and transparent whenever possible, 
while not encouraging one group of volunteers (e.g. vulnerability 
coordinators) to make additional work for nor block on the 
availability of another group of volunteers.
-- 
Jeremy Stanley

Download attachment "signature.asc" of type "application/pgp-signature" (964 bytes)
