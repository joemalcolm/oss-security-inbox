Received: (qmail 3898 invoked by uid 550); 6 Jul 2022 19:06:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1331 invoked from network); 6 Jul 2022 19:01:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1657134083; x=
	1657220483; bh=2BKrmLz1kAmp6y15r7t8AIC/xV4OAIxKdr4fte0LIgM=; b=g
	ua/f/C+Td9bHL1xEXdrB8SAO8zriMsi+J79FaHfWpDzD0ldZSJKAnexF+K6deDGZ
	5iHV+OpqnOMj7mimiXSTDOj7NszyeLXCOv7Szz2eM/4+LFHtBOol4XjaybYKSQMW
	zCIigxXdOg6sdWUz0wxP1Fo/veBf4DgXARi65EOS8Z+EiICHAfyWmmPzj2w+bgUv
	xetP9kcZTWh2BHJuq1rZ9JczcC5pVqeowzGGwprpUT1UUcmHsTCBp4WYNT/M8UPZ
	1GQ1gFuh7Nt5MAOuzOLxPTQ5whItluMDkD8NjLAhII3ajpLDPmbTd+LounWvFMam
	Hrmmk4hrjlUPrZqUZ7PFg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657134083; x=1657220483; bh=2BKrmLz1kAmp6y15r7t8AIC/xV4O
	AIxKdr4fte0LIgM=; b=KhAlLXliODBgfv2cJCNHnsWn4Bde3i3lcVEz/fe3ulaK
	x3YSRlIKJH4fWHDzXd5K+bmyJuQDyO+mW/hxNE54P7WvK2g8t6wuc4/Wf3wk1JH5
	0DhXGIBQxg1O4giLfTQIFg8aA62CvoCYBfZY6M9AjRkHOip7GMVc1/hVokTvktBk
	i/s3IgsPrio+/qjXadYVQlLUAhJG82g6izGtVoL7IVupeI57EHRpr7D/+Cl8uGjQ
	w+ckddn5AIiL1orLusNlKK0vSybXwnSI5tNgWOq8+NL+vS8vjhOAiw/N/261ifbf
	LB2eA5kDpm4N+5opkjgpWs7uiq/+6nZ5+FKvJy+WcQ==
X-ME-Sender: <xms:AtzFYrDmpnbiDvrQtbHkjnSAZSscAxmowlJWZMoeb313WY3-0FNPSA>
    <xme:AtzFYhh1iAqfypb0Gzhqr_hAOanQdka2LaCHzutQV1mmbdIrlu5Nh3A03USeO8_KV
    yKoj5IA_4PvQaM>
X-ME-Received: <xmr:AtzFYmnDzc6Jhl3Yai1mjy5yLYE71jX0SEM-pffobGQkVOtJKacCSYkKaMED>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudeifedgudefvdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtd
    erredttddvnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghm
    ihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrh
    hnpeeigfeifedvgfejleefieefgfejvddvfeelgeelieefgeffhffgffeffffhueduheen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmih
    esihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:AtzFYtz122K0zAoyxDkYzmkazzXiQ87iuo7GxvfBl54aVBPKpb2gkA>
    <xmx:AtzFYgQbn2GUf0a5JQDsY0h0kZaBGcB9E2_iDRDRdB_inblfRsPJwg>
    <xmx:AtzFYga1mmOm8_bJzgJp5I7-fbtbBe96YuKcUPdbCv8UGlPqT1vDvA>
    <xmx:A9zFYnd3iyjV2Tn55Oki7pNL7VpqYZEuhtnaX_-2wfBvFJ2zpiJLAg>
Feedback-ID: iac594737:Fastmail
Date: Wed, 6 Jul 2022 15:01:19 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <YsXcAKWZYR90JMFf@itl-email>
References: <YsJ7JjZ/R/jqN+YX@itl-email>
 <939888998.96730.1656936945905@appsuite.open-xchange.com>
 <YsLj+ux2Pgkir5F8@adhil>
 <20220704150029.vcbamih6dlqdxqpl@jwilk.net>
 <ta390o$qi2$1@ciao.gmane.io>
 <YsVr51JzzpR0A0N9@itl-email>
 <20220706133809.GA2593@openwall.com>
 <YsWSda4ITnaf5bOY@itl-email>
 <20220706145011.GA2928@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PKPGh7VFizLZkY0a"
Content-Disposition: inline
In-Reply-To: <20220706145011.GA2928@openwall.com>
Subject: Re: [oss-security] Re: DO NOT OPEN PREVIOUS MAIL Re: [oss-security]
 Denial of service in  GnuPG

--PKPGh7VFizLZkY0a
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 6 Jul 2022 15:01:19 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: DO NOT OPEN PREVIOUS MAIL Re: [oss-security]
 Denial of service in  GnuPG

On Wed, Jul 06, 2022 at 04:50:11PM +0200, Solar Designer wrote:
> On Wed, Jul 06, 2022 at 09:47:28AM -0400, Demi Marie Obenour wrote:
> > On Wed, Jul 06, 2022 at 03:38:10PM +0200, Solar Designer wrote:
> > > On Wed, Jul 06, 2022 at 07:02:59AM -0400, Demi Marie Obenour wrote:
> > > > Was adding compression to PGP even a good idea in the first place?
> > >=20
> > > I think actually yes, it was, especially back then.  It has probably
> > > helped more than it hurt in PGP's lifetime so far.
> >=20
> > Interesting.  Why do you say that?
>=20
> Oh, I didn't feel this even needed explanation, and I feel silly writing
> the below and don't really have time for it (lesson re-learned: should
> have stayed silent), but well.
>=20
> PGP is commonly used on compressible data (such as text), and PGP
> messages are then transferred over a network and finally stay in
> people's mailboxes or such.  Bandwidth was commonly low back then, and
> storage much more limited than today's.
>=20
> Some compression existed for unencrypted messages - some network links
> somewhat compressed (e.g., V.42bis), some mail clients supported mailbox
> compression, and of course a mailbox could also be compressed manually.
>=20
> Obviously, already encrypted content is not compressible.
>=20
> Without built-in compression in PGP, its messages would be slower to
> transfer and larger to store.  Compression would need to be performed
> before PGP, which would be an inconvenience and would lead to similar
> risks, especially if automated, and would often not be done.  In PGP,
> it's just one standard way to do it, not more than one.
>=20
> So compression was of some benefit to a lot of people.  We could argue
> that it's little benefit, but multiplied by the number of people it's
> significant.  Was compression also a problem for a lot of people?
> Theoretically, yes, but in practice those attacks were not common.
>=20
> We could also argue that PGP never became popular, MUA integrations are
> poor, etc., and as a consequence that its individual features were not
> of a lot of benefit to computer users at large.  While true, that
> argument also means the risks associated with those features did not
> apply to most computer users.  So it's irrelevant.
>=20
> What I say is that for the geeks using PGP, compression was overall of
> more benefit than risk.
>=20
> Oh, and I'm also grateful for compression in SSH, despite of my own
> criticism of its effect on security.
>=20
> Alexander

Thanks!  I had not considered this at all, and it makes a ton of sense.
Being able to compress data prior to encryption is indeed necessary if
one wants to avoid using more space than a message compressed using
normal methods.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--PKPGh7VFizLZkY0a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmLF2/8ACgkQsoi1X/+c
IsF85w//anhjrfQt45fH5FA+az8O+fx1wzLbu70n0HQUwRiR2ewD1JoM8mVfl7aK
ffe2ouRhJCcyxZGALiPk7KnDa4w+MRU3FwIq/+/VMMhHa9BFwOMMFBD2h13SOvaD
ccv/WXbuo/BQkDvYFEHx5IJo6/RsJS2QtbjFiJ0G+u/pLw33iuY/sUEMRWmOY7vc
71Ln6t5XXy0fb7M959ysuZhu6Hf2aDE9K3HvqKxrCnKsWS0usB8tHOyAsc3GtCr4
xtGbFUv7oGNvEBcUQP1UmQoPkYOLCkNRqSIpfVU3uNYccw2jjDN84Ny4aV624M/q
rmFjhVPcqNvzBCJ6MG9fylFV/2Tusdi67zzi2vidmESfwX6jKleCwTaTPlUoR4p0
M3jgageubeA3duvqauJzo7VDSauq8k9iU3PnljcH9B6Ks7caJAbLKf3/Z3MYUXcB
XYd2BUWhdDK7O+SbhmzSVjJ+UO/IpBEn5pBueVZCVn/43S8Lj4BIpd4zZFgqpbFe
DVQtP512AGRoAsG/J8O8/voJD90aCSzo3tXJUaAJypRIOCu2zHcVekNXLoWXS9SI
t3QMvXKH5aUmD/NGsEUX8pA5zC2hwFjZ7k/H/S+jsUz0vinmr49slK5ATezRTQqg
L8pbhyN4tAoixSJPG1a3k8FwHEQJycWHMXLKyqVHT5WaCoaCBes=
=+3Rn
-----END PGP SIGNATURE-----

--PKPGh7VFizLZkY0a--
