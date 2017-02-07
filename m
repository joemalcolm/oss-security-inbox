X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1697" "Wednesday" "8" "February" "2017" "10:27:46" "+1030" "Doran Moppert" "dmoppert@redhat.com" "<20170207235746.GA13577@sin.redhat.com>" "44" "Re: [oss-security] CVE request: XXE in Openpyxl" nil nil nil "2" "2017020723:57:46" "[oss-security] CVE request: XXE in Openpyxl" (number mark "U       dmoppert@red Feb  8   44/1697  " thread-indent "\"Re: [oss-security] CVE request: XXE in Openpyxl\"\n") "<20170207104854.331@usenet.piggo.com>" ("<20170207104854.331@usenet.piggo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9492 invoked by uid 550); 7 Feb 2017 23:58:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9463 invoked from network); 7 Feb 2017 23:58:02 -0000
Date: Wed, 8 Feb 2017 10:27:46 +1030
From: Doran Moppert <dmoppert@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20170207235746.GA13577@sin.redhat.com>
References: <20170207104854.331@usenet.piggo.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline
In-Reply-To: <20170207104854.331@usenet.piggo.com>
X-Scanned-By: MIMEDefang 2.74 on 10.5.11.28
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Tue, 07 Feb 2017 23:57:52 +0000 (UTC)
Subject: Re: [oss-security] CVE request: XXE in Openpyxl

--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Feb 07 2017, S=C3=A9bastien Delafond wrote:
> the Debian Security Team would like to request a CVE for an XML XEE
> discovered in Openpyxl by Marcin Ulikowski from F-Secure; Openpyxl
> resolves external entities by default:
>=20
>   https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D854442
>   https://bitbucket.org/openpyxl/openpyxl/commits/3b4905f428e1

This is yet another instance of CVE-2016-9318.  As already observed on
the Debian tracker, disabling entity resolution altogether is probably
going to make openpyxl fail on well-formed Excel documents using
standard entities such as &lt;.

--=20
Doran Moppert
Red Hat Product Security

--a8Wt8u1KmwUX3Y2C
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBCgAGBQJYml75AAoJEGohqWcZR7qpVoYQAKtwkUBiwN5mGMJ/qCr8Banb
5+hhcD3UtKISJ2wz+hB0pQmcMRr1OYhnKMhSN2rA1oqQZWyeI8en8vnOJjrU+VsU
AXP+05vDpDqtAq0qMEVQwRsbL2a+TIm8yFqvCu2I7+uHqz873L5QaootNtf6Ngn+
UhW7RgU5XD4U1OZuToDM0HpRznd6vMsonWNSe7e+59spcPUd11ycMVeNWOcOMxwu
V7QCw2kchhR1ffrX026yKw1jgMPjJxMQc0qvzCdEA+Aaast3TX+NpI1m6JJ7f52Z
kW+ybTHbzRDkdSsQx9RqmSvvJyWBGFTcKo+KjcmQVm60LRLUoYXIv6Yc366nHUav
WRoj/gZKI3S5J6Ski2dXVhgsByBcw1cDXdQHCRHCtnkwlRyAGr3+4SUUSPZ2yIc4
+OuPgDecm2fSg0RoC1efKOtFmj2uJpztezyk/+UyIPpk00+MMlJCBJw4PM/ipXbg
vT2yK0jNjAE0a/R6X9kUTCuCcKozXwDxRYDAjVb8dhiHSkbxWXj12iGiW6VCWi0G
95lrpgWT2zJti8aUzU7/zgzgSIEBJFBKoEGvkmWtlmwEcoCdEdB1fpZ8APTYVfdg
Flzjt9FhH9JWXpzqnSPwUijhrSUIbyihh8ktQqIb84U8bsGSYljnHT+VA4qDNbjV
cyOaGi3hfQOXnCOHMwEI
=hWIM
-----END PGP SIGNATURE-----

--a8Wt8u1KmwUX3Y2C--
