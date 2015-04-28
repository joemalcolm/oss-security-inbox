X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2608" "Tuesday" "28" "April" "2015" "22:40:28" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150428224028.135546dc@pc1.fritz.box>" "68" "Re: [oss-security] Re: Possible CVE Request: Wordpress 4.1.2 security release" nil nil nil "4" "2015042820:40:28" "[oss-security] Re: Possible CVE Request: Wordpress 4.1.2 security release" (number mark "        hanno@hboeck Apr 28   68/2608  " thread-indent "\"Re: [oss-security] Re: Possible CVE Request: Wordpress 4.1.2 security release\"\n") "<20150428192703.4F86E52E01D@smtpvbsrv1.mitre.org>" ("<20150426112844.GA8340@eldamar.local>" "<20150428192703.4F86E52E01D@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14174 invoked by uid 550); 28 Apr 2015 20:56:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29998 invoked from network); 28 Apr 2015 20:40:13 -0000
Message-ID: <20150428224028.135546dc@pc1.fritz.box>
In-Reply-To: <20150428192703.4F86E52E01D@smtpvbsrv1.mitre.org>
References: <20150426112844.GA8340@eldamar.local>
	<20150428192703.4F86E52E01D@smtpvbsrv1.mitre.org>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-28366-1430253601-0001-2"
Date: Tue, 28 Apr 2015 22:40:28 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Possible CVE Request: Wordpress 4.1.2
 security release
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-28366-1430253601-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 28 Apr 2015 15:27:03 -0400 (EDT)
cve-assign@mitre.org wrote:

> > https://make.wordpress.org/plugins/2015/04/20/fixing-add_query_arg-and-=
remove_query_arg-usage/
>=20
> > Due to a now-fixed ambiguity in the documentation for the
> > add_query_arg() and remove_query_arg() functions, many plugins were
> > using them incorrectly, allowing for potential XSS attack vectors in
> > their code.
>=20
> We feel that this documentation ambiguity isn't necessarily a
> vulnerability in the WordPress product itself. There seems to be
> related documentation of add_query_arg within the
> wp-includes/functions.php file. If the vendor decides to change the
> documentation at
> https://core.trac.wordpress.org/browser/trunk/src/wp-includes/functions.p=
hp
> and wants a CVE ID for that, then we would assign one.

I think the issues here are vulnerabilities in plugins.

Sources:
https://scrutinizer-ci.com/blog/php-security-analysis-finds-xss-vulnerabili=
ty-in-popular-wordpress-plugins
https://yoast.com/coordinated-security-release/
https://blog.sucuri.net/2015/04/security-advisory-xss-vulnerability-affecti=
ng-multiple-wordpress-plugins.html

The sucuri blog post lists a whole number of affected plugins. Maybe at
least the more popular ones (jetpack, wordpress seo, google analytics
by yoast, all in one seo) should get their own CVEs.

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-28366-1430253601-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVP/A8AAoJEKWIAHK7tR5Cq2kP/Rcp30kf0XH0wAdn6UyBN6fs
yOw2vVhqBqmHwpJdQWTqbrgA1jN+NiADdwQOtj/6Od+uCnTI5ystYGlaxvSsUA3Q
FeJoQpz3IOAS9kjxBqi0ZZe/nz7cfoSh27ddPRMO4+ZR1VG7OlZdjKtE95tQvXcn
kx3TQfQIDIsHxX+B1E2guphgkI2BM2QCxaRRcpi18tyBKhP600kXlexst3bwvnTO
5Vv8gS3wSdbtUvCWEDP6jUiyoaCiz3RX1UiT68bqlnynigW1gX6/5PU4wCx2YnPg
SufhS7e4WzlL4tKFAJVD9Pjk3KTJPO9PIYykn+xUwtoJs6qxpPAoe6c/6v7/mzRB
zGfS+Z5VF75JYhbhWN1ZkWUP8dzxPxsTw/r9JucxLHW995zBozHLTABMvCAykUNQ
/nPkfewX0PMs4WeHw7zBKi4wTodr/CDNnGX2UfPWB/WSfYnAfZdJs/gbR6n8U6Ma
OHn9eSFdfUaMRQ/f2mH34D+v72d9Qkphw3/LzVENhMk7mKNSzfVFaWvwKuHX5IFe
/Bv/LDxu74q4HLtCzJREFIZCm0PhysAaI1Yw451t/2ACHp/jensjKQisBErsIRZF
T2dsycRK4kjmMbT9cn+U0CokXkKzaAh39dQrEUa85DjntSCBQDdXD5oYxsSX5SQp
XyJC3I1OktGcYmqb7s/U
=awPz
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-28366-1430253601-0001-2--
