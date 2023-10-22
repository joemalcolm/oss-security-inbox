Received: (qmail 15374 invoked by uid 550); 22 Oct 2023 08:31:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16383 invoked from network); 22 Oct 2023 00:46:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1697935558; x=1698021958; bh=fCQhDK+j81x8cAS4/m7gdAo7ZjZzm7LWwhe
	pxAr9/ak=; b=yD+7Jdi2vIkuZUv4lvX4ecXEAObX8I6uVXCexpHuipFNy/bHMEu
	vqKwIvpmNyS/xj/3XZfetAoCD1P6QWot2opZ0hI3FubcmFBp8H1S3lpa/Ys/YJOj
	94XvuqYKuM3HXFpDlTXhD/OcuSjHOXqf40B2IyBpTsgZimQQh0kR5dBTZGZyDudt
	gOdfFkNgNkKZjBK0rntBOnWW+9iOdAa3IAu8efYRDj4fbu8FB+M1Oxtit9j5G0Rb
	THoMGODEDDIuTl+TzWBUX/2/GV/alRMlviFwtrnc92l1+17Sp5IKNn4W25l1t6D2
	EvvTGRb6TEHKgRXbw6SfNLwCWqmx1/88u8w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1697935558; x=1698021958; bh=fCQhDK+j81x8c
	AS4/m7gdAo7ZjZzm7LWwhepxAr9/ak=; b=jsIXY+aGYgKzhj3exQsYHopmcrTJg
	X6W8mQW3PrjhvZzV12kJtXuMukVyVMBoDkZ4SG/BoS3IVsUb5fR1NHG/hFE8tNp3
	wCHNRQ0O6aLG8UtGkv/ehvrcobIgHFNrm8m41Em9M6uN4OrkpJifPqPOUW4X76VK
	FHTZg0e4NjaC4BQybUnpQQFcvo0awpbnZZ5U1amixpY4O8W4yLRblSuv3zcBUHOr
	jve3nNvuCSPR5RsP0Po2MqoFKt9KgSp8twtoooNfeIw8VmJwMLdC056TkQyFQu0F
	qmXN1qZ+81lXTAt+RRrM4uATScVe0UxXBlfWMBDiVFh/33u/x50C05ABA==
X-ME-Sender: <xms:xnA0ZRrdfXFXwn2R8Js8AsyVGMOnMC-BLK9ZFlL3X9UNCvB0ucE7WQ>
    <xme:xnA0ZTqcKg9ar2-NEocRhpcRmfptf9QQMZxdUg6A66jQg08a8o_-M2_wDUXl2ZfSE
    iyynHZ1v9BMslY>
X-ME-Received: <xmr:xnA0ZeP4WAbs3TO_jS0PXiRw_HgmXgntANTMXS5bslD2mG78AMTt0RE2HweFHqB5xrjDaHhxd_Abs8ZHt9tbRMjgwVN_gXEi42_NQHheBpH-IgoS>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrkedugdefkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderre
    dttdejnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihes
    ihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpe
    dttedtueeivdefiedugfejtdeutdelfedvueekledtudegjedviedukeefhfeuteenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihesih
    hnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:xnA0Zc5WpTMJjEFJ8bhDgu3iSScaNPdc0dwjzwspTu4BgHCx2nQHZQ>
    <xmx:xnA0ZQ7Ojm9iNzS5dyco_V-XvBYS4OONhQKQAjCOejIpJ4Ma86aPCw>
    <xmx:xnA0ZUjsvGaDGiERz2dDEwY8ZjlYtWrlPJL1N66a_R5XZVXGe2-ZPg>
    <xmx:xnA0ZSERn3TJQu1G_tkL46aPQLgo6gZXJ2koSW6A7xWy0rXizw7EVg>
Feedback-ID: iac594737:Fastmail
Date: Sat, 21 Oct 2023 20:45:40 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZTRwxHaoUqTPyf+b@itl-email>
References: <56c8798b-0ad7-652b-d034-90229b6768f7@gmail.com>
 <20231022000649.GA14340@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AoSo05VpGDNYXz+Q"
Content-Disposition: inline
In-Reply-To: <20231022000649.GA14340@openwall.com>
Subject: Re: [oss-security] sandboxing,of upstream programs by distros

--AoSo05VpGDNYXz+Q
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 21 Oct 2023 20:45:40 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] sandboxing,of upstream programs by distros

On Sun, Oct 22, 2023 at 02:06:49AM +0200, Solar Designer wrote:
> Hi Matt,
>=20
> I'm sorry I didn't follow up on this sooner.
>=20
> On Sat, Oct 14, 2023 at 06:39:49PM +1100, Matthew Fernandez wrote:
> > Is there interest/solutions within the Rock Security SIG or other=20
> > distro's security teams for sandboxing that package upstreams can opt=20
> > into?
>=20
> For Rocky Linux Security SIG, the only relevant thing mentioned so far
> was possibly offering an OpenBSD pledge()-alike that other packages
> could use.  However, I am skeptical any actually would, unless we also
> introduce such uses ourselves and maintain own "override" packages
> (replacing RHEL rebuild ones or those coming from EPEL, etc.) of such
> software.  Initially, we are going to only create "override' packages
> for core or very commonly used/exposed components, and to do so only for
> specific good reasons.  So stuff like e.g. ImageMagick/GraphicsMagick
> coming from EPEL and with most of its dependency libraries coming from
> AppStream repos, or e.g. GraphViz coming from AppStream, is unlikely to
> make the cut, at least not initially.

Has deprecating ImageMagick and/or GraphicsMagick outright been
considered?  I don=E2=80=99t just mean the downstream packages, but the ent=
ire
upstream projects, or at least the libraries.

> Also, continuing these examples, it's probably more realistic to sandbox
> their command-line tools, whereas the underlying libraries are probably
> more exposed via language bindings.  Would we be introducing creation of
> child processes into the libraries?  That's tricky as it could violate
> expectations of programs using such libraries.  (Yet at Openwall we did
> a similar thing in pam_tcb, albeit limiting this maybe-unexpected
> behavior to setups that opted-in to it with the "fork" option in the PAM
> configuration file.  So it's not completely out of consideration.)

One option would be to instead make an IPC call to a persistent daemon
running in the background.  That said, has wasm2c been considered?  The
best fix would be something that can make C code memory-safe, even if it
comes at a performance hit of 4x or more (like SoftBound+CETS did).
Stuff that cares about performance should be migrating to something like
libvips or ImageFlow.

If neither of these are options, I think the entire library will need to
be deprecated for eventual removal.  The command-line tools can remain,
but they can be much more strongly sandboxed than a library can, because
they have the entire process to themselves.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--AoSo05VpGDNYXz+Q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmU0cMQACgkQsoi1X/+c
IsEA2g/6AmJ0XYdSK4Klg+rRjptMjbWVVxsBeAnGO9qixRjzZAdQAiCteIPn9e6Q
cE1mz9v/+3SIzTzDZL7Pge9Z3G5RcgG7Sp1yuloSHeMDyRXKG5zdk0z5aq/Uf9rS
dX8eXwtlKiz91tB+075gsR2c7ePUnlrx0UzLZ42pT+y+MYnt9gMX9+cAevDWSoCq
VfSZK7sx+mkSRs29/u2w+L5yV3MYjPGUh0rEi267MqsQFcCwn5k3vicI2xqW0cwD
i8Bht/ZAiu9yBXIsozfqkXDhQkntK91/otWGshVoC699HKA0EjkIC0GJT9zlM7WM
ZQckx5GhqJ5WUQ8RD1z9r6u0FfaEBWqtfxgh51Tq1FhV7BAvQHNwGcEUefMdDQsE
CGh+I0rHIG42G9FLQD2anMo+BzOAsbY+b1q1Sorrvb5Bs1we1WN2nCSAUZK96quB
ei4lglwTGFVPAcMOuf991+o7NnUzicJTyRoaaRtUpZvjX3ubV9HPMZD2cOQM8NA9
Vk26ED70DPLRynde46Qt4T0mFM7pNkrV+hnI9O1vJK3w2iAxNwmdKtrGg7+oTeLe
8bp2MQmGQEbwtyh+2XJxckbwU0nz3NE38ups2VNCXdVHzQRgtF30+iPLdkXZF2zA
ohVo870/ltB2yPaPWsmyWO+1o6oK+h+FpYMF7SWQojuoMAdK+fk=
=mwDz
-----END PGP SIGNATURE-----

--AoSo05VpGDNYXz+Q--
