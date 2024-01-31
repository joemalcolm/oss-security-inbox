Received: (qmail 20053 invoked by uid 550); 31 Jan 2024 13:02:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13863 invoked from network); 31 Jan 2024 00:54:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1706662593;
	 x=1706748993; bh=7F6uROoCzeHsCh4lGBGRACbcqhLkvAlELsrCt5UoIgo=; b=
	NoNvksGtwR7k5q9mJfI/sDMALGr8+tbjkuo2Q11isPtA1qC3zhD3fkrnIrvnMtnL
	6/KyZTGwFwg2KF6/PY9+Ka8WXBur4mMLg3RTQ0tSIso78ewOjbNrVAjLv6pes/dH
	c6fquSjjaM46bOdhaVOe1qPSEGldouOSJR0B0jxiKRtBIISniFpnyWoV7r2QQp8d
	6OCnbNE1LECbdy+J9polvyTF/bP43P/wVd+S61x2f6NYVxl+Fo6+f6TyI6z2A0x5
	77UDiz6L2nj1a/ZJH7Ma2s0g8YpB0a2MMkhau69rgin3xS5d0aDBbSHcf7Si9whU
	hOTrLjzHwOt3rGHiCYS3UA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1706662593; x=1706748993; bh=7F6uROoCzeHsCh4lGBGRACbcqhLk
	vAlELsrCt5UoIgo=; b=KaoIjjWziFtCyeFUwnWRpe9zDLvd8bdK+ubyB5R1ukdy
	Frx29OUqrs3uUhZjSLDF7QicGxaZL67Cn9ukOwd8OamGlIA365NYA/Pt7WOgW1sX
	4WDCCOAzWj7oVVJyqMKszcIA8RyQ4oZ/UxDzNOIXQe4mzaZ2/SzqIiSh40EjIFlV
	H1+mzUSjzkyAS0Br9eYdytW9OhDx/Qkx5iwzU9wMgpIEdSaBdtKBS3Dw5ZVIJMy9
	IrzUZogSMoGWeKlMZ+Po03Ow8l7HC9yNM2oAeGqyjFAevUc5UsJQtgZivV0YjSAU
	cbVwg7iqviSBbG2HbgTU1ml6+SOggKnKEQV34BuCPg==
X-ME-Sender: <xms:wJq5ZZqwfRbMrFBHQhA2UTLEX-PhXww2xuaWgFjp0lmP1jlvgOhfLw>
    <xme:wJq5ZbqpHCJPzjwHb-yVV3V72F_NDIOJpZF5EI798KrgTTY5Z5XMv3MvAIVKjOpNg
    k8Izz3D293u7ZY>
X-ME-Received: <xmr:wJq5ZWO4iQHqTFRjulyJMeQjDF9WWyHSXqKf2bdUrKzy_UDX95OsKxeM8vwdTRlRgPWZAnK4X84hUnsNF4A-PsmbQ9jD-UQAIZeHOMmFk_rgQ_aG>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrfedtkedgvdejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtjeenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    eptdettdeuiedvfeeiudfgjedtuedtleefvdeukeeltddugeejvdeiudekfefhueetnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepuggvmhhise
    hinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomh
X-ME-Proxy: <xmx:wJq5ZU7gc33rGzycqNmaCJjBpGwzE-DUxeizJBHzXhpskKxio44UbQ>
    <xmx:wJq5ZY5ZCC6nowb-4wZaaQlWzhY5Yz_HdXoRhs2QcB7bpNo3kMc1QQ>
    <xmx:wJq5ZchR0k2mdrF05m1sVoLGSvWQiuO_mwYCUdyqpuEhwwI0X7EXfQ>
    <xmx:wZq5ZdWZwrAKvwYemW8xHG_Fh0QlOIrfe74F21wtj765YfihqZkXyw>
Feedback-ID: iac594737:Fastmail
Date: Tue, 30 Jan 2024 19:56:15 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <Zbmav6mcBVq0zGGy@itl-email>
References: <CAKLnGtR3cgHVQz0kTmGVJAaT4nKvSejAZvbMGONTe=f_e9fSYA@mail.gmail.com>
 <20240130142524.GA21216@openwall.com>
 <2024013010-jockey-kindred-c6cd@gregkh>
 <20240130214500.GA24892@openwall.com>
 <2024013003-clubhouse-mauve-222b@gregkh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/mjCDnjQjvWV6ct5"
Content-Disposition: inline
In-Reply-To: <2024013003-clubhouse-mauve-222b@gregkh>
Subject: Re: [oss-security] FWD: Kernel vulnerabilities CVE-2021-33630 &
 CVE-2021-33631

--/mjCDnjQjvWV6ct5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jan 2024 19:56:15 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] FWD: Kernel vulnerabilities CVE-2021-33630 &
 CVE-2021-33631

On Tue, Jan 30, 2024 at 03:01:24PM -0800, Greg KH wrote:
> On Tue, Jan 30, 2024 at 10:45:00PM +0100, Solar Designer wrote:
> > Thank you Greg for looking into these issues.  It's great that most
> > longterm kernel trees appear already fixed.
>=20
> I've taken the one remaining missing fix into the next round of kernel
> releases, so all should be good now.
>=20
> > For CVE-2021-33631 (the ext4 BUG), both the distro vendor's and NVD's
> > CVSS input vectors specify AV:L/AC:L/PR:L/UI:N, which means the
> > vulnerability can be triggered by a local system user at will and
> > without additional privileges.  I'd say that deliberately getting the
> > kernel to work on a corrupted filesystem requires at least one of:
> > physical access (AV:P) or privileges on the system (PR:H) or user
> > interaction (UI:R).  However, there's no way to encode this in one CVSS
> > vector.  Also, in the physical access case, at least the availability
> > impact typically does not apply (would be A:N).
>=20
> The "interesting" thing here is that the project in question (the
> kernel) does not consider "mounting a corrupted filesystem" as a real
> attack vector at all.  There's been long discussions about it, the most
> recent being last year on the kernel summit discuss mailing list, and at
> the kernel summit itself.

The kernel itself does not, but there are downstreams of the kernel that
do for at least a subset of filesystems.  These include Android and
Chromium OS.

> So while CVSS might consider this a real issue, the developers of the
> project itself do not.  The disconnect is one that drives people who use
> sysbot tools to create fancy corrupted filesystem images with the goal
> of getting a CVE for their CV, crazy on a weekly basis when the issues
> they report get constantly ignored.

If someone finds a vulnerability in F2FS or ext4 that can be used to
compromise the kernel by crafting a malicious filesystem, they should
report it to the Android or Chromium OS security teams, respectively.
It=E2=80=99s a verified boot bypass and I expect that it would be in scope =
for
the respective bounty programs.  If Android mounts FAT and exFAT in the
kernel, then vulnerabilities in these filesystems should be reported to
the Android security team.

Google requires that F2FS and ext4 are secure against malicious
filesystem images, so they should be the ones responsible for fixing any
vulnerabilities that require a malicious filesystem image to trigger.
Fortunately, they have the resources to do that, so this should not be a
problem for them.

Could this be documented somehow, so that people know to send reports
against f2fs and ext4 to those who will actually fix them?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--/mjCDnjQjvWV6ct5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmW5mr4ACgkQsoi1X/+c
IsH3vhAAjcPycx6fs5uj/fxpnP+to3dLwPzWV9AZ4EW7B4H3LAeBxPYiZYKzwh7S
w8Pr9FvcfD2979SyZfW35PaTnyPsUgY5BWpwqWfArmb7BhhoTb+8j3K1Wbhh/jKU
qCW/m1z1LX1N7ZMpj/3s58kA7FOn02Wjsu++qVMYLaG6gy9DRW12E02tNqrh7Jae
CNTum9/RfHQnXNkA2/lkOC4MGcVWY9E0nHYzR7XLjU5/CCVmgw3VJqeKnv6nYQel
cQOpwKDPBkcr4YsbLKywce9XbdJ6Yu0Irxmd4UjsZWyBVLjdCwBD5lCfmoCaXRxN
DqBXw6e6TubyOEmI3uDCbjX+tok+NF9BgkyOKRjylJweGR8CDpQv3Zdyki7RKZLc
bdP3v+ow6N7hvPN/b9KbQyN9V1AzO6ExAITXqXpxAu2mppIkAiiOflJj177pxh2W
z9PN9ocoCPYIePOPfpSaovYhN2fJEVjjtGdKxXdH7Balh0bpcch8xiIm6xYbPxKa
ELQ0ON7CGWJGTAH1HtPMS3wZRPqJpePAyefJB3IZgPxo70wkQ1I4uhz3MDdGhsAa
hTbBQ7MfxFERoqUYQY1MpVEyx+fOd3W9V6vrDxEZ9XGXn/tGGNGdt2vTOEzDXNW4
h7ZO2sBmkLvntlRJkMRI2TSREU2BZ7J0+qoGnKOHC84O7Byv3d0=
=Qh9q
-----END PGP SIGNATURE-----

--/mjCDnjQjvWV6ct5--
