X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2031" "Friday" "3" "November" "2017" "02:56:47" "+0300" "Dmitry V. Levin" "ldv@altlinux.org" "<20171102235647.GA22038@altlinux.org>" "62" "Re: [oss-security] tftpd-hpa - insecure chroot()" nil nil nil "11" "2017110223:56:47" "[oss-security] tftpd-hpa - insecure chroot()" (number mark "U       ldv@altlinux Nov  3   62/2031  " thread-indent "\"Re: [oss-security] tftpd-hpa - insecure chroot()\"\n") "<20171102121654.GA5905@gremlin.ru>" ("<20171102121654.GA5905@gremlin.ru>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20342 invoked by uid 550); 3 Nov 2017 10:22:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27835 invoked from network); 2 Nov 2017 23:56:58 -0000
Date: Fri, 3 Nov 2017 02:56:47 +0300
From: "Dmitry V. Levin" <ldv@altlinux.org>
To: oss-security@lists.openwall.com
Message-ID: <20171102235647.GA22038@altlinux.org>
References: <20171102121654.GA5905@gremlin.ru>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IS0zKkzwUGydFO0o"
Content-Disposition: inline
In-Reply-To: <20171102121654.GA5905@gremlin.ru>
Subject: Re: [oss-security] tftpd-hpa - insecure chroot()

--IS0zKkzwUGydFO0o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 02, 2017 at 03:16:55PM +0300, gremlin@gremlin.ru wrote:
> Just look at this code and guess how it would be compiled on most
> systems:
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>     /* Chroot and drop privileges */
>     if (secure) {
>         if (chroot(".")) {
>             syslog(LOG_ERR, "chroot: %m");
>             exit(EX_OSERR);
>         }
> #ifdef __CYGWIN__
>         chdir("/");             /* Cygwin chroot() bug workaround */
> #endif
>     }
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> :-)

Sorry, why do you think that

	chdir(dir) =3D=3D 0 && chroot(".") =3D=3D 0

is any worse than

	chroot(dir) =3D=3D 0 && chdir("/") =3D=3D 0

assuming that you have control over your signal handlers and can ensure
they won't issue any chdir or chroot calls between these two calls?


--=20
ldv

--IS0zKkzwUGydFO0o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJZ+7C/AAoJEAVFT+BVnCUIBlUP/2YrhPZWT6CZLwSWwNzExwc7
pqPO4De2n1B4+RFsWh6LqRLSMzSXgIi088ut78Zt5VVYpqv0+B4gDIy8BPulWX1x
Shfo01NgpmuhjK+PBEq+tzjyIlldwRdRzDuq5kxC0ocLXtJYyr5XAdtulJf3Apn9
g7IunZzyou636rVC3yIHmXD/L6NBRxm+nBmRPDbdTI0BwSTt4TlmsLi1rXSMhX+m
hzvyar+k9qU3bWwEGRTy8NPyH6Ir1HnuK/twvg0lt6KgRUBXSoAFx0oQfURX8ZPT
MgEpRoT6l4HqO6MksYaExspfaQrLPrOmUu5unfMT8R2J8bPJN/UjkO5YLSMpS1P0
ZWjbynlgfuK7H2unr24f6A0Nnnl6Y02IaIixTYGHCvDqHODpPYL87JKqLwBgsAoj
NPjXn3AcXxIJbkoVGECLwtgrevjdPidpxRF5F/gLKcLE9qFRx+SjtUwHijGlKCD8
rx+JyY8HOd44HRI7hhzKPTCa1iih/lz7B7aPeKMBzSsRgbjA/liXOHl1LoSlw3hH
73R1lSFN94LUPeOmWxhL4LCX37H7U5NKeAXdg4gfQREGqY8AXwmHFY5Y7KoAgm4f
ZVvygpaEbVQcyMEkFBypkKKAlQYs5Zv6vLGwdkLHRJtoFjiGz1KNye8HyX2GET+d
SeFHre7SpmAGH0MOB7sa
=Tw7t
-----END PGP SIGNATURE-----

--IS0zKkzwUGydFO0o--
