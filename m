Received: (qmail 27739 invoked by uid 550); 14 Sep 2023 14:43:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26333 invoked from network); 14 Sep 2023 14:42:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:cc:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1694702542; x=1694788942; bh=bcwVl8MpHMOKHxiDmVUtly20fiN6iparPui
	BYmWC5wE=; b=xPSDlUn/4yo++sQjAVcxiPKJjS37NOvEIZyOgES10t0yhJDaJJX
	7dGeiBsXiXlGMxGGnnp/MY6zvhmrANsbPUi3wKVyaUiZZZRPPZSq/oeb2JYGHRry
	SeTfOZZT7XyBaXIhpsVdSEOadZ/zcrVpbX6Z+Ohgt3tWSgxKy9WpO9atJCoqi+Mk
	F9+utXxEy4/osUOW8l+czRC6gm5P67JXTz6r08q6o7MCyzA1Eo86zYKjSmvcFMXz
	LsQ12ISn2L47o5XabXGLs2eVWTerrQ5HHdSV5ugohjwJGAVubPm84UM/lw1Pw9sw
	DBCk+2bVFhqK3v+jw7voqUeFN17l4JLP0jQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1694702542; x=1694788942; bh=bcwVl8MpHMOKH
	xiDmVUtly20fiN6iparPuiBYmWC5wE=; b=ZZSesf/xrw5SmMTLAf94ilIQY6zEz
	htdCasIYu3uwkG3PrE4/yLv5hkhkscyxaFQVNE6u1fJo3kQbUxrLfkLxk7ZVblI1
	YtcF/ExSQTAF4pPlAMKAVAWFMqxLgTmDWvizY3Y/KIVnZSDNTws1qf0mUe0edTcB
	/TlrFv7XHv8s0DGEXCz9L9CS/vuZHkjHBqjabLMoyjN/UJ/qij19mRudIc1nkY2D
	Cr7OKkh08wwI8QUmfcJbuptoSg5g8pM5JAOikMPKSyhg+Rkg1Um7nwy5xKVp5jkY
	Px4M7WV7mlUY0NlWqNi7moUqCjTvXZxYu/X+s+1E+YoHaM4XmjkXW9yBA==
X-ME-Sender: <xms:zRsDZc9EQWsOqHm_nYckYzNcA35Te6ZRESE-BSRTRRgvKzFKDijzaw>
    <xme:zRsDZUtiZocO3gTRYNCX3KH02S9CIxAEMNq-HzdLIq0ZxFRxJmcSO39z3GjSALRVq
    0NxIDWt0U00JqE>
X-ME-Received: <xmr:zRsDZSCUa0Eie_6ucVvycaBBbyg80EeP0AVJ8-MuDFErZfqEP1PCKafWai75rrT15sparqeNMhkYY4hd660id7quNnXCwNDdX_ACw18ndUnvwUiK>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudejtddgjeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepffgvmhhi
    ucforghrihgvucfqsggvnhhouhhruceouggvmhhisehinhhvihhsihgslhgvthhhihhngh
    hslhgrsgdrtghomheqnecuggftrfgrthhtvghrnhepjeehteehffelfeevkefgteelieef
    tdefteefieegffegjefftdfhtdefudeuhfeunecuffhomhgrihhnpehilhhluhhmohhsrd
    horhhgpdhsuhhnrdgtohhmpdhkvggsvgdrtghomhdpthhophhitggsohigrdgtohhmnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepuggvmhhise
    hinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomh
X-ME-Proxy: <xmx:zRsDZcc9RhQ1PXdz696JMZLiVUN1HrUQ295JtELEAMO79kW9uyiPpw>
    <xmx:zRsDZRPcIH_PFrYPkSztVyacO_l8n-7FwThUBtuPwn34pfrIwGppdQ>
    <xmx:zRsDZWliIYNojjE6rV2wutrePiVm9l8tXfeJc1wVGt6xlK3RfNV11g>
    <xmx:zhsDZYZz2kQ9REzufEerEEHnw4RUvY4-GElam6b0nnPc5ptDKZjmqw>
Feedback-ID: iac594737:Fastmail
Date: Thu, 14 Sep 2023 10:42:19 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Cc: Dan McDonald <danmcd@mnx.io>
Message-ID: <ZQMbzCxj5XhW5+a5@itl-email>
References: <6EBBC128-36D2-4262-88F4-6889E9E6DE1E@mnx.io>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KrSHeGwp+zvePOr5"
Content-Disposition: inline
In-Reply-To: <6EBBC128-36D2-4262-88F4-6889E9E6DE1E@mnx.io>
Subject: Re: [oss-security] illumos (or at least danmcd) membership in the
 distros list

--KrSHeGwp+zvePOr5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 Sep 2023 10:42:19 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Cc: Dan McDonald <danmcd@mnx.io>
Subject: Re: [oss-security] illumos (or at least danmcd) membership in the
 distros list

On Wed, Sep 13, 2023 at 08:21:22PM +0000, Dan McDonald wrote:
> I'm requesting membership (for danmcd@mnx.io <mailto:danmcd@mnx.io> ) on =
the "distros" mailing list on behalf of illumos ( https://illumos.org ). We=
 would join non-Linux participants such as those from Oracle Solaris, FreeB=
SD, NetBSD, and pkgsrc.
>=20
> illumos was a fork of the old OpenSolaris, established in 2010.  Once Ora=
cle closed OpenSolaris after illumos forked, we became the continuing legac=
y of what was OpenSolaris's OS/Net consolidation.  Like Linux, we have down=
stream distros.  Unlike Linux, illumos is more than what Linux would call, =
"kernel".  I know that Oracle Solaris is already on this list, but we are n=
ot a downstream of them, despite our common ancestry.
>=20
> For now, I would like to add myself:  danmcd@mnx.io.  I will be forwardin=
g under separate cover a copy of this to security@illumos,org, which has pa=
rticipants from distros.  In addition to being a member of the illumos secu=
rity team, I'm also the lead for the SmartOS distro of illumos.  Other dist=
ro leads may request joining here.
>=20
> I will now address the eligibility guildelines:
>=20
> > =E2=80=A2 Be an actively maintained Unix-like operating system distro w=
ith substantial use of Open Source components
> >=20
> >     =E2=80=A2 Have a userbase not limited to your own organization
>=20
> illumos certainly qualifies for these criteria.
>=20
> > =E2=80=A2 Have a publicly verifiable track record, dating back at least=
 1 year and continuing to present day, of fixing security issues (including=
 some that had been handled on (linux-)distros, meaning that membership wou=
ld have been relevant to you) and releasing the fixes within 10 days (and p=
referably much less than that) of the issues being made public (if it takes=
 you ages to fix an issue, your users wouldn't substantially benefit from t=
he additional time, often around 7 days and sometimes up to 14 days, that l=
ist membership could give you)
>=20
>=20
> There are people on this list who know me from one or more of:
>=20
> - Old-days of Solaris inside Sun
>=20
> - OpenSolaris
>=20
> - illumos
>=20
> who can vouch for my record here.  As an example, consider this (migrated=
 from blogs.sun.com) post from 2007:  https://kebe.com/blog/?p=3D413
>=20
> > =E2=80=A2 Not be (only) downstream or a rebuild of another distro (or e=
lse we need convincing additional justification of how the list membership =
would enable you to release fixes sooner, presumably not relying on the ups=
tream distro having released their fixes first?)
>=20
>=20
> Per earlier, because we forked OpenSolaris and Oracle closed it, illumos =
is the most-upstream in this sphere.
>=20
> > =E2=80=A2 Be a participant and preferably an active contributor in rele=
vant public communities (most notably, if you're not watching for issues be=
ing made public on oss-security, which are a superset of those that had bee=
n handled on (linux-)distros, then there's no valid reason for you to be on=
 (linux-)distros)
>=20
>=20
> If you look at the illumos mailing list, I've addressed a few security vu=
lnerabilities there.  E.g. https://illumos.topicbox.com/groups/developer/T1=
3ef186a53edeb5c-M821cc18b5884e04e16daa8fd/cve-2023-31284-buffer-overflow-in=
-dev-net
>=20
> > =E2=80=A2 Accept the list policy (see above)
> > =E2=80=A2 Be able and willing to contribute back (see above), preferabl=
y in specific ways announced in advance (so that you're responsible for a s=
pecific area and so that we know what to expect from which member), and dem=
onstrate actual contributions once you've been a member for a while
> >=20
> >     =E2=80=A2 Be able and willing to handle PGP-encrypted e-mail
>=20
> I will abide by these.
>=20
> > =E2=80=A2 Have someone already on the private list, or at least someone=
 else who has been active on oss-security for years but is not affiliated w=
ith your distro nor your organization, vouch for at least one of the people=
 requesting membership on behalf of your distro (then that one vouched-for =
person will be able to vouch for others on your team, in case you'd like mu=
ltiple people subscribed)
>=20
> Per above, I believe someone on this maling list can vouch for me.
>=20
> Thank you,
> Dan McDonald -- illumos core team, and SmartOS lead
>=20

Would security@illumos.org be a better choice?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--KrSHeGwp+zvePOr5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmUDG8wACgkQsoi1X/+c
IsFLew/+IAZbMEhvKJ/WFRydawfK+wS1yqnA4YA9OfiAIZXs++7wvCtYT3EJMc5o
7y69RC6CXjBtAbpQAXl3a77uU35ex7rkp8Cq7tI+SDRjbIiXLgqzj7RCc/wEdvRE
MzKaVchbqesxu22qK8i6TnhFRvd8JAy9+dmG3pdE6TQ9viQY/Y3XhL/HEIzdX1R8
T8cyz25aLTInRIVzkt/hTM/aLbb3sC2fYWHD/8WLbTQL6O3BRiqkW1s4VYgTy0t5
xow0949t9BsNanDP3IdwdieDfB8NnmQijCJCKPBu9pxCNP9617giOTYznfYqez6x
7TZyDjh5FA9zvFRzqsVCzu1bDh4bkoe7m2Z9s3kVzDYmJLO8WyYjxILNH3hT3L3+
lZGpdFYsCtuLtwV1y4e51Yl1Taqj1wguGMg3mCsnlcKZQYTYYgWJpzTB9vf5RG5o
66OjMQu99Oj7voQ+lCl92Lr0o09KxUbPvfOgJxpttsvxX9J3uAtWwD7M0RYJZRyx
xgq4qQUmQBVQqUq3EDyi6chu4KTA6SKVd7IGFfVisbCO0k4Zs1n4LvancyZ2Lh4r
uzcUxl8MqXOeQkXepo96UBxjX+60dbHmgXTYrdLILKA0EkU26JmdcUPwu/6/sOLQ
kuZQ3S/P2KdQwXTtgFMX+AmPdlsa/7HHoKcRss7aFRWa6c6iOVw=
=/r/R
-----END PGP SIGNATURE-----

--KrSHeGwp+zvePOr5--
