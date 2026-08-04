X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/4
Message-ID: <2026080444-virtuous-bulb-e23e@gregkh>
Date: Tue, 4 Aug 2026 07:15:57 +0200
From: Greg KH <greg@...ah.com>
To: oss-security@...ts.openwall.com
Cc: "David A. Wheeler" <dwheeler@...eeler.com>
Subject: Re: Some Changes to GNOME Security Tracking
Content-Type: text/plain; charset=utf-8

On Mon, Aug 03, 2026 at 09:01:54PM +0200, Sebastian Pipping wrote:
> On 8/3/26 18:33, David A. Wheeler wrote:
> > On Jul 31, 2026, at 12:42 PM, Eli Schwartz <eschwartz@...too.org> wrote:
> > > > I heard that the Linux Foundation has declared the danger of "AI
> > > > vulnerabilities" is so great that they are founding a group called
> > > > Akrites, devoted to coordinating security incident response. ... If projects don't fix their
> > > > software "fast enough", Akrites will declare themselves the "maintainer
> > > > of last resort" to publish a fixed version.
> > 
> > Please allow me to point you to the actual announcement & project page,
> > which explains what is *actually* going on instead.
> > 
> > The Akrites announcement here:
> > https://www.linuxfoundation.org/press/linux-foundation-and-industry-leaders-launch-akrites-to-defend-critical-open-source-software-against-ai-enabled-cyber-threats
> > instead says, "Bug fixes flow back into each project’s original home, on maintainers’ terms. Where a critical package HAS NO ACTIVE MAINTAINER [emphasis mine], Akrites will serve as maintainer of last resort so fixes to the latest version reach everyone in a timely fashion."
> > 
> > Note that the "last resort" ONLY applies when there is NO active maintainer.
> 
> I would like to note that it says "no active maintainer" rather than
> "no maintainer" so this now depends on the definition of "active"
> and e.g. how many weeks of no fix or say no overall Git activity it
> would take for a maintainer to be considered inactive by Akrites.
> Would be great if that could be clarified, officially.

Perhaps the OpenSSF document here:
	https://alpha-omega.dev/blog/weekend-at-bernies-which-of-your-dependencies-are-wearing-sunglasses/
would help explain the methodology they are going to be using for this,
and what others should use as well.

thanks,

greg k-h
