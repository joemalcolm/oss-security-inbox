X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1602" "Wednesday" "20" "May" "2015" "22:02:39" "+0200" "Yves-Alexis Perez" "corsac@debian.org" "<1432152159.5007.10.camel@debian.org>" "40" "Re: [oss-security] CVE-2015-4000 - TLS does not properly convey server's ciphersuite choice" nil nil nil "5" "2015052020:02:39" "[oss-security] CVE-2015-4000 - TLS does not properly convey server's ciphersuite choice" (number mark "        corsac@debia May 20   40/1602  " thread-indent "\"Re: [oss-security] CVE-2015-4000 - TLS does not properly convey server's ciphersuite choice\"\n") "<20150520182939.388A76C0029@smtpvmsrv1.mitre.org>" ("<20150520182939.388A76C0029@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21881 invoked by uid 550); 20 May 2015 20:03:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21860 invoked from network); 20 May 2015 20:03:03 -0000
Message-ID: <1432152159.5007.10.camel@debian.org>
In-Reply-To: <20150520182939.388A76C0029@smtpvmsrv1.mitre.org>
References: <20150520182939.388A76C0029@smtpvmsrv1.mitre.org>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-127TrEmkfNL5ACBoc2Oa"
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: cve-assign@mitre.org
Date: Wed, 20 May 2015 22:02:39 +0200
From: Yves-Alexis Perez <corsac@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-4000 - TLS does not properly convey
 server's ciphersuite choice
To: oss-security@lists.openwall.com

--=-127TrEmkfNL5ACBoc2Oa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On mer., 2015-05-20 at 14:29 -0400, cve-assign@mitre.org wrote:
> 1. Use of a common group obtained from a third party was not a
> choice that would have been anticipated to be unreasonable.
>=20
> 2. Avoiding use of a common group is not really equivalent to
> correcting a software mistake; it could typically involve improving a
> software product by adding new functionality or documentation, such as
> adding a call to "openssl dhparam" at installation time.
>=20
> 3. Existence of a common group across different customers' deployments
> of a product is not independently exploitable; there is no attack that
> depends exclusively on knowing the group used by a victim.

In some cases (IKEv2 for example), using different parameters is not
possible (or really unpractical): standards groups are defined in
RFC3526.
--=20
Yves-Alexis

--=-127TrEmkfNL5ACBoc2Oa
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJVXOhgAAoJEG3bU/KmdcClGeMH/jwwTIX2FBEtIaB8xsOR568G
UJYxQGLBLdR95Qo6l9qt5XNkFkt75ka+lZHlYlgi4VjtGFWo8OCbE6s5YKafpmU2
GiC8tK51Jd4ARmsgE2mxQHteLTvkQnxlBV+E223HkhoN+Gywvf56eO9Gb7DlYGW8
hVmSDLr4JCfcQoHJK8ZzaULY2pkTsqbOvSR+UWoQrkuBlps0E3PrkN2GCT27I+HL
KACDoyZjy+DkNZZ/KAB0mWBQvZRBlFTj7nWZZ08eV+aRp7K9opG0BfCv+ImDyyc/
ayQ9au8auamH3+kXVYIVPedGFCzYMpu3Kf8hEbOeOuRvy72Ay/kGiuNAqFpinqc=
=mhqs
-----END PGP SIGNATURE-----

--=-127TrEmkfNL5ACBoc2Oa--
