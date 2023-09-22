Received: (qmail 3567 invoked by uid 550); 22 Sep 2023 21:41:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1884 invoked from network); 22 Sep 2023 21:40:20 -0000
Date: Fri, 22 Sep 2023 23:40:06 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20230922214006.GA20989@openwall.com>
References: <6EBBC128-36D2-4262-88F4-6889E9E6DE1E@mnx.io> <20230915210906.GA22532@openwall.com> <36F38D40-5F90-4E1B-B7A2-121431A3E6FE@mnx.io> <20230922172755.GA18909@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230922172755.GA18909@openwall.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] illumos (or at least danmcd) membership in the distros list

On Fri, Sep 22, 2023 at 07:27:55PM +0200, Solar Designer wrote:
> On Mon, Sep 18, 2023 at 05:36:13PM +0000, Dan McDonald wrote:
> > On Sep 15, 2023, at 5:09 PM, Solar Designer <solar@openwall.com> wrote:
> > > Can you show illumos fixing non-illumos-only security issues within days
> > > after public disclosure, so that a few days of advance notice would have
> > > made those fixes even quicker?
> > 
> > It's a per-illumos-distro property.  OmniOS has Stable & LTS releases.   Here's the current-stable
> > release notes, dynamically updated every time they update:
> > 
> > 	https://github.com/omniosorg/omnios-build/blob/r151046/doc/ReleaseNotes.md
> > 
> > So I'm not sure if a few days of advance notice would make those quicker,
> > but I do know that other distros have biweekly scheduled releases, and advance
> > notice there would keep those wheels spinning faster.  Esp. since "patch tuesday"
> > is a mere one-day before the release branch is forked off on release weeks.
> 
> This looks pretty good for OmniOS, e.g. for OpenSSL CVE-2023-3817 it
> appears to be 4 days from OpenSSL advisory on "31st July 2023" to OmniOS
> "r151046n (2023-08-03)", and even something like 1 day for OpenSSH
> update to "9.3p2, fixing CVE-2023-38408" and for "AMD CPU microcode
> updated to 20230719, mitigating CVE-2023-20593 on some Zen2 processors"
> in "r151046m (2023-07-25)" (it was brought to oss-security on July 24).
> 
> That page above goes back to May 2023.  Were there separate ones for
> older releases?  For "a publicly verifiable track record, dating back at
> least 1 year and continuing to present day".

I see this one goes from December 2022 to present:

https://github.com/omniosorg/omnios-build/blob/r151044/doc/ReleaseNotes.md

and this one from May 2022 to April 2023:

https://github.com/omniosorg/omnios-build/blob/r151042/doc/ReleaseNotes.md

So that's already more than a year, and I don't need to look further.

Also, I note this reply by Bob Friesenhahn:

https://www.openwall.com/lists/oss-security/2023/09/14/1

On Thu, Sep 14, 2023 at 08:36:17AM -0500, Bob Friesenhahn wrote:
> I am not a member of the 'distros' list, but can vouch for Dan
> McDonald's dedication and capabilities, as observed over several
> years.  Dan did not mention it, but he previously became the primary
> maintainer of an Illumos distribution known as "OmniOS", which I use.
> As a maintainer, Dan did pay close attention to security issues.

So I think we can accept OmniOS as new distros list member, if that's
desired and Dan would represent OmniOS on the list.  This subscription
on its own would not allow sharing of info with other illumos distros.

In special cases, Dan would be able to ask the issue reporters their
explicit permission to share with other illumos distros.

If those distros do typically need the info, they may request direct
list membership.

How does this sound to you, Dan?

Alexander
