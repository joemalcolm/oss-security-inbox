X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2558" "Wednesday" "17" "June" "2015" "17:21:39" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150617172139.0d9ce97f@pc1>" "65" "Re: [oss-security] Re: CVE Request: jabberd remote information disclosure" nil nil nil "6" "2015061715:21:39" "[oss-security] Re: CVE Request: jabberd remote information disclosure" (number mark "        hanno@hboeck Jun 17   65/2558  " thread-indent "\"Re: [oss-security] Re: CVE Request: jabberd remote information disclosure\"\n") "<20150223211638.C124242E00E@smtpvbsrv1.mitre.org>" ("<762269AD-1536-4CD5-87F9-90B425289707@thijsalkema.de>" "<20150223211638.C124242E00E@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17795 invoked by uid 550); 17 Jun 2015 15:20:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17774 invoked from network); 17 Jun 2015 15:20:57 -0000
Message-ID: <20150617172139.0d9ce97f@pc1>
In-Reply-To: <20150223211638.C124242E00E@smtpvbsrv1.mitre.org>
References: <762269AD-1536-4CD5-87F9-90B425289707@thijsalkema.de>
	<20150223211638.C124242E00E@smtpvbsrv1.mitre.org>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.28; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-1021-1434554446-0001-2"
Date: Wed, 17 Jun 2015 17:21:39 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: jabberd remote information
 disclosure
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--=_zucker.schokokeks.org-1021-1434554446-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, 23 Feb 2015 16:16:38 -0500 (EST)
cve-assign@mitre.org wrote:

> > If the data ends with an unterminated multi-byte UTF8
> > sequence then libidn may copy data past the buffer into the result.
>=20
> > https://github.com/jabberd2/jabberd2/issues/85
>=20
> > the stringprep functions from libidn require the input to be valid
> > UTF8
>=20
> > The libidn documentation claims "This function will not read or
> > write to characters outside that size." about the length of the
> > buffer that needs to be specified, but this is not true,
>=20
> Use CVE-2015-2059 for this libidn out-of-bounds read issue. Possibly
> it could be argued that this is a borderline case for a CVE. However,
> the documentation says "This function will not read or write to
> characters outside that size" rather than "If the input is valid
> UTF-8, then this function will not read or write to characters outside
> that size." If the input is not valid UTF-8, then the function is
> entitled to undefined behavior within the bounds of the buffer.

Old thread, but I thought worth mentioning. This was already found by
Sam Varshavchik in 2013:
http://permalink.gmane.org/gmane.comp.gnu.libidn.general/462

As the CVE is already assigned I don't think this matters too much, but
maybe MITRE wants to reference that.

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-1021-1434554446-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVgZCDAAoJEKWIAHK7tR5CMMMP/2V3Ko1IS1ypCX3zADoH1WTK
QAiwI0qmgZ0N/iSCkeS4qEZqVwY2EC97DcCePH9ZYkahZalL1++iOfKbuqr/Q0Tx
T7xblvl4jUucbQXXAlwRsPLq9bsKMq4EMqZ5+4B4MVVJcgwo4gidCUtfoJZrL/gH
rUYvv3JY8LgJBCT6034pLL668ZYMTkVCGCudHl50FU/zdBJlKITldUx7fnyEPftB
2wJslAj1u0yXDN3rtI31yXXJulz8J442TqFQYp9x+H6YiGlxMRGQOY9sAtpWrMYj
bRip4okXDg+nSaNTe1sMhmWONIuXZmTCfZei7B9qpeCgJw0GaHHL0dyemp2yxrt9
oxY7uh0z1u3N5pvPh456xe04wZCEdO/yDFouM3tnOfE5ondW4CR2wwPk4/dSYdUH
57kpZ/rFlqgtlGkjLsELyH5XzoZnJgBaXBsV8em78YedGapY2HE81OtCaKFprOUq
OhcJhu1IVLarrdX0HOdS00afo+A8P43sVT24yQiZvwc3ABxKRW2vmU6/tTQuPzkS
F3EkWQHOp0Q3qp0plIB7q7NkWJTZFMFrElNA+Zja+bjuBumJXAEMvNyvGEN8fdYD
r0mYm59UhCXJ7anqbbC8TFoN6Zhj+Ko4OuVc4BSY3AWUcfsJuHb4fGEJoseoH4zL
1S9tkhLWjWKoVHZ2RkZK
=vJdl
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-1021-1434554446-0001-2--
