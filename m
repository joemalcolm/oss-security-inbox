Received: (qmail 3545 invoked by uid 550); 11 Jul 2024 12:39:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3910 invoked from network); 10 Jul 2024 23:54:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=michel-slm.name;
	s=MBO0001; t=1720655657;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UYmlN6KBTO5oPeByUGG1SSyt7F+2E2IrK/M8tIJRod4=;
	b=S6mQT8FzoSil6kfHBYbHQXRz5064STKp35XqdRvtuP1xKBy5l7zVKhsSdMlusxUhytqou4
	NMcu/E6UPoCMdLoGJ2dxAaFUiPgl5S2jGcRTGdwF9Dy3lmJPL7XVPblyY3rpkNBdLUBt7R
	4v81c2PzLvYDklB/d1rS9XYM1UoDVX3uw2UH064AzA2vlIfaB8FjVscZVi+Zckl439uLfn
	zW//+4TW9l7lljJa5ndYu/rV5tVxvsm0tgWdUEv43b7k2NI5vY/Zs9CINBMBW0L0W8RhXo
	IDcuwAj205nv5TQrIxcZK5wIMBqFC8udgtMX07jDWb1BOg6XThW76QQi2Ad7LQ==
Date: Wed, 10 Jul 2024 18:54:13 -0500
From: Michel Lind <michel@michel-slm.name>
To: oss-security@lists.openwall.com
Message-ID: <Zo8fJWNFia9y2BS8@michel-fedora-PC198L6J>
References: <Zo61nFk8VulWf7_J@michel-fedora-PC198L6J>
 <Zo7mU_N9joNTZ4gV@itl-email>
 <Zo759RRNseuva6zO@aeon>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mt3MRfbd3iadXyzg"
Content-Disposition: inline
In-Reply-To: <Zo759RRNseuva6zO@aeon>
Subject: Re: [oss-security] linux-distros application for CentOS Project's
 Hyperscale SIG

--mt3MRfbd3iadXyzg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Demi, Mark,
On Wed, Jul 10, 2024 at 04:15:33PM -0500, Mark Esler wrote:
> On Wed, Jul 10, 2024 at 03:51:44PM -0400, Demi Marie Obenour wrote:
> > On Wed, Jul 10, 2024 at 11:23:56AM -0500, Michel Lind wrote:
> > > I am submitting this application on behalf of CentOS Project's Hypers=
cale SIG.
> > >=20
> > > Myself (Michel Lind), as well as Davide Cavalca and Neal Gompa (SIG c=
o-chairs), would be joining if approved.
> > >   https://sigs.centos.org/hyperscale/sig/membership/
> > >=20
> >=20
> > I know that at least Neal Gompa is also a Fedora developer.  Would it
> > be permissible for him to also handle security patches for Fedora, if
> > Fedora is also affected?

All three of us are Fedora developers - but AIUI, we will not and can not u=
se
membership here to contribute Fedora patches - until the embargo is
over.

For Hyperscale itself we plan to use the head start to have local builds
ready to go, and commit and do a public build as soon as the embargo is
over; if it needs collaboration we can use private Git repos and E2EE
private chats to discuss the fix among ourselves.

This is, to the best of my knowledge, similar to how AlmaLinux handles
embargoed security issues - the fix is ready to go but is only made
available once the embargo is lifted.

Now - wearing our Fedora hats, we certainly would try and help get this
fixed in Fedora once the embargo is over (as we've done before) - and
knowing a CVE is going to be made public would certainly help (e.g.
trying to make sure one of us is around) - but we won't be participating
in the list wearing our Fedora hat, or discuss embargoed issues with
people not on the list.

>=20
> I am curious what this could mean for Fedora Asahi Remix [0], as the
> applicants maintain both distros.
>=20
> Is there interest in the Asahi SIG applying as well?
>=20
> I heartily endorse the applicants membership request and appreciate
> their work. Hooray for ARM \o/
>=20
So... if this works for Hyperscale, we could potentially discuss with
other Fedora developers about having Fedora itself be represented in
linux-distros. Something to bring up at Flock! There's already some
discussion of this in the Fedora Security Matrix room w.r.t. last week's
OpenSSH CVE.


Best regards,

--=20
 _o) Michel Lind
_( ) identities: https://keyoxide.org/5dce2e7e9c3b1cffd335c1d78b229d2f7ccc0=
4f2

--mt3MRfbd3iadXyzg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRdzi5+nDsc/9M1wdeLIp0vfMwE8gUCZo8fIQAKCRCLIp0vfMwE
8isgAQCFWtVgMRsEvmyA4YXVgQBPTlbkuzxm0D57tZ+WMtctwQD+LfwPE9iWy0IW
/vqY87q/ThULXl/Ei0ooNXoQJG/n7ww=
=hu47
-----END PGP SIGNATURE-----

--mt3MRfbd3iadXyzg--
