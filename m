X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/1
Message-ID: <CAFfBHfYgoH0JYBopECF=xxq_Kb5LO=9=L6ZW7g_GOaU+7=w+kQ@mail.gmail.com>
Date: Mon, 3 Aug 2026 17:35:21 -0500
From: Aaron Rainbolt <arraybolt3@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Some Changes to GNOME Security Tracking
Content-Type: text/plain; charset=utf-8

On Mon, Aug 3, 2026 at 1:41 PM Emily Shepherd <emily@...coat.dev> wrote:
>
> On Mon Aug 3, 2026 at 5:33 PM BST, David A. Wheeler wrote:
> > Please allow me to point you to the actual announcement & project
> > page, which explains what is *actually* going on instead.
> >
> > The Akrites announcement here:
> > https://www.linuxfoundation.org/press/linux-foundation-and-industry-leaders-launch-akrites-to-defend-critical-open-source-software-against-ai-enabled-cyber-threats
> > instead says, "Bug fixes flow back into each project’s original home, on maintainers’ terms. Where a critical package HAS NO ACTIVE MAINTAINER [emphasis mine], Akrites will serve as maintainer of last resort so fixes to the latest version reach everyone in a timely fashion."
> >
> > Note that the "last resort" ONLY applies when there is NO active
> > maintainer.
>
> Whether a project is actively maintained or not does not change its
> licence and retained copyright rights.
>
> The point referenced by the pkgconfig example clearly points out that a
> licence may allow forks and subordinate works to be created (as
> pkgconfig does) but may well not grant others to use the project name or
> pass of subordinate forks *as the project*. In the pkgconfig example,
> their licence would quite explicitly not allow that.
>
> I fail to see how an organisation unilaterally declaring themselves a
> maintainer of last resort, regardless of what the project licence says,
> is going to work out well. The intentions may be noble, but copyright
> doesn't care about intention, it cares about what the licence says.

IMO this is splitting hairs. Look at the cJSON thread on this mailing
list; we have an unmaintained project with a ton of vulnerabilities
found by AI, and every library user is vulnerable and will be
vulnerable. Isn't this the very situation Akrites is trying to make
slightly less horrible? Maybe cJSON has a license that requires
renaming if one is to fork it (I don't think it does, but let's assume
it does for the sake of argument, and let's also assume that Akrites
decides to provide fixes for it, not that they will but again assume
they will for the sake of argument). Maybe then Akrites has to rename
the project to fork it. No big deal, the Linux Foundation knows how to
do a fork-and-rename, look at Valkey, forked from Redis when Redis
decided to change their license. The important part is that a project
that would otherwise have been permanently vulnerable isn't anymore. I
think that's generally a good thing. If an upstream doesn't like
Akrites using the existing project name, they can always complain and
say "please rename if you're going to fork".

--
Aaron

> In this age of AI, the industry as a whole appears to be suffering a
> severe case of collective amnesia over the fact that the people who make
> a creative work get to decide how that creative work is used or amended.
>
> Emily
