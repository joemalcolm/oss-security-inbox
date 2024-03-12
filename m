Received: (qmail 28133 invoked by uid 550); 12 Mar 2024 11:39:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5223 invoked from network); 12 Mar 2024 04:24:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm1; t=1710217734;
	 x=1710304134; bh=MtCpduV9NBjMdq2Dajzdy+1pHQENkuOOONrNb5XfFHo=; b=
	MInXpIpAqCwo9+PpCMtvmLEDbcr2ZwZYvD+izHYciDw54BEB9P16oLmfe+yFzUic
	KZpuWuCOXNV/QzoOlVXTGTo17KMzd6zdhIFwHlkCYeyOT8UMg1xZk0ORlkdprdgr
	tuwOiwpzao6AbFJfxu8E+cuIutpuhkL8Usga6WDCOY2CjboAy6cmE1IV+IvM/PyY
	fTsjhRxlxXH4K4N072DwsTzpipmVdneRWQM9uon3Vhf0mUlHP8slHTVE6Lw6wdcr
	jOSHq4b11y2hXD9BvMrtKE9besupS0MqokejSGOo/pwTaouwg3wsq96SofNspHhY
	NNXM5V6zODG2Gq1OACP50Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1710217734; x=1710304134; bh=MtCpduV9NBjMdq2Dajzdy+1pHQEN
	kuOOONrNb5XfFHo=; b=nyscNMjZknfmzC6QtUZtiBfhDVMCm96GyKRyvFRaZC7s
	F0ivEAa3mL6xC+1tfeJtBnDUPMrzk8Ohj/LkfNpDOWDtcpi5RwshV+UKtfcNH30h
	Hvys7pSyrN1iNamgzLo0TrjfYnW2XJYnV6T3CfVGpYCGzFpfZ4qTlqXfar/0ZwOD
	DSKGBvviumy+I0ESdcrFBGMEoIY7LCf1dcz/ctrhM41klIuv2N3jvWNKOJ99UHB1
	AEyCu/SRuWPwKfUPGmzdGvyAK5sESri4wQPEbhB+m02OnjAhH2CG+qeF187/PTJ3
	d30ILb22pY19y/xtRYH7oFext6jFSqPmqh7UK8rBDA==
X-ME-Sender: <xms:BdrvZQdHTERuNiKeh31r2yGEtSnzlB_yW-DLa1vA0X_Q9pNtvLnrqQ>
    <xme:BdrvZSOktHDEIjs8VoPpdQ6ppSJmO9QQNjhs-t_zW-LZ-fJYdvG86mFHzHPfTf9-t
    zESEBZWWjk1yP4>
X-ME-Received: <xmr:BdrvZRitBeotGtUmXaHwFDNdFUGAgI4Lts-bEE7wodgmhDHjnvq-xg1RNDjNqarp6LjNOdZBR1HVi8FytwSsMAlW892CcYDxswV6enb6129QDyzX>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrjedvgdejfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderre
    dttdejnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihes
    ihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpe
    fggeelvdfhgefhjeegveffteegudffhfeltdejhfeukedviefgledttdejteeludenucff
    ohhmrghinheptggrsghfohhruhhmrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepuggvmhhisehinhhvihhsihgslhgvthhhihhnghhs
    lhgrsgdrtghomh
X-ME-Proxy: <xmx:BdrvZV-v8WRUGI_uRaPhOgfCwqx02xTREp0B4T2alLj2tPdlX6h7TA>
    <xmx:BdrvZcvJTmjVlYxP5uCsEaGpihDrUGgYVB2SgJUl9zGz8XHvQquQoA>
    <xmx:BdrvZcHp4sTdw0ZKGquZdEwKlD026vz16fPOPMbyNfyS9MO_l5mDug>
    <xmx:BdrvZbN-KgEL6S9CSXaaNAeROIZ3x2LpGKvpNlHufOPhcPQ7WJatlQ>
    <xmx:BtrvZZWnJZQ-BgsJBU7XVRxEzYq_MYEwSM07xt2SRv5AfkfSnADPkQ>
Feedback-ID: iac594737:Fastmail
Date: Tue, 12 Mar 2024 00:28:49 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <Ze_aAzVya8RMGDDZ@itl-email>
References: <gb6h5yblly7xer6jg6sgn7syzrze3jviotrmfsp3ifgy6rg2jr@igvcqdasmnof>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bh6wai0/4TrgZNp/"
Content-Disposition: inline
In-Reply-To: <gb6h5yblly7xer6jg6sgn7syzrze3jviotrmfsp3ifgy6rg2jr@igvcqdasmnof>
Subject: Re: [oss-security] Certificate policy: OCSP becomes optional and
 CRLs mandatory for public CAs on Friday

--bh6wai0/4TrgZNp/
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Mar 2024 00:28:49 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Certificate policy: OCSP becomes optional and
 CRLs mandatory for public CAs on Friday

On Tue, Mar 12, 2024 at 05:33:46AM +0900, Valtteri Vuorikoski wrote:
> This is more of a meta-security issue, but posting it since I expect
> that this change will affect development priorities of
> certificate and TLS-related OSS projects to some degree.
>=20
> Last July, the CA/Browser Forum approved ballot SC-063
> <https://cabforum.org/2023/07/14/ballot-sc-063-v4-make-ocsp-optional-requ=
ire-crls-and-incentivize-automation/>.
> The central changes to existing policy are:
>=20
>   * Makes providing OCSP services optional for CA/B-approved CAs,
>   i.e. those which ship in most browser and OS trust stores.
>=20
>   * Requires CAs to provide CRLs that are updated in a timely manner.
>=20
>   * (New policies related to short-lived certificates, not discussed
>   further in this post.)
>=20
> The first two changes come into effect on 2024-03-15 which is this
> Friday. CAs that provide OCSP services are free to continue doing so
> under prior guidelines.
>=20
> The proposal provides the following rationale for these changes (slightly
> edited for brevity):
>=20
>   OCSP requests reveal details of individuals=E2=80=99 browsing history t=
o the
>   operator of the OCSP responder. These can be exposed accidentally
>   (e.g., via data breach of logs) or intentionally (e.g., via
>   subpoena). Due to privacy concerns, several certificate consumer
>   products represented in the CA/Browser Forum do not perform online
>   OCSP checks by default - or have signaled interest in transitioning to
>   privacy-preserving methods of communicating revocation status. [=E2=80=
=A6]
>   Concern surrounding OCSP is further elevated considering the
>   disproportionately high cost of offering these services reliably at
>   the global scale of the Web PKI.
>=20
>   Given this ballot makes operating OCSP services optional
>   for CAs, allow relying party software applications and certificate
>   consumer user agents to consistently and reliably evaluate certificate
>   revocation status using a privacy-preserving check [using CRLs].
>=20
> Personal opinion: It seems unlikely that most CAs will stop offering
> OCSP now or even in the short-to-medium term. However OCSP support
> (including OCSP stapling support) in open-source software has overall
> been limited outside of HTTPS-related projects with a lot of developer
> resources, and I suppose could have even less resources dedicated to
> it in the future as a result of this change. Meanwhile some projects
> may need to implement updates to handle large and relatively
> rapidly-updating CRLs efficiently. In addition, I guess that OS level
> mechanisms similar to root certificate stores may be needed to
> centralize CRL updates; having each application pull down potentially
> large CRL updates once a week seems inefficient.

macOS, iOS, Windows, and possibly Android have system certificate
verifiers that can handle this easily.  For desktop and server Linux,
should a CRLite package be included in system package managers?  Would
it be feasible for WebPKI and {Open,Boring,Libre}SSL to handle CRLite,
or does this mean that NSS should be used for certificate verification?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--bh6wai0/4TrgZNp/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmXv2gMACgkQsoi1X/+c
IsG6cxAA02O9fKEvuM58oiDcD/eJ9QbR49D6jPDftYSUmJxgGE+CmvDowM+fa7cO
k1rSVYdQoauzglv1l7P9BdlJiw2qN4wuv2Nmsqf6rkSkJu+xCIAww+6b3NrDzwFr
x/1Ct1g/H1+wawcFvDjrpCsIGOIfTtoBmLCwvS5FWJ2QbvDLikIlVeis0C8dgaIC
3Lz9fodT547cJISqdXp+4yC5IY2fy63ri2Ws9SqhG7maTnV6vbJ/TLsUDHpU65gb
Ne6m8Xb2sPT/vhOB81B5+EcNq+Vka17HPTXeaNbxNZLl1oBdS30CAZ0JZucbaSsz
awsBOsD5X20WZdBZscDPeATInZyViJ5/7x951ZrTa8heNS0wKGU1sBZRVVJtDiym
T0W+F/HWK1k3qXzUwbknubWNqk5Ob4LY1GxjxbKxRGsL3+aksjW4cf22C3HFz454
kQvme/TgtchAJ+x2/+vj+6q0NXRaj5vKGQvcRWxItCOO8Ui2NzOkCB9SqxVS9DoR
JRtCDRnBRQy9FXcxBienhYeSUFapdgTYMx65BnlS88DKWKFlUExNr9FeeXziabFH
/n/O3/spyHT87VakUGtZiTVBVBzMugmgWKLpKDHV+9Pf4sVlHuFWV7sJ+Y5jgejs
uazz9CP/CCV0rEz32vnU/3wlHhPw10K5r95DoU9fFE2H17Q2p0g=
=1KG6
-----END PGP SIGNATURE-----

--bh6wai0/4TrgZNp/--
