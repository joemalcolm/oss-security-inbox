Received: (qmail 18200 invoked by uid 550); 16 May 2025 17:14:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5292 invoked from network); 16 May 2025 16:32:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=netbsd.org;
	s=20240131; t=1747413117;
	bh=MCiltId1skLyUvmq/2j2lOV947NcppFocyJRJPG02JU=;
	h=To:In-reply-to:Subject:Date:From;
	b=sAQ+FR6GXNuKNB6hrDalc+vdpz4PVCPJmO4EGQ3ICgyYTnVxH8mbr28KCwyg6rgKR
	 HET1Q9c2QRDBPKVVm+ywhbuJ2k7J844UzJCTYQLI5KqUU6B5TZBn/AlxcGkec2Y2gC
	 aMcmSqfjrUlXu7MbSGAioXJCHfPaJB0P7YIuHRUo=
To: oss-security@lists.openwall.com
In-reply-to: <c72f7000-a909-478d-a487-bf4d5b244223@gentoo.org> (eschwartz@gentoo.org)
Date: Fri, 16 May 2025 16:31:56 +0000
From: Taylor R Campbell <riastradh@NetBSD.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-Id: <20250516163157.BA80D8564D@mail.netbsd.org>
Subject: Re: [oss-security] screen: Multiple Security Issues in Screen (mostly
	affecting release 5.0.0 and setuid-root installations)

> Date: Fri, 16 May 2025 11:34:29 -0400
> From: Eli Schwartz <eschwartz@gentoo.org>
> 
> On 5/16/25 11:01 AM, Jan Schaumann wrote:
> > I think it's useful to clarify here that NetBSD does
> > _not_ ship with GNU screen(1) at all.  NetBSD's
> > third-party package manager pkgsrc[1] includes
> > screen(1), allowing users to install additional
> > software on top of the base OS.
> > 
> > That package as included in _pkgsrc_ was installed
> > setuid[2], but a NetBSD base installation does not
> > include that package.  (NetBSD happens to include
> > tmux(1) _in the base OS_, but not screen(1).)
> > 
> > This distinction between a base OS and add-on software
> > that is optionally available for users to choose tends
> > to cause confusion for some people, so I figured
> > it's worth noting.
> 
> This is a nonsensical claim, but if I accept it as stated then I will
> counter-assert that zero (0) Linux distros are vulnerable as they don't
> preinstall screen in the base OS.
> 
> The definition of "the NetBSD base installation" is "nobody uses it".
> People use computing devices in order to run software on it. You cannot
> consider your OS in a bubble and go "well ackshually it's perfectly
> secure unless you use the builtin software to install official software,
> but we don't support that as a secure option".

It is not nonsensical, and it is not the inconsequential pedantry you
are suggesting.  Please consider avoiding sarcastic disparagement when
publicly discussing the factual matters of security reports.

The report says that `NetBSD 10.1' is affected.  This is not quite
right, _and it matters_ even if you set aside the fact that NetBSD
10.1 itself (which does ship tmux!) does not ship screen, because:

(a) the same pkgsrc packages are available on, e.g., NetBSD 9.x (which
    is not EOL); and

(b) pkgsrc is used on platforms other than NetBSD, including macOS,
    SmartOS, and various Linux distributions (e.g., for unprivileged
    use on HPC clusters where it is more flexible and up-to-date than
    the Linux distribution's package manager).

That is why it would be more accurate for the report to say
`pkgsrc-2025Q1', not `NetBSD 10.1'.

All that said, I think any further discussion of this point -- and any
other distributor-specific matters -- can reasonably be taken off-list
to keep the thread focussed on the details of the screen
vulnerabilities themselves.
