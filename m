X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["928" "Wednesday" "25" "November" "2015" "12:04:06" "+0100" "Fabian Keil" "freebsd-listen@fabiankeil.de" "<20151125120406.1a8af6bd@fabiankeil.de>" "36" "Re: [oss-security] Heap Overflow in PCRE" "^Date:" nil nil "11" "2015112511:04:06" "[oss-security] Heap Overflow in PCRE" (number mark "        freebsd-list Nov 25   36/928   " thread-indent "\"Re: [oss-security] Heap Overflow in PCRE\"\n") "<20151124130038.00866a2c@pc1>" ("<20151124113343.4382bed3@pc1>" "<20151124125709.0448ee5c@fabiankeil.de>" "<20151124130038.00866a2c@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29778 invoked by uid 550); 25 Nov 2015 11:04:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29741 invoked from network); 25 Nov 2015 11:04:24 -0000
Message-ID: <20151125120406.1a8af6bd@fabiankeil.de>
In-Reply-To: <20151124130038.00866a2c@pc1>
References: <20151124113343.4382bed3@pc1>
	<20151124125709.0448ee5c@fabiankeil.de>
	<20151124130038.00866a2c@pc1>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 boundary="Sig_/_Vy+cjz=tiwTHGp6ynJi=eg"; protocol="application/pgp-signature"
X-Df-Sender: Nzc1MDY3
Date: Wed, 25 Nov 2015 12:04:06 +0100
From: Fabian Keil <freebsd-listen@fabiankeil.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Heap Overflow in PCRE
To: oss-security@lists.openwall.com

--Sig_/_Vy+cjz=tiwTHGp6ynJi=eg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hanno B=C3=B6ck <hanno@hboeck.de> wrote:

> On Tue, 24 Nov 2015 12:57:09 +0100
> Fabian Keil <freebsd-listen@fabiankeil.de> wrote:
>=20
> > The last sentence seems overly broad to me as many (most?)
> > applications use trusted PCRE patterns (that get parsed and executed)
> > to parse untrusted input.
> >=20
> > For this use case the issues above don't seem to require immediate
> > action.=20=20
>=20
> True.
> I changed the wording to better reflect that.

Thanks.

Fabian

--Sig_/_Vy+cjz=tiwTHGp6ynJi=eg
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlZVlacACgkQBYqIVf93VJ3iTwCggZkHYIsUMOWpwk5ShVCOr4/9
mG8An2AiMN5ItW8llnI7RjGHSN/5FnAC
=bAEB
-----END PGP SIGNATURE-----

--Sig_/_Vy+cjz=tiwTHGp6ynJi=eg--
