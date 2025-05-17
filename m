Received: (qmail 30289 invoked by uid 550); 17 May 2025 13:22:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15851 invoked from network); 17 May 2025 13:19:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=netbsd.org;
	s=20240131; t=1747487965;
	bh=DB3ohylWzuevlMY7FWdB3JbWoUR7Nzp1V+jlYZfgyss=;
	h=To:CC:In-reply-to:Subject:Date:From;
	b=V5i6IIM2IaY6z/rznz553+DEKGTt0Gfe6YsOiSMhRVN+qgikGffcXlG6Q+qV4u8jZ
	 1CaW1Rb7RrRx4rVrqin/fTffatdjzDsBInW06YDih91I3ICIrfHITB+N0+Xrkm3Wpq
	 6RnMjn5S58zPJzBck6tznYLT38XRVbUcJzVeb/Os=
To: oss-security@lists.openwall.com
CC: oss-security@lists.openwall.com, Eli Schwartz <eschwartz@gentoo.org>
In-reply-to: <8ea7f8f5-7645-4d5d-af38-d0b434636e40@gmail.com> (jcb62281@gmail.com)
Date: Sat, 17 May 2025 13:19:21 +0000
From: Taylor R Campbell <riastradh@NetBSD.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-Id: <20250517131925.B156484E93@mail.netbsd.org>
Subject: Re: [oss-security] describing affected systems (was: screen: Multiple
	Security Issues in Screen (mostly affecting release 5.0.0 and setuid-root
	installations))

> Date: Fri, 16 May 2025 21:52:14 -0500
> From: Jacob Bachmeyer <jcb62281@gmail.com>
> 
> On 5/16/25 13:07, Eli Schwartz wrote:
> > On 5/16/25 12:31 PM, Taylor R Campbell wrote:
> > [...]
> >> (a) the same pkgsrc packages are available on, e.g., NetBSD 9.x (which
> >>      is not EOL); and
> >>
> >> (b) pkgsrc is used on platforms other than NetBSD, including macOS,
> >>      SmartOS, and various Linux distributions (e.g., for unprivileged
> >>      use on HPC clusters where it is more flexible and up-to-date than
> >>      the Linux distribution's package manager).
> >>
> >> That is why it would be more accurate for the report to say
> >> `pkgsrc-2025Q1', not `NetBSD 10.1'.
> >
> > I strongly dispute this. It should instead list both, as both are
> > affected.
> 
> Would "systems using pkgsrc-2025Q1, notably including NetBSD 9.x and 
> NetBSD 10.1" have been a fair way of describing that set?

Sure, that's fine, or just `...notably including NetBSD' instead of
specifying versions since NetBSD and pkgsrc versions advance
independently.

If I gave anyone the impression that I'm trying to conceal its impact
on NetBSD users, as Eli has insinuated with fabricated quotes, I
apologize (for that and for all the off-topic noise this minor point
has generated) -- we did not escape this, and we are working to
address it for all pkgsrc users on NetBSD or otherwise.

This will be my last message on the subject in this thread; I'm sure
everyone is tired of hearing about it now.
