Received: (qmail 32384 invoked by uid 550); 16 May 2022 17:24:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16076 invoked from network); 16 May 2022 16:54:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1652720044;
	bh=J/gKmitzxXvB0TEXRMwdVERbmQ2l9bjkMzfWqYfbgiU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PDUEGvzfgaOU4FPf2qAlxJQYAOzNWWrHaeBUu9CQmIGWpVhjxJQEzaeRBCjIVP/eL
	 5tWubjKOX3d2Dx6X8yaIdu0pPfC5mH81n07UK+gsB579ILsaPfa3ojtUidbzziXA15
	 GxU7zGUAgSTvhQFvFQAkooivPMUsm4I6JNS8gpKA=
Date: Mon, 16 May 2022 18:54:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: oss-security@lists.openwall.com
Cc: Solar Designer <solar@openwall.com>
Message-ID: <YoKBqGYYLDj9hw6f@kroah.com>
References: <20220515162740.GA20526@openwall.com>
 <YoJNtNJXUwLySmmO@zx2c4.com>
 <YoJVBebSkRsaOv3b@quatroqueijos>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YoJVBebSkRsaOv3b@quatroqueijos>
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

On Mon, May 16, 2022 at 10:43:33AM -0300, Thadeu Lima de Souza Cascardo wrote:
> On Mon, May 16, 2022 at 03:12:20PM +0200, Jason A. Donenfeld wrote:
> > Hi Alexander,
> > 
> > I think a lot of this depends on what you feel the primary value in
> > distros@ is.
> >
> > I always thought its primary purpose was to centralize embargoed
> > vulnerability reports, using its presence as *the* de facto forum for
> > that, in order to receive nearly all embargoed bugs. Then, those bugs
> > become subject to the distros@ 14-day disclosure policies. Seen this
> > way, distros@ is a mechanism for ensuring that bugs eventually *do*
> > become disclosed, rather than languishing in embarrassed vendor
> > purgatory forever.
> >
> > Maybe I'm far off, though, so it'd be interesting to learn if you have a
> > different idea of its value.
> >
> 
> [...]
> 
> > And anyway, practically speaking, security@kernel.org's disclosure
> > deadline is usually something like 7 days, which is pretty short, so for
> > people who misread the documentation, at most they'll only be miffed
> > about a few days, rather than a few months.
> > 
> 
> Though I want to add a little more to this discussion, I think this needs
> clarification and is really one of the main pain points here, in my opinion.
> 
> "Although our preference is to release fixes for publicly undisclosed bugs
> as soon as they become available, this may be postponed at the request of
> the reporter or an affected party for up to 7 calendar days from the start
> of the release process"
> 
> This is about the fixes, not the security report. As I read it, once a fix is
> developed/reviewed/accepted, kernel maintainers/developers may hold the *fix*
> release up to 7 days.

Correct.

> Right in the next paragraph, though:
> 
> "While embargoed information may be shared with trusted individuals in
> order to develop a fix, such information will not be published alongside
> the fix or on any other disclosure channel without the permission of the
> reporter.  This includes but is not limited to the original bug report
> and followup discussions (if any), exploits, CVE information or the
> identity of the reporter."
> 
> This means that it's now up to the reporter to disclose any information if they
> want to. They may never disclose it. They may wait for someone else to disclose
> it. Or decide to disclose it immediately.

That is correct.

> Now, as you said earlier in your message (which is why I kept that excerpt),
> linux-distros ends up having such a role where reports sent to it should be
> made public in no more than 14 days. But there is no such mechanism on
> security@kernel.org rules as documented at
> Documentation/admin-guide/security-bugs.rst, as I understand it.

That is correct, the kernel security "team" puts no rules or
requirements on anyone who submits stuff to us.  If they wish to
disclose things or not after the fix is merged into Linus's tree, that
is up to them.

thanks,

greg k-h
