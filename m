Received: (qmail 24328 invoked by uid 550); 11 May 2026 14:59:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3691 invoked from network); 11 May 2026 07:41:08 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1778485257; cv=none;
        d=google.com; s=arc-20240605;
        b=FS/Rhx+C6efjY3MtilyqOuscT/di0xZLzmbWamRAHAWdVxEdsapWTOrAFLFX+Di41E
         cH3zwFL01Vms7MAuDfQ44vmpLEcnvO7MBchjunR+MT/ZyfAb0Q6PSPUsdSyw+Y+tHi+w
         knlt4Bg3PYfsCWvsdNstPYup+mua/s0D7RIucvSYxmqO0X+8UfYSjd+8oBqOPJp6kUYd
         1gHtev0Y4n354bh6bqOwFT/O9ueO4uUzoiGbz6ZgVTsUAeWW1M3cWZdjb+NeqjkboA5/
         Z2hDAgfupteis+mckMsPIrbHxknWVBfkCQzRkKNHISYR6Y+/0o7BX+END5LOvqMJeI+L
         YbDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bN+bzJT8wcltxw2ayYEksq7Q+u8jA+bkNL30DeZqTDQ=;
        fh=somDQ473zjaB3/dmnRVdClOEdZDY36zHZzOSGlsqago=;
        b=kkCdskyz6iAEzJ4iQrFfwm+3inY6el+eUyO9vXVPU0aOf+JHqOBoh70bCVaTcEZybP
         oOoWj8YJW+lkFN5vQ1R5kqDy5boiyVOTVKk+6o2VdaNBW0dJnpeMxvnnOJw54Qe+95Ok
         qr5/kCxQT5Bc5c4W32+6yLiCyqDLBTHnICgWAoWX49X1/EiKd2bVa3vM4OWy5NBq5ReK
         zLaTtNk2tvVo8Q8od6G+PSHqfQfURArrVWL+3UMwbzcCN2iLSSikdcuab48lVV+JUuxZ
         wyLS7rcdIDzru6htMqFvxGZr+FkY4GDM3tlT/xtr0XAtHyQitvKa+IWAp4pEfz1GWs7F
         aiPA==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778485257; x=1779090057; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bN+bzJT8wcltxw2ayYEksq7Q+u8jA+bkNL30DeZqTDQ=;
        b=csltpSjKqPp8MvmMmQsrC651QHZ1irnE5HqneROjIngC3Bcl13nyLkh8L5AWFK2e+h
         y/viRHAUvuostCqb7C0sWVyCgLg/OKfXTUPsLDy/zfjJpzJoqEHw/s0KcY9/ka1s6abR
         T/FLiZIMeIqwzcn1uOXLvhBR7+4NxHxBJLFo3U7JZgL3NDcFsoZCJf9M2DMbvdMnFAxs
         Gr5oobB1nwPrEmt/pPfMxV8MaMln+w2luCKdgOUpD3LcEkm7LpCr17IS9bwGrTXM9SsR
         yCwDjGGKBSiIDywDujFVQOOvXEzwk1OVEjWuuR3mMa5bkJfgCUaEMxNEWlPXys+99OQ1
         tVIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778485257; x=1779090057;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bN+bzJT8wcltxw2ayYEksq7Q+u8jA+bkNL30DeZqTDQ=;
        b=VMrG0Hrt5O7FzRMULCOTkx3MZ97NI8a5z8MuBa0QkN6847ADcW4wXcZU9t/ef17Aj1
         4i/7h54jgK06WTFZsYTCXer2pbRotfOvcO8V/q+Q1eQTrj+dSeYl5Tot0QrX1cVlurrK
         oIttUHoMW+G9vHoFb+rTYT5OweDL+DzynDMFC4piwZjvoGyQoCTqfi9o2cfsakEgMCED
         hJ+oj9d6w0shHiu7dhAltXr//IUkKd1lOpuuMH68Va72cwPG4gHDe8pR2RyavqOgALbM
         g/86OBMMwWYzxwTgUvhpDNG9Ryiu8fDC0S0muGm6ChzGcfKdQL8wxCH6XJBJ8pZiAXBt
         ruhA==
X-Gm-Message-State: AOJu0YyJo786MbLALC03cJG/fJNGKQGV/TgZ2syaf5N7tHy2y9GammY7
	sz/luGVr00ljQIPVPTTx5JW6Px/IeIQpGcoLdg7XAYPKZWpzglH2gqLJ3pHM15QbnuEjNwvX38S
	0CVyAaX0E0JRmHd7vNaAe830s4dKx/J4=
X-Gm-Gg: Acq92OHg2oTDsm57mOBwdBQMzrjBd+kByHoxykBSVJf1aQqlOZt3E5fJC477db2DEe9
	UOtq2jKWF63e6fSNNvP1E9lvpFcNBRj3D0GicArOS2iIzJZyxER0hqHIDMvEw5KiS9KyWLY21K+
	Owwk49oXIKp92pMJowHhAsHUiDeEbeUqLh0w5KMscF3nMRWef4rfQuAaKOW829zihXdjOMWZKfo
	pOwnQp86kW0xsaPhQjrRvbjiXrWqwdIgWu68iHbW/BZFNHTYpim21AE+JZnRe7lZFDQifCnTWV4
	su4nX/s=
X-Received: by 2002:a05:7022:f005:b0:130:c9cc:33c1 with SMTP id
 a92af1059eb24-1319649fd49mr11070344c88.43.1778485257192; Mon, 11 May 2026
 00:40:57 -0700 (PDT)
MIME-Version: 1.0
References: <20260507042708.GA2912@openwall.com> <87bjerac9u.fsf@gentoo.org> <CAFFJMPxyY-BRdH4zC-py5btjVbvMeMzonwhZsBeNDToV6Cqn3Q@mail.gmail.com>
In-Reply-To: <CAFFJMPxyY-BRdH4zC-py5btjVbvMeMzonwhZsBeNDToV6Cqn3Q@mail.gmail.com>
From: xw x <v3rdant.xiang@gmail.com>
Date: Mon, 11 May 2026 15:40:46 +0800
X-Gm-Features: AVHnY4IyCyow-z72W3KSwiR9mWXmxyurq6-G1s8ITvrfZMvnQiOGaIbvO4ND3rs
Message-ID: <CAFFJMPyBJ=m+LN-Wn8Nd7p6THDBKwtMGzviFyCmpwbbVqm9V7A@mail.gmail.com>
To: Sam James <sam@gentoo.org>, Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Linux kernel: KTLS + sockmap "Reverse Order"
 Use-After-Free / Data Corruption

The kernel team hasn't gotten back to me with a specific fix yet;
instead, they've asked me to focus on integrating it into the BPF
tests first.

On Mon, May 11, 2026 at 12:45=E2=80=AFPM xw x <v3rdant.xiang@gmail.com> wro=
te:
>
> I'm sorry I didn't fulfill my duties. Is there anything I need to do?
>
> On Thu, May 7, 2026 at 3:54=E2=80=AFPM Sam James <sam@gentoo.org> wrote:
> >
> > Solar Designer <solar@openwall.com> writes:
> >
> > > Hi,
> > >
> > > V3rdant, CC'ed here, brought this Linux kernel issue to linux-distros=
 on
> > > March 18, and apparently also to s@k.o at about the same time, citing
> > > the (outdated) syzkaller "Reporting Linux kernel bugs" instructions:
> > >
> > > https://www.openwall.com/lists/oss-security/2026/05/03/2
> > >
> > > So we immediately had a coordination problem, which V3rdant acknowled=
ged:
> > >
> > > On Wed, Mar 18, 2026 at 10:28:23PM +0000, x xw wrote:
> > > [...]
> > > It looks like literally everyone dropped the ball on this issue after
> > > that point.  This includes two distros who had volunteered for:
> > >
> > > https://oss-security.openwall.org/wiki/mailing-lists/distros#contribu=
ting-back
> > >
> > > 9. Stay on top of issues to ensure progress is being made, remind oth=
ers
> > > when there's no apparent progress, as well as when the public disclos=
ure
> > > date for an issue is approaching and when it's finally reached (unless
> > > the reporter beats you to it by making their mandatory posting to
> > > oss-security first) - primary: Gentoo, backup: Amazon
> > >
> > > I since heard back from Gentoo on this, but no word from Amazon yet.
> >
> > Indeed. I do think there's a circular element here, which does not
> > excuse the ball being dropped, but I offer it as a partial explanation:
> > the current kernel process makes it challenging to keep track of whether
> > a fix is actually in-flight or whether it's related to a reported
> > problem. But nonetheless, we should've stayed on top of it with the
> > reporter.
> >
> > We're also onboarding another member for the security team as it's just
> > myself at the moment, and we unexpectedly lost another from illness
> > recently.
> >
> > > [...]
> >
> > sam
