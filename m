X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1270" "Monday" "26" "March" "2018" "09:55:05" "+0200" "Yves-Alexis Perez" "corsac@debian.org" "<1522050905.3114.4.camel@debian.org>" "38" "Re: [oss-security] Stack buffer overflow in WolfSSL before 3.13.0" nil nil nil "3" "2018032607:55:05" "[oss-security] Stack buffer overflow in WolfSSL before 3.13.0" (number mark "U       corsac@debia Mar 26   38/1270  " thread-indent "\"Re: [oss-security] Stack buffer overflow in WolfSSL before 3.13.0\"\n") "<20180324234829.01cc3edb@pc1>" ("<20180324234829.01cc3edb@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26139 invoked by uid 550); 26 Mar 2018 07:55:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26114 invoked from network); 26 Mar 2018 07:55:21 -0000
Message-ID: <1522050905.3114.4.camel@debian.org>
From: Yves-Alexis Perez <corsac@debian.org>
To: oss-security@lists.openwall.com, Hanno =?ISO-8859-1?Q?B=F6ck?=
	 <hanno@hboeck.de>
Date: Mon, 26 Mar 2018 09:55:05 +0200
In-Reply-To: <20180324234829.01cc3edb@pc1>
References: <20180324234829.01cc3edb@pc1>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-dtuXm9viAGQt1/EUQFo3"
X-Mailer: Evolution 3.26.5-1+b1 
Mime-Version: 1.0
Subject: Re: [oss-security] Stack buffer overflow in WolfSSL before 3.13.0

--=-dtuXm9viAGQt1/EUQFo3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2018-03-24 at 23:48 +0100, Hanno B=C3=B6ck wrote:
> https://blog.fuzzing-project.org/63-Stack-buffer-overflow-in-WolfSSL-befo=
re-3.13.0.html
>=20
> During some tests of TLS libraries I found a stack buffer overflow
> vulnerability in the WolfSSL library. Finding this one was surprisingly
> simple: I had a wolfssl server that was compiled with address sanitizer
> and ran the SSL Labs test against it.

Hi,

was a CVE requested/assigned for this issue?

Regards,
--=20
Yves-Alexis=

--=-dtuXm9viAGQt1/EUQFo3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEE8vi34Qgfo83x35gF3rYcyPpXRFsFAlq4p1kACgkQ3rYcyPpX
RFv5KggAvhLuP4G0ML3zL/QE+3lD5D7F0VFgnR5sm5uau6knlGYmYqyox65qiRQu
75cfOT/uouKvhT7JBeFxAwZWBrCGqS66gCl6IR4gEec/Ub/7HNIvKMJMiPe+gp33
m6IM0/+NEnL8hE5jMghfBaLm8o8kePPA+/MeKS7oH/GnMW4pcWfZ0kut26RTtCEv
pu3AlSR5389FG/R7Ko1r5h8CT2ck1zBiYebSb0ruwDwUiK8TPjfA4975sS8UB2Il
cPaveX8n5e6zlO0wFEmXvl5BK69PbZHJRag3mPaQP236gru/da8sWxvBi4+FXZ9M
C9HXI3g7mqlKi5l8Yh6kxvJMQxw53A==
=VHhd
-----END PGP SIGNATURE-----

--=-dtuXm9viAGQt1/EUQFo3--
