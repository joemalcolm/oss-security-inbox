X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4203" "Wednesday" "30" "September" "2020" "19:42:34" "+0000" "Seth Arnold" "seth.arnold@canonical.com" "<20200930194234.GA3059991@millbarge>" "134" "[oss-security] [cve-request@mitre.org: Re: [scr966354] oniguruma regular expression library - fixed in devel version cbe9f8bd9cfc6c3c87a60fbae58fa1a85db59df0]" nil nil nil "9" "2020093019:42:34" "[oss-security] [cve-request@mitre.org: Re: [scr966354] oniguruma regular expression library - fixed in devel version cbe9f8bd9cfc6c3c87a60fbae58fa1a85db59df0]" (number mark "U       seth.arnold@ Sep 30  134/4203  " thread-indent "\"[oss-security] [cve-request@mitre.org: Re: [scr966354] oniguruma regular expression library - fixed in devel version cbe9f8bd9cfc6c3c87a60fbae58fa1a85db59df0]\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [cve-request@mitre.org: Re: [scr966354] oniguruma regular expression library - fixed in devel version cbe9f8bd9cfc6c3c87a60fbae58fa1a85db59df0]" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20101 invoked by uid 550); 30 Sep 2020 19:42:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20083 invoked from network); 30 Sep 2020 19:42:48 -0000
Date: Wed, 30 Sep 2020 19:42:34 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20200930194234.GA3059991@millbarge>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rwEMma7ioTxnRzrJ"
Content-Disposition: inline
Subject: [oss-security] [cve-request@mitre.org: Re: [scr966354] oniguruma regular expression
 library - fixed in devel version cbe9f8bd9cfc6c3c87a60fbae58fa1a85db59df0]

--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello, Eduardo Barretto discovered a one-byte buffer overflow in the
oniguruma regular expression library while doing a coverity scan. It
appears to be part of compiling a regular expression, and I'm not sure if
the overflow is actually reachable from untrusted inputs.

To be on the safe side we've allocated a CVE number for this overflow.

Thanks

----- Forwarded message from cve-request@mitre.org -----

Date: Wed, 30 Sep 2020 08:40:12 -0400 (EDT)
From: cve-request@mitre.org
To: security@ubuntu.com
Cc: cve-request@mitre.org
Subject: Re: [scr966354] oniguruma regular expression library - fixed in de=
vel version
	cbe9f8bd9cfc6c3c87a60fbae58fa1a85db59df0
Message-Id: <20200930124012.C2BC39295BB@smtprhmv1.mitre.org>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [Suggested description]
> In Oniguruma 6.9.5_rev1,
> an attacker able to supply a regular expression for compilation may be ab=
le to overflow a buffer by one byte
> in concat_opt_exact_str in src/regcomp.c.
>=20
> ------------------------------------------
>=20
> [Additional Information]
> We haven't confirmed that this is reachable by an untrusted actor, nor th=
at it has real-world consequences. Thanks.
>=20
> ------------------------------------------
>=20
> [Vulnerability Type]
> Buffer Overflow
>=20
> ------------------------------------------
>=20
> [Vendor of Product]
> oniguruma regular expression library
>=20
> ------------------------------------------
>=20
> [Affected Product Code Base]
> oniguruma regular expression library - fixed in devel version cbe9f8bd9cf=
c6c3c87a60fbae58fa1a85db59df0
>=20
> ------------------------------------------
>=20
> [Affected Component]
> concat_opt_exact_str() function in  src/regcomp.c
>=20
> ------------------------------------------
>=20
> [Attack Type]
> Context-dependent
>=20
> ------------------------------------------
>=20
> [Attack Vectors]
> An attacker able to supply a regular expression for compilation may be ab=
le to overflow a buffer by one byte.
>=20
> ------------------------------------------
>=20
> [Reference]
> https://github.com/kkos/oniguruma/issues/207
> https://github.com/kkos/oniguruma/commit/cbe9f8bd9cfc6c3c87a60fbae58fa1a8=
5db59df0
>=20
> ------------------------------------------
>=20
> [Has vendor confirmed or acknowledged the vulnerability?]
> true
>=20
> ------------------------------------------
>=20
> [Discoverer]
> Eduardo Barretto

Use CVE-2020-26159.


- --=20
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJfdHx6AAoJEPNX0OmQPkAI2KUQAKv3Lkv3qK7Eo6piCpicU6Ut
hBVcB4JB5H8T1Cp1M6fX2X09OwJW/CBBlz/KuQbLmq2ty8uS6dPwEQ9GJMO62CLr
oPdezDnBxhqlvz1iqPfR0UYbvSIKToDP1sZOxRrV+FmlesV5vddEv68jQk1r16Bk
TI3Q73F3NreuaNrs4rHBJ22H8nHGHo/IYOHaPQPdMRGjtSifC+kn0Cootwce6hEG
sKAwVZJgDMPnwIh/BQ4mDSSA+haWfwtj+mRBomjFUrKSsWZTy3UqvapKzmhPrZ2h
WHgT2ZE9jj2I/neyChguwLiGpwrjdLRiv+9Xy6qcwKRMaHDYwhfv/7BNgVweVB/i
cZaFwCzlFRsGmQIilqPzpQ8R41CVjmj/faXDIcfmfQfz+DU0p2MNw7+pDkbrDPsw
NJQbaP6HUteKlfdsmKqSc9dT4vJiA9Hwow+dkZQaDZdclet/AUGMPAzzUONTyrvW
Vg1YYEtbLcJmqDG+65ANT38nuFXmfyNBJzQvZ3ut0pRwm/fo9FU+8YR7k+ER3Js8
iwIE+rGhiqGNVi88GKinJCLbP/ojKW2vLWRi3VFCdYqdebuyGp2dUruIrRO91NP6
ntC4Ci6Jq4v3HBkLoIPP0W9A5kQDngIxYjs0NpjyzHQRCIeUb5qoJxT0baMg1Rsi
eDui/It7tMfjjDk4/+J1
=3Do0hc
-----END PGP SIGNATURE-----


----- End forwarded message -----

--rwEMma7ioTxnRzrJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAl9036YACgkQ8yFyWZ2N
LpdiGwgAnz1X5HpIyZ/8XwD+/pd2G6cl5ETu1k8yEHX6fmTp+D/BoeNT0hpoSXM3
fVdM4G8QI0t/P1xKT+E+J+Q3A8XARlaRTpBKSVjkxqOIibZGJAH1k4uAicQhTb6f
d55crYJuZfhNZHiIsNEjteymAICXhoyPC+WyTw9kjrLDf/uU1u7Lf18JScNq+WLJ
3c6tSURL1L+NWGrvCGl2XhDAAEinV2r37NBf+ijAZuWKJNMXGNrcBGq6Fwb6yhqu
tQzO3ccykh218kcnquT60AuKt3tgkDJqGW5T7eGRbjpJlenmniYRO6jVn8nqhmc0
j+GL5xncukhk+uQjEnie1EOAnvBajQ==
=4K/A
-----END PGP SIGNATURE-----

--rwEMma7ioTxnRzrJ--
