Received: (qmail 28591 invoked by uid 550); 6 Aug 2024 17:24:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6082 invoked from network); 6 Aug 2024 17:03:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1722963810;
	 x=1723050210; bh=e4thON7ifFvkNrunu+OE5GMaRvKNFsf/fZJKoaEUGg0=; b=
	pGF7MobWC4vEXFNCmL3b2znSrbMdxfs31lhzqm3I2sr1EGuceBE44WpMuL7jNkrV
	0oHvXFId3NKVoBUM9iKrKYgoaTX1dXrnA4MOrsgKzmW//zzP/vTr/owPOyGPeVWq
	0pN0s0uxQ5VdAWmNE9WyM8lV+c6o/fSxfvW4jYcPwBTkPPg6NziuuWxFeQHjzWE5
	eHzAAYenI3QLdInmAt0TUXhwMrQzo0+YLyGdlOIOl8xBGz2kg9kByKAEFypZNGQu
	g2InEzW/2ExGrEii/f89jdIFjhIiSc0mmNguOdYQNGKRa3cbyc37qkfitSnDZEzt
	yJLJ7ixRq61Ocbs2GDKAwQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1722963810; x=1723050210; bh=e4thON7ifFvkNrunu+OE5GMaRvKN
	Fsf/fZJKoaEUGg0=; b=XsKtUDuZ8B6J3VX0wPFCowXgi/8KPhmvLz0rFOvqPmD/
	pRZDmIYb1Gi1ndzY3LF28vzoHN0DqwA4bH+e4BOp3MPpaRoHq4LTE3Lx9HZplKhM
	/wFFCuwgu4YXaaXJUnYuXTMPCFur+RAM1liY9dSuvBOMpRuvJYr+r+63TWun4riS
	S26wPOKLeze+NmH5CWbJkW01jnFTfYNd6uxl0n8gq2hsjgAMmhEYajF4tC5nfTyh
	Wy0ds6Y6d04833x6SjDOeHHKKm+PnIPvGEy6yhP3hiHuaeMA6nimMZMVVi/jujWG
	s9issB0ARrFuGOUX7phjsaXsHXJLNT//kci90mR8vg==
X-ME-Sender: <xms:YVeyZnDz7_DIW85WwTF37IYsvcM5rbuwgBdYOjihqGcj54yNEAkNnQ>
    <xme:YVeyZthiF_6nwrMjWiZY0OlLDBaYa3b1bs4tqlrWqzNDe1R5VAwTvaxjEWhSXZ0Cc
    WV2761TWz7cHNc>
X-ME-Received: <xmr:YVeyZil-Q5lnZN8zLDMran8FHu6eC1QGNBtRDPbMQ1DGSNQ-eT8TVbJYdaO8vh5wSrhxedHbkG45kN04r0KXSxHf7MkGshkigGEnvUHnV7XVnaeJ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeekgddutdejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtjeenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    eptdettdeuiedvfeeiudfgjedtuedtleefvdeukeeltddugeejvdeiudekfefhueetnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepuggvmhhise
    hinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomhdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:YVeyZpz5xAXBC0lM5wqSzHOagHIkC6qGIHnvDtFu1mVZOtiXXUfHGg>
    <xmx:YVeyZsQzNA32oUlFHs3dgZ6QIbsxlm_HuEJ0doK-U_IRbhtrudKJ7w>
    <xmx:YVeyZsa-Ure1LEYQ2sXwRD5b2swoXd3kAlsze6yUGzPp2uwu8Cfahw>
    <xmx:YVeyZtSvxmq4wG5uNsp3bJ-GW10Rqxaibd8gWLQljOdYwYfFyNgwxA>
    <xmx:YleyZl7XSIhbDxQBKfxHgXMWqlVE-lljxyfaF3ukGlZauwgQLFlmotfZ>
Feedback-ID: iac594737:Fastmail
Date: Tue, 6 Aug 2024 13:03:26 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZrJXYMYmsla4Q4HY@itl-email>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="w3fdEZ6+VBYLv36C"
Content-Disposition: inline
In-Reply-To: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

--w3fdEZ6+VBYLv36C
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 6 Aug 2024 13:03:26 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

On Tue, Aug 06, 2024 at 05:02:14AM -0400, Neil Horman wrote:
> Neil Horman <nhorman@openssl.org>
> 4:19=E2=80=AFAM (42 minutes ago)
> to openssl-security
>=20
> OpenSSL is currently considering the deprecation of the TLS 1.0/1.1
> protocols.  Currently TLS1.1 and TLS 1.0 are disabled at run time, and
> requires enablement by reducing the ssl security level value.
>=20
> The current proposal under consideration is to explicitly disable TLS
> 1.0/1.1 at build time, in our 4.0 release (tentatively scheduled to relea=
se
> in the next 12-18 months), with an eye to completely remove the impacted
> code in a future major release.  The default configuration could be
> overridden to re-enable TLS 1.0/1.1 at build time.
>=20
> Questions to the community are:
>=20
> 1) Are distributions/users comfortable with this approach in the time fra=
me
> proposed?
>=20
> 2) Would builders of OpenSSL consider using the default configuration (wi=
th
> TLS1.0/1.1 disabled in 4.0), or would they ship with these protocols
> re-enabled in their builds?
>=20
> 3) If the deprecated protocols are re-enabled, what would constitute a
> reasonable warning mechanism to inform users that these protocols are goi=
ng
> away at some point in the future to pressure users to update to a newer,
> more secure protocol?
>=20
> Input on these questions is requested and appreciated

I=E2=80=99m fine with this.  Anyone who needs compatibility with obsolete
protocols should use a dedicated proxy.  I would also be fine with
dropping support for non-AEAD ciphers in TLS 1.2.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--w3fdEZ6+VBYLv36C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmayV2AACgkQsoi1X/+c
IsGaEhAAlIB8OgrzmI5rtxYvTup4HIr0v/HJSyh42GNOa4WWbDLdm5blrulDxTHA
PiEcBBHbs9m+FZXgGkf7M+4U20CRSCPFZjVVdf6id2aDxydK1dkM0MGr9DNIrQHi
3rcjFT1x2UhtDdffUxwsP3E7PytSz/tZL/GJbvVlJ5sJD3tLpdUVaHA2dqjpIRrp
0qJ3yHy70uh3nqL0n09LKritaHn9gXc1MSEhqUCdbV6VlB1CD2PYxGHiTKHQRt3x
Q6wyvU436u+HWq9qQ3PgYaA4vF29RIHty0XsI9vdPCrbppJ0A4MTe/FfBvMAnI/1
RduxEQesN1NyLEgZYAdS1Gxt5tkqFt6t/EPKhN+8ongXr53MUqgDY7NVHkKV3lxF
Z3JR0A3dpQn4+eqswTuXNs66n2lf2iM86jrHgQNHcyi8/o/j99hNy60iNfxTf1TY
INO8O8ey/fhV788oDtQ2Qxm2gedgbFifMWPJ6rQUM15mlKPA168IcoeKo2+kbd2W
k9ZXTo9f2aPHZnCoWxv3iuVp80x0WWA0Bx/KHqMA/IMJpZ+trfGTNM2a21LApIFq
prtmXKM2KRsN0M73UWnpfDBrzuMYWhSpkARxGWmxMr6dxDWvZWmmKdPuTbBumuNm
QpoXkCh1LoMGtm87p01F+M5JJHQ87SMtHI5GoCk818jHToRWU2E=
=kPdZ
-----END PGP SIGNATURE-----

--w3fdEZ6+VBYLv36C--
