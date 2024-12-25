Received: (qmail 19499 invoked by uid 550); 26 Dec 2024 00:11:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20160 invoked from network); 25 Dec 2024 23:04:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm1; t=1735167878;
	 x=1735254278; bh=8ocg9WnYaWircmx4PzDgegxw3+Ogin65L0XCdsyYSGA=; b=
	C+tz8lP6B5Tkrk9DL/nttbYiRR+JUK90bYodedNv4ggixLzbVgCtrqZHqAZ2YcEd
	zmVQqDJEFnTNiOOY5RVfJ/83BBtGLekvKPRDDf32jSsr0UTCcK+ClPzPLS/T62+m
	OVjFuS7DzVAO7TRIWEVhK+7+QY5Ej3C84BVpIn2VvgvENCOP6AaKawUkwyB69wjl
	UZgs3H3OGkZGlaxS2LrzRdj4BYm3jcV47S1tITegMK1GKqGqAa7P/voRJ4c1DvPF
	XsOXzDeo8IFwtzFA6Kjtw8hBFWJyXCRIMgintxGQA06RVSS46wsIpZ7gcPI4fDTB
	zHNQK+DQzDntLKNRJRh1HA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1735167878; x=1735254278; bh=8ocg9WnYaWircmx4PzDgegxw3+Ogin65L0X
	CdsyYSGA=; b=wbkN2ArvxKwthyV//c8fV72imGPXuQnxqktIexjo5eUiYNsE0AK
	DBGA7oZzp7xJrkeCNzW9reh0OcXiKcNtaiJB9B7phoBqECGPly0PRKIRIkxqR3IY
	wTCB7oKUDFKRLCw+lKOmeXjfi/e699DFQbT+oVhecMW5Lt609Lqh9XqT41yvjaBL
	4U+NoaKFAdeBB0A0SkXxCWNPtx6RvX1gaSm0AUNUOLp1q2RJwDOaTiHTKQC69qM5
	jj9jZP25p07a2T4W3l97PaOSXsKy8LlrgBN9NNqnSYMw/+qWLxBJoGoj5QFUBSSH
	u84dkZNyYJR3dTNk4Sj39k3r7GSk41iUKQw==
X-ME-Sender: <xms:hY9sZ4gRp310tfrxGFsr_e6A7dz6bJspZMel7NfzA7V8V3JiTcpo_Q>
    <xme:hY9sZxDDOPvzanMGuFn_OQwZmySvew_TwPXZPf6ukHZlfVy7oUXUhUONvg7hfuQqy
    xZlHVsqT9C5XFk>
X-ME-Received: <xmr:hY9sZwHGi6DRVFaP50MKK6CMoAOOOaXFG62vAjAeOjt0fxMSdiibtEEtYg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddruddujedgtdeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecu
    hfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihesihhnvhhish
    hisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpeeigfeifedv
    gfejleefieefgfejvddvfeelgeelieefgeffhffgffeffffhueduheenucevlhhushhtvg
    hrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihesihhnvhhishhi
    sghlvghthhhinhhgshhlrggsrdgtohhmpdhnsggprhgtphhtthhopedvpdhmohguvgepsh
    hmthhpohhuthdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhp
    vghnfigrlhhlrdgtohhmpdhrtghpthhtohephigrihhrmhesjhhfrhhoghdrtghomh
X-ME-Proxy: <xmx:hY9sZ5SgN5sev2vBAWlDtgHrMA35oZTiHQIdmGzgQnUcnq3Mf02Xxg>
    <xmx:hY9sZ1wbqK2h6EvbTx6QViNBThNUL2QI6vZUAC-KGO9P5zsZuc6pCQ>
    <xmx:hY9sZ37q3nrmWU2eHakxnRj5ypa0LYqWtHfNREAYHuoRwtFoYugd7A>
    <xmx:hY9sZyydXHpC14mItyQu2pgmA_SHR2uK-069nE8uZuHovG2yg1asDQ>
    <xmx:ho9sZw-4wKARXPT8Kq3wi0i48veB_6Lx3-L0yYqLbE2u367J7AyRxycS>
Feedback-ID: iac594737:Fastmail
Date: Wed, 25 Dec 2024 18:04:22 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com, Yair Mizrahi <yairm@jfrog.com>
Message-ID: <Z2yPhPjJ0MEBl6Uh@itl-email>
References: <CALXx8ZniT0BHhhVgqZK4z+gsRUuOJGSZJRzFbjfA2BQUdRPmew@mail.gmail.com>
 <20241225181321.GA12547@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Wgi8BEB4pVIwiynY"
Content-Disposition: inline
In-Reply-To: <20241225181321.GA12547@openwall.com>
Subject: Re: [oss-security] CVE-2024-40896 Analysis: libxml2 XXE due to type
 confusion

--Wgi8BEB4pVIwiynY
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 25 Dec 2024 18:04:22 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com, Yair Mizrahi <yairm@jfrog.com>
Subject: Re: [oss-security] CVE-2024-40896 Analysis: libxml2 XXE due to type
 confusion

On Wed, Dec 25, 2024 at 07:13:21PM +0100, Solar Designer wrote:
> Hi,
>=20
> Thank you for bringing this in here.
>=20
> On Wed, Dec 25, 2024 at 11:52:06AM +0200, Yair Mizrahi wrote:
> > libxml2, CVE-2024-40896, was published recently and given a "Critical"
> > (9.1) severity by CISA. Interestingly - This vulnerability is a regress=
ion
> > of an issue that was identified over a decade ago - CVE-2012-0037, which
> > was given a "Medium" (6.5) severity.
> >=20
> > Is the massive increase in CVSS over the exact same issue justified? We
> > believe that it's inflated.
>=20
> I think both CVSS vectors are "buggy", and CVSS is quite poor at scoring
> library code vulnerabilities.
>=20
> CVE-2012-0037  NIST NVD CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:N/A:N
> CVE-2024-40896 CISA-ADP CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:H/A:H
>=20
> The differences are whether user interaction is required or not (can't
> know that for library code, so have to assume either best or worst case)
> and what impact there is (again can't know it for library code, but
> these two test vectors somehow assume different impacts).  Given how
> poor CVSS base score is for scoring library code in general, I'm afraid
> this issue would more "reasonably" (per CVSS spec) be scored 10.0 as
> AV:N/AC:L/PR:N/UI:N/S:C/C:H/I:H/A:H, because such exposed usage of the
> library is realistic, SSRF would be a change of scope (right?), and the
> worst impacts of all 3 kinds are quite possible.

If SSRF is a scope change, shouldn't that mean that RCE is also a scope
change?  It's usable for SSRF after all.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--Wgi8BEB4pVIwiynY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEopQtqVJW1aeuo9/sszaHOrMp8lMFAmdsj38ACgkQszaHOrMp
8lPd/w/+L5wwY1rUc8ODFCFGXgh0Juhp86zvOw9L7C5aLc1dJpqPxdVVa/MdFxDl
5gSDwTH0mDDMHpZbIJTPC/J5TXLoxT1Zv+xBPvYGBz+M4qVIctD1xJTU1tbYwbjr
ug/VeYujbieUc6/6VsVUNBdksteiDrZHMY2lUziKpu/eAwkVSAuc+GW/iWV0ioam
9mopE3U69ZhNAeWn+cD4wad4rEcjhS7H7aO9a0s/oacnDaObqlI14TaP0jjloLhv
cQQYYEYClMPE+/TTNuMNo2Uo9THa8MxemPphZgbF9AS/W5vyrA8G85z/5H3IXLZs
CEI9t+dOxlUdWhTiOEPL1YLX5ANdPDsWNIJK3RJm9tlz/8t44jh8BzPYS9Nheeg9
+lgN3o6BougvNXvB3vMlpWhw7TTlM39IIkx+448dpkUiBwVWls8dbIVkzCmGmNtZ
WXkTBdwCMBXB8RAz66M6jwOTBu7Ju1rmO+n5IlBonpVIiea683qsyoNH+YIn5HwS
jQ+azKpfaUeUsqQNavJ3pQvKrqsJeuR66/9CQjgFSfWcFTUdmQGWzxCminWxTUFc
nW0lQ9ciAN3BRyEyC6Aa0dd14UcITyIWeYhfdFXc092qIy3OWsZULIXn1DHNPAhT
KBxxBJkNj9P32XSsVoKeUSOd8LHNjRbSWlYrL5Tyq767HQF8DoQ=
=84+n
-----END PGP SIGNATURE-----

--Wgi8BEB4pVIwiynY--
