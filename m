Received: (qmail 24168 invoked by uid 550); 25 Sep 2024 21:19:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8046 invoked from network); 25 Sep 2024 21:12:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm1; t=1727298743;
	 x=1727385143; bh=VvYovlFdIaWfb4YRWD/jPu9bIHV0jYrVpFGJIZlc8HI=; b=
	eQK1RHVfIlS2qBWrXmtfK8QqbTdUHI/+4PeJHlGDK957iY6sBlOxbvBQPGi9+Mti
	wl3ho/LMUcPMVsMH17Ntv3pBkrV6zpWk3uUH7lR/xBicDzqD5Tp3eP96/BQ6GdES
	/Mzv1daTPrkhAsZwmu2QgF4P734WVJrTnF1KYUoUNdjrmYetGNHrVqfI0Idvwn2A
	sNDA743S6MSoETdu7nCe0UhIuTLNOxmuFPf0znLI/Bjd8Z3O9GX+O8MA7CWwLbji
	4Xu6MUwvDpbKvFg40q6z9tLGwvUNgT8zL6xmkuQdcahqR8/dJB+ssyZRrcCmEsrp
	JdXVNbXg/+eP11fVn+mBvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1727298743; x=1727385143; bh=VvYovlFdIaWfb4YRWD/jPu9bIHV0
	jYrVpFGJIZlc8HI=; b=mQFKV32dSsUlkvdsoxjlMEy7KJrNQAIPnv/T/EqCCpmC
	xQd50cZwSBPocvkdscPg2sLg6N9UhABC28VghKrfunnFnmNtcqtEBqGwiEBIeXWc
	93MJzuEZHf6hzmJgs62Mu7UlL9cN5cPAPUSJcB+o7p/7m0rPgM2kESQO6uZdsibc
	JHS3XjpA8O9xHyRrp3BKRSddPnMcRpkBBaM7MAWheeG2FgNn/QtBHk871lYlYk/1
	aCcqx7fA8eVbMqS+Wju0HiZh7r+Wk6sjWgXrtR8sybr1BE9R8sH8RSNnDIzSXqiD
	WwLjegVUtFN5pk3fyq3RR70m01I9FWVovsKDNGd+ew==
X-ME-Sender: <xms:tnz0Zi8t7dA175nDPSC4ADSXYDSVcg1hcBCiy8GChlKY86bj10IP2Q>
    <xme:tnz0ZiuT3rz-ZPYu4SEmFM3EkmpcpsFnVx9DZntF8tlpK8iTRHgFEc9yIlW11B3MP
    9ecSKiCl_Kuv9I>
X-ME-Received: <xmr:tnz0ZoCjAVCMYkwujQocQw-Szg2DdvYh-ALkcnj4kT6OkIj_7zi5xIiB_4xjY0CwK7amfkS34wGk_TgCm5CVDhM9Sr5BxQKC--Nb_DG-GUjOQD7l>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvddthedgudehkecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvf
    fukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgs
    vghnohhurhcuoeguvghmihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqe
    enucggtffrrghtthgvrhhnpeetieelveffkeejueetteehgfduueektdefheeileeufedt
    geeghfekvdegjeeiveenucffohhmrghinheprghprggthhgvrdhorhhgpdgtvhgvrdhorh
    hgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepuggv
    mhhisehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomhdpnhgspghrtghpthhtoh
    epuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepohhsshdqshgvtghurhhithih
    sehlihhsthhsrdhophgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:tnz0ZqcJe4jsPX45TPIdq_svytAPEp81eP47cvzFUeiVYcl2bK1ThA>
    <xmx:tnz0ZnPqRpt7a0rWX5UppoP_Q6beRPM8QDJy2YJEIjUTWHpaARPNMg>
    <xmx:tnz0ZknBvzBoSc2oZGhjlskWzoZXLssU3oqRvKSIc7ACEjSxjzte-Q>
    <xmx:tnz0ZptzNvnRALAvussGcac-mD1BJGt3O5WmwqL_jliOl3brqCiC6g>
    <xmx:t3z0ZpWwj54GwkRh14-Z7K87nxg1aqc87PAdN9gE-9iSqPAWvysT4O0r>
Feedback-ID: iac594737:Fastmail
Date: Wed, 25 Sep 2024 17:11:52 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZvR8tR8v-6gpjLsP@itl-email>
References: <16a2094c-dfa6-a448-b9c7-76ba2dc86f66@apache.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZBD12JotxaZpV9tK"
Content-Disposition: inline
In-Reply-To: <16a2094c-dfa6-a448-b9c7-76ba2dc86f66@apache.org>
Subject: Re: [oss-security] CVE-2024-40761: Apache Answer: Avatar URL leaked
 user email addresses

--ZBD12JotxaZpV9tK
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 25 Sep 2024 17:11:52 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2024-40761: Apache Answer: Avatar URL leaked
 user email addresses

On Wed, Sep 25, 2024 at 06:28:16AM +0000, Enxin Xie wrote:
> Severity: low
>=20
> Affected versions:
>=20
> - Apache Answer through 1.3.5
>=20
> Description:
>=20
> Inadequate Encryption Strength vulnerability in Apache Answer.
>=20
> This issue affects Apache Answer: through 1.3.5.
>=20
> Using the MD5 value of a user's email to access Gravatar is insecure and =
can lead to the leakage of user email. The official recommendation is to us=
e SHA256 instead.
> Users are recommended to upgrade to version 1.4.0, which fixes the issue.
>=20
> Credit:
>=20
> =E5=BC=A0=E5=B2=B3=E7=86=99 (reporter)
>=20
> References:
>=20
> https://answer.incubator.apache.org
> https://www.cve.org/CVERecord?id=3DCVE-2024-40761

What is the specific property of SHA256 required here?  Email addresses
have low entropy and I suspect they can be easily brute-forced, so
leaking the SHA256 has is still bad.  Instead, I would use a seeded PRF
with a seed only known to the server, ensuring that the resulting value
does not leak any information about the email.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--ZBD12JotxaZpV9tK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEopQtqVJW1aeuo9/sszaHOrMp8lMFAmb0fKIACgkQszaHOrMp
8lMU1Q/+LdcyyAQ+TbZaGrBQwdUWAUnJKNEX148T4T4LW8jxbsLqSG8DvW3hsEyg
mULN6d1m08s3NYvcLoiH84XeN1tkkaih+/LKhIfyEhKZklzbFehq7nlIPMQ3kwMl
orz/jzmXYz5hWr3RAp2Gt08Ld/ZIbotrzwjy9trHnllz5oY1cfqswIfFkFNMLM+c
oKqiDdgxEpLbygXevYugZdJrxUdbrtHUBzx7GhYsa28NdhMEnS9uAr5HpOQDil2P
4BLmGTmcis/rqi4PfI8dTi1/qEU0qJ3IaE2prbEjoBP4Z/HS3j8NW50vW8Awd94S
sK5v0CX+06laWvo68shSqBoHM8NpXW1OOPKIrXdFE82Ps81Ddccn2/oO6OxHA0fJ
BVOvJgCPdfCIV02jg9+VgNW5TkJr0s9cCmk0gk7KYgzOC4kzsyAyqbisxaPb/doa
tOtoryJHxPp79kOU2JsQE6M1rxtnNU81yvFspf5OBgw1Bp4UaW6uL5nIyAFxXRO2
hCtyg0jofroiX2lFPX8z6rJZj3PnYGnNrkhCEqpLwRVCC6roKo8ypmJhHJKbkNR5
xpX38IuEBJ63HcbZf3X2njDmNMSy//V6vxWGuJ9E7mfc0fAkA8WOCeE30FcGZaSZ
/Dnuw6F/B6g+I1csNIy1K9WeBgZtxoRbhCyetC64ujhxXhjbMY4=
=FR36
-----END PGP SIGNATURE-----

--ZBD12JotxaZpV9tK--
