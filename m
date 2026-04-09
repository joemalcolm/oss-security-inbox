Received: (qmail 32277 invoked by uid 550); 9 Apr 2026 15:28:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30489 invoked from network); 9 Apr 2026 06:27:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775716050;
	bh=Ocg8AMWvNi0N40V64z6rRrshGWhcVL+NtgshrrFZhZQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=EdB01c1+mnt9XDLFnp4PnsMs9ltyDMS3+qcRwuDe39obOz9jgeaC0A52jGHXRvmuh
	 uUeLPYTVJH5j+PYiyKb7C5EOx0K4qjB1DJeUWAyT0FpCRIpEPSnbvYtwm2ordLSiqP
	 E/PFDkumLjOwX0e31CMCeFGDUKa01l8hefzr0W0RYInD2Fm2Z7LggC8UHpae+DvTPA
	 3jGaZN54XpzmdiojnNEfpcWz11rs85i+TotW5fhrwk3yL0xSFNLh4P8zGsP4mFO46W
	 Ej2u7wxtD8BWZKkBOHdO+nNCboo4XLTfNMPbtYxhk9uyntVgA5HxwOhcIaP/0STmpk
	 g+E5RaZaltyTA==
X-Gm-Message-State: AOJu0Yx9k9XUK4N3gdtpuhYA7Q8pGiIOD4PEo5C991puEgB1EaGLI85I
	hyhKMJ87Dik11TPFLFCHAD57DbiO+t2QWbZp4U7laxUpqJEE11aSAPfvUfLS82b9IBKeNqM3bJE
	U3bL6n+agNNor1qIWNED3HXJL3YKRIYI=
X-Received: by 2002:a17:90b:4f43:b0:359:f3b1:6811 with SMTP id
 98e67ed59e1d1-35de67db862mr22693994a91.1.1775716050352; Wed, 08 Apr 2026
 23:27:30 -0700 (PDT)
MIME-Version: 1.0
References: <CACmP8U+CbkozUQ1OqxsXMxLgMYvQS85QsWaGtVGBD8BFox34=w@mail.gmail.com>
 <fa4662c4-ce58-48ec-85a4-b0272ca9931a@seltendoof.de> <20260409013620.GA13098@openwall.com>
 <CACmP8UKMsyDGzMSbuu_tORKR9p2EUhCE_qY6YcFf_w19ZcZaqw@mail.gmail.com> <20260409035050.GA14884@openwall.com>
In-Reply-To: <20260409035050.GA14884@openwall.com>
From: "Andrew G. Morgan" <morgan@kernel.org>
Date: Wed, 8 Apr 2026 23:27:18 -0700
X-Gmail-Original-Message-ID: <CACmP8U+8jmiyE5GuF-JF=SEPaBHgLx8wy53Q5m_8tmv6n+ivtA@mail.gmail.com>
X-Gm-Features: AQROBzDX1g6MtQGdYa0_7z-FkhA8CIK35CG58JtF2LUUYA39G6iSaR2NstEqw98
Message-ID: <CACmP8U+8jmiyE5GuF-JF=SEPaBHgLx8wy53Q5m_8tmv6n+ivtA@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, Ali Raza <elirazamumtaz@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] libcap-2.77 (since libcap-2.04) has TOCTOU
 privilege escalation issue

On Wed, Apr 8, 2026 at 8:57=E2=80=AFPM Solar Designer <solar@openwall.com> =
wrote:
>
> On Wed, Apr 08, 2026 at 07:19:31PM -0700, Andrew G. Morgan wrote:
> > On Wed, Apr 8, 2026 at 6:53=E2=80=AFPM Solar Designer <solar@openwall.c=
om> wrote:
> > > On Tue, Apr 07, 2026 at 10:14:42PM +0200, Christian G=C3=B6ttsche wro=
te:
> > > > Apr 7, 2026 18:54:22 Andrew G. Morgan <morgan@kernel.org>:
> > > > > The fix for pretty much that whole range of libcap releases is th=
is commit:
> > > > >
> > > > > https://git.kernel.org/pub/scm/libs/libcap/libcap.git/commit/?id=
=3D286ace1259992bd0c5d9016715833f2e148ac596
> > > >
> > > > Hi,
> > > >
> > > > the new code suppports changing the file capabilities of all kinds =
of files (not just regular)(given that the caller has read permissions).
> > > > Is that intended?
> > >
> > > Andrew, please comment on this.  I do also see it in the patch that t=
he
> > > S_ISREG check is now below the added fast path code for readable file=
s.
> > > It doesn't matter that the S_ISLNK check is also below (in fact, it's
> > > now redundant anyway) due to O_NOFOLLOW,
>
> Correcting myself: not redundant due to O_NOFOLLOW because
> O_PATH|O_NOFOLLOW can actually open a symlink as such, but still
> redundant with "|| !S_ISREG".  Anyway, fine to keep it.
>
> I don't get why you wanted to use O_PATH instead of just letting the
> open() fail on symlinks with plain O_NOFOLLOW.  Just to set a different
> errno and debug message maybe.  Anyway, that's also fine.

The prior xattr code didn't care if you have read access to the file
content, so using O_PATH was a way to preserve that legacy feature. It
is pretty convoluted since we're only really using that to lock the
file connection in place.

>
> > > but bypass of the S_ISREG check
> > > appears to be a functional change.
> >
> > Not sure I follow. This check is in the cap_set_fd() function itself.
>
> Oh, indeed.  I didn't look beyond patch context, maybe Christian did not
> either.  I think this addresses the concern.
>
> int cap_set_fd(int fildes, cap_t cap_d)
> {
>     struct vfs_ns_cap_data rawvfscap;
>     int sizeofcaps;
>     struct stat buf;
>
>     if (fstat(fildes, &buf) !=3D 0) {
>         _cap_debug("unable to stat file descriptor %d", fildes);
>         return -1;
>     }
>     if (S_ISLNK(buf.st_mode) || !S_ISREG(buf.st_mode)) {
>         _cap_debug("file descriptor %d for non-regular file", fildes);
>         errno =3D EINVAL;
>         return -1;
>     }
>
> > Just to be clear, and credit where it is due, the text of this was
> > authored by Ali Raza.
> >
> > The markdown source is as follows:
>
> Thank you both.
>
> I would still like to know if there's a way I could extract Markdown
> source from third-party GitHub advisories, if anyone knows.

I had to open it to edit the advisory to get the markdown. I couldn't
see any other way (canceled the edit, so no change, but that is how I
got the markdown).

Cheers

Andrew

>
> Alexander
