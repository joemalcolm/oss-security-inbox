X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/33
Message-ID: <CANvhHyAnbWgyhCoPGqZT2Se4-D_xYN7W5qUMM25BpgFeGBNWxQ@mail.gmail.com>
Date: Tue, 4 Aug 2026 16:28:08 -0400
From: Francis Perron <francis@...uxfoundation.org>
To: oss-security@...ts.openwall.com
Cc: Albert Veli <albert.veli@...il.com>
Subject: Re: Some Changes to GNOME Security Tracking
Content-Type: text/plain; charset=utf-8

On Tue, Aug 4, 2026 at 3:35 PM Alan Coopersmith <alan.coopersmith@...cle.com>
wrote:

> On 8/4/2026 2:10 AM, Albert Veli wrote:
> > Hi!
> >
> > On 8/3/26 18:33, David A. Wheeler wrote:
> >> Please allow me to point you to the actual announcement & project page,
> >> which explains what is *actually* going on instead.
> >>
> >> The Akrites announcement here:
> >> https://www.linuxfoundation.org/press/linux-foundation-and-industry-
> >> leaders-launch-akrites-to-defend-critical-open-source-software-
> >> against-ai-enabled-cyber-threats
> > I read through this as well as the information at https://akrites.org/.
> > It sounds like Akrites does something similar to what I understand is
> > already being done at the distros list. I hope you (the organisations on
> > the distros list) can find a way to cooperate with Akrites. Otherwise,
> > there is a risk of fragmenting the community and creating parallel
> > vulnerability coordination processes.
>
> No, these are working at different stages of the process.
>
> The akrites.org site lists they are involved at:
>    1) Intake
>    2) Deduplicate & Validate
>    3) Remediate
>    4) Synchronized Disclosure
>

Akrites here.

These steps are correct, with emphasis on that last point w.r.t.
collaborating and using existing established processes for disclosures.
Core to our mission is to help Upstream by making these disclosures easy,
without re-inventing anything.



> The distros list only is involved with step 4 there - after projects
> have triaged, verified, and fixed a security vulnerability, they contact
> the distros list to let the distros have early access to the fixes so
> that distros can prepare and test their packages with the fixes.
>

That is correct. We are going to try our best and involve project
maintainers early in the development of the fixes as well and leverage the
pre-existing, documented security reporting processes for bigger projects.

We will not take generic findings and send them through Upstream directly;
our pipeline will validate, deduplicate, enrich and get a patch ready
before any disclosure. There will be exceptions when integrating with
different projects that have different structures, but this will be our
default approach. As we are shaping up, integrating with distros and the
existing processes is already something we're looking into now.


We're around, and happy to engage early if we have not done so already!

-- 
Francis Perron
OSS SIRT Director - Project Akrites.org

