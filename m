Received: (qmail 29842 invoked by uid 550); 23 Jul 2024 20:45:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27715 invoked from network); 23 Jul 2024 20:44:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=michel-slm.name;
	s=MBO0001; t=1721767445;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=T3Z00D2pwm4aDqLZHwibzRL5aRt6EdrmWroMN+K+aHg=;
	b=o5bscdYeuUnO4YDtb5HpqdmpL/I0o9L6HuHO1wF3IFopWOn5T5+gHGp4L4r5Xr3xp6+U+z
	wuaVcOufhdYpPTcbmEuzG/cwkCl0f+8nrh+nQhTQAsmZLIVFQ5cjCK8RqVL4j7kGRgi+at
	rFM8EkK9HAOob52ZIIID9JrFiZ3lfMrwiCH3ZQBvriPU4tLcSiMeMKf7KVuURlBHs94Zaz
	qry3NBWj709KJyy8r9QMD4DRP7brl2KNMewzzW5c2dPRQWul5Ao5o1B9cHyk+DjgNO3E6r
	fMmLkPXTeXkjG5kLHPl3LtOxaw+58xtUq79TBpLWo+O/y0vA7ThaY69yYXw7XQ==
Date: Tue, 23 Jul 2024 15:44:01 -0500
From: Michel Lind <michel@michel-slm.name>
To: oss-security@lists.openwall.com
Message-ID: <ZqAWEWkm6Y5LMGli@michel-fedora-PC198L6J>
References: <Zo61nFk8VulWf7_J@michel-fedora-PC198L6J>
 <Zo7mU_N9joNTZ4gV@itl-email>
 <Zo759RRNseuva6zO@aeon>
 <Zo8fJWNFia9y2BS8@michel-fedora-PC198L6J>
 <20240723192310.GA23154@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HBgo79m4myPnyUFW"
Content-Disposition: inline
In-Reply-To: <20240723192310.GA23154@openwall.com>
Subject: Re: [oss-security] linux-distros application for CentOS Project's
 Hyperscale SIG

--HBgo79m4myPnyUFW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alexander,

On Tue, Jul 23, 2024 at 09:23:10PM +0200, Solar Designer wrote:
> Hi,
>=20
> I've finally reviewed the links and re-read the thread.  Looks like
> we're OK to proceed with adding CentOS Project's Hyperscale SIG as a
> linux-distros member.
>=20
> Michel, please e-mail me off-list with PGP keys for all of you who need
> to be subscribed for Hyperscale.  I also need to know who will be
> managing this subscription on your end (informing me of any changes in
> who's to stay subscribed).
>
Thank you! I'll email once I have collected all the keys.

> On Wed, Jul 10, 2024 at 06:54:13PM -0500, Michel Lind wrote:
> > All three of us are Fedora developers - but AIUI, we will not and can n=
ot use
> > membership here to contribute Fedora patches - until the embargo is
> > over.
> >=20
> > For Hyperscale itself we plan to use the head start to have local builds
> > ready to go, and commit and do a public build as soon as the embargo is
> > over; if it needs collaboration we can use private Git repos and E2EE
> > private chats to discuss the fix among ourselves.
> >=20
> > This is, to the best of my knowledge, similar to how AlmaLinux handles
> > embargoed security issues - the fix is ready to go but is only made
> > available once the embargo is lifted.
> >=20
> > Now - wearing our Fedora hats, we certainly would try and help get this
> > fixed in Fedora once the embargo is over (as we've done before) - and
> > knowing a CVE is going to be made public would certainly help (e.g.
> > trying to make sure one of us is around) - but we won't be participating
> > in the list wearing our Fedora hat, or discuss embargoed issues with
> > people not on the list.
>=20
> This understanding is correct.  The membership and embargoed info is
> only for the specific distro "except with the reporter's explicit
> approval".  This exception means that you may occasionally ask whoever
> reported the issue to linux-distros for permission to use the
> information e.g. also for preparing a fix for Fedora even though you're
> subscribed for Hyperscale.  To avoid miscoordination, please keep such
> requests also CC'ed to the list.  Uses of this exception have been very
> rare so far, and it is expected that you wouldn't use it often, or else
> it'd make more sense to discuss the additional distro becoming a member.
>
Thanks. Good to know this exception exists, but I'm hoping to prod
Fedora to onboard itself as a member anyway.

> FWIW, Fedora's fix for CVE-2024-6387 was quite timely as-is:
>=20
> commit dcbca7b947cf82c30d6f477a26efd2f765204fe6
> Author:     Gordon Messmer <gordon.messmer@gmail.com>
> AuthorDate: Mon Jul 1 20:49:16 2024 -0700
> Commit:     Gordon Messmer <gordon.messmer@gmail.com>
> CommitDate: Tue Jul 2 00:48:16 2024 -0700
>=20
>     Patch 9.6p1 for CVE-2024-6387
>=20
> * Mon Jul 01 2024 Gordon Messmer <gordon.messmer@gmail.com> - 9.6p1-12
> - Patch 9.6p1 for CVE-2024-6387
>=20
> On one hand, this confirms that Fedora cares.  On the other, for an
> issue with a trivial patch, I don't know if Fedora could have done much
> or anything more to prepare.
>=20
It was timely .. but there was some scramble in Fedora's security room
the morning the embargo was lifted. It turns out the development Rawhide
branch was not in a buildable state at that moment - not a big deal, I
pointed out at the time that it's more important to fix the stable
releases - but with access to the embargo, someone could have fixed the
Rawhide build in preparation I suppose.

> OpenSSH 9.8 released on July 1 also fixed "Logic error in ssh(1)
> ObscureKeystrokeTiming", which became CVE-2024-39894 by July 3:
>=20
> https://www.openwall.com/lists/oss-security/2024/07/03/6
>=20
> Per upstream, this issue affects "9.5 through 9.7 (inclusive)", so I
> guess Fedora's package based on 9.6p1 is vulnerable.  There doesn't
> appear to be a fix in the package yet.  I see this is being tracked in:
>=20
> https://bugzilla.redhat.com/show_bug.cgi?id=3D2295615
>=20
> which is assigned to Dmitry Belyavskiy, who is also the maintainer of
> the OpenSSH package in RHEL and CentOS Stream.  RHEL is not affected and
> the issue is low severity, so will probably take a long while to fix in
> Fedora via Red Hat.  Maybe something the community could do quicker?
> This is not directly related to possible linux-distros membership; this
> issue wasn't even on linux-distros.
>
Yeah - the CVE fixes were done by a non-maintainer anyway (Dmitry
understandably has his hands full with fixing RHEL and CentOS Stream).
This is tangential - but having a well-coordinated security team in
Fedora, that participates in this list and in linux-distros, would
likely help - e.g. by ensuring that the ACL of key packages like openssh
correlates to who often contributes to it, and by making sure issues
like these get addressed sooner rather than later.

--=20
 _o) Michel Lind
_( ) identities: https://keyoxide.org/5dce2e7e9c3b1cffd335c1d78b229d2f7ccc0=
4f2

--HBgo79m4myPnyUFW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRdzi5+nDsc/9M1wdeLIp0vfMwE8gUCZqAWDQAKCRCLIp0vfMwE
8r5KAQCE1ofzcyfUr7XSKQNz9HwazZYluEypeDUPUrjwIhM19AD/YE6aUdF01Cd4
fJ51euum+bjca7eb4ryFrr9088IZvwg=
=cUTC
-----END PGP SIGNATURE-----

--HBgo79m4myPnyUFW--
