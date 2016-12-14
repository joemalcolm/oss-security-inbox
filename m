X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2633" "Wednesday" "14" "December" "2016" "21:05:45" "+0100" "Peter Bex" "peter@more-magic.net" "<20161214200545.GT10921@scully.more-magic.net>" "65" "[oss-security] CVE Request: IrRegular Expressions resource exhaustion in regex compilation [was: Re: [oss-security] CVE Request: resource exhaustion in regex expression handling in WebKit]" nil nil nil "12" "2016121420:05:45" "[oss-security] CVE Request: IrRegular Expressions resource exhaustion in regex compilation [was: Re: [oss-security] CVE Request: resource exhaustion in regex expression handling in WebKit]" (number mark "U       peter@more-m Dec 14   65/2633  " thread-indent "\"[oss-security] CVE Request: IrRegular Expressions resource exhaustion in regex compilation [was: Re: [oss-security] CVE Request: resource exhaustion in regex expression handling in WebKit]\"\n") "<CACn5sdSfj16w6g_-WODTBY20AMFxw50qUJARvhhAByhR0yOrwg@mail.gmail.com>" ("<CACn5sdSfj16w6g_-WODTBY20AMFxw50qUJARvhhAByhR0yOrwg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3564 invoked by uid 550); 14 Dec 2016 20:05:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3538 invoked from network); 14 Dec 2016 20:05:57 -0000
Date: Wed, 14 Dec 2016 21:05:45 +0100
From: Peter Bex <peter@more-magic.net>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20161214200545.GT10921@scully.more-magic.net>
Mail-Followup-To: oss-security@lists.openwall.com, cve-assign@mitre.org
References: <CACn5sdSfj16w6g_-WODTBY20AMFxw50qUJARvhhAByhR0yOrwg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="+mSjbC2tVdWE/Wop"
Content-Disposition: inline
In-Reply-To: <CACn5sdSfj16w6g_-WODTBY20AMFxw50qUJARvhhAByhR0yOrwg@mail.gmail.com>
X-PGP-Key: http://www.more-magic.net/peter-bex.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE Request: IrRegular Expressions resource exhaustion in regex
 compilation [was: Re: [oss-security] CVE Request: resource exhaustion in
 regex expression handling in WebKit]

--+mSjbC2tVdWE/Wop
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 26, 2016 at 03:11:44PM -0300, Gustavo Grieco wrote:
> Hello,
>=20
> Trying to parse and execute this regex code in WebKit:
>=20
> /($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($=
($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($(=
$($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($=
($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($(=
$($($($($($($($($($($($($($($($($($($($($($($(${-2,16}+)+)+)+)+)+)+)+)+)+)+=
)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)=
+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+=
)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)=
+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+=
)+)+)+)+)+)+)+)+)+)+)+)/
>
> will consume large amounts of memory (8GB or more), after a few seconds.
> This seems to be a case of CWE-400 (uncontrolled resource consumption).

Hello all,

Compiling the above regex also causes excessive resource consumption in
the portable Irregex (IrRegular Expressions) Scheme package, which can be
found at http://synthcode.com/scheme/irregex/.

This code is completely unrelated to WebKit's regex implementation, and
a cursory inspection seems to indicate that the underlying cause is
different.  So, it might be worthwhile to inspect other regex engines for
issues similar to this!

All versions prior to 0.9.6 are affected.  The fix is at
https://github.com/ashinn/irregex/commit/a16ffc86eca15fca9e40607d41de3cea9c=
f868f1

This package comes bundled at least with CHICKEN Scheme, Jazz Scheme and
Vicare Scheme, and there are "chez-irregex" and "guile-irregex" packages
available for GuixSD and perhaps other package managers.

Versions of CHICKEN up to and including 4.11.1 are affected.

Cheers,
Peter Bex

--+mSjbC2tVdWE/Wop
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJYUaYZAAoJEBEdufnLRYmwsSkH/RVryrmHAYwM4kIDA3KoSaIe
8di2QsCireZPb5LiCZ6fDR+fDguKbouN+9VyfZkOKtC+998SUs4gU4eJ5Dtrvt9/
2G/UNxEZ6ltQjI+Fo/Hrkrb2wXGsyGXvTj9yiV8TDZkch+7mmYhVzZCKzsZBr/qH
WXieO1hyAc3VkWOrfXJ31Ak0+HcowkPLvCBednPaYsLRwRb4gGbn3l488e5xC4pN
eRAvCchYGUL7r5KEhbuqJvKTEBQzgi+C7UU6DFPLpPxkvZzI5wsFG7DGLp9OTx2b
jP6x4c0hnCuSM7r1kHIbWJWTBbx/stt1MOVbQi/oA3cGULEY2mE/WSPNmKpBZpM=
=KSVT
-----END PGP SIGNATURE-----

--+mSjbC2tVdWE/Wop--
