X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1923" "Thursday" "17" "October" "2019" "23:06:38" "+0200" "=?utf-8?B?THVkb3ZpYyBDb3VydMOocw==?=" "ludo@gnu.org" "<87d0evjd41.fsf@gnu.org>" "53" "[oss-security] CVE-2019-18192: Insecure permissions on Guix profile directory" nil nil nil "10" "2019101721:06:38" "[oss-security] CVE-2019-18192: Insecure permissions on Guix profile directory" (number mark "U       ludo@gnu.org Oct 17   53/1923  " thread-indent "\"[oss-security] CVE-2019-18192: Insecure permissions on Guix profile directory\"\n") "<e758e2d9-3c1f-c006-4ad2-f0f38ec7e669@orlitzky.com>" ("<e758e2d9-3c1f-c006-4ad2-f0f38ec7e669@orlitzky.com>") nil nil nil nil nil nil nil "[oss-security] CVE-2019-18192: Insecure permissions on Guix profile directory" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25699 invoked by uid 550); 17 Oct 2019 21:06:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25679 invoked from network); 17 Oct 2019 21:06:56 -0000
From: =?utf-8?Q?Ludovic_Court=C3=A8s?= <ludo@gnu.org>
To: oss-security@lists.openwall.com
Cc: Michael Orlitzky <michael@orlitzky.com>
References: <e758e2d9-3c1f-c006-4ad2-f0f38ec7e669@orlitzky.com>
X-URL: http://www.fdn.fr/~lcourtes/
X-Revolutionary-Date: 26 =?utf-8?Q?Vend=C3=A9miaire?= an 228 de la
 =?utf-8?Q?R=C3=A9volution?=
X-PGP-Key-ID: 0x090B11993D9AEBB5
X-PGP-Key: http://www.fdn.fr/~lcourtes/ludovic.asc
X-PGP-Fingerprint: 3CE4 6455 8A84 FDC6 9DB4  0CFB 090B 1199 3D9A EBB5
X-OS: x86_64-pc-linux-gnu
Date: Thu, 17 Oct 2019 23:06:38 +0200
In-Reply-To: <e758e2d9-3c1f-c006-4ad2-f0f38ec7e669@orlitzky.com> (Michael
	Orlitzky's message of "Wed, 9 Oct 2019 10:14:30 -0400")
Message-ID: <87d0evjd41.fsf@gnu.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
X-detected-operating-system: by eggs.gnu.org: GNU/Linux 2.2.x-3.x [generic]
Subject: [oss-security] CVE-2019-18192: Insecure permissions on Guix profile directory

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

GNU=C2=A0Guix is a transactional package manager and associated GNU/Linux
distribution.

Similar to what Michael Orlitzky reported for Nix (CVE-2019-17365),
the profile directory in GNU=C2=A0Guix would be world-writable, allowing a
malicious user to populate the profile of a user that has never logged
in on the machine.

This issue has been assigned CVE-2019-18192 and affects all versions of
Guix up to 1.0.1 included.  The fix is similar to that written for Nix
by Eelco Dolstra (the build daemon of Guix derives from that of Nix).
It can be deployed via =E2=80=98guix pull=E2=80=99 as specified in the anno=
uncement below.

Announcement:
https://guix.gnu.org/blog/2019/insecure-permissions-on-profile-directory-cv=
e-2019-18192/

Issue:
https://issues.guix.gnu.org/issue/37744

Commit:
https://git.savannah.gnu.org/cgit/guix.git/commit/?id=3D81c580c8664bfeeb767=
e2c47ea343004e88223c7

Ludo=E2=80=99.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEPORkVYqE/cadtAz7CQsRmT2a67UFAl2o194ACgkQCQsRmT2a
67VlFA/8CwNmmNW/B+SWuDw3AuhBTaHAD/Cm7Fjyt9nOKLO8+V1R+7PvCTWwc+mX
AqehurAYzCVJbo27SaIhc54kjLtaNh0GD2tLPcghHfakMg9wlJVHgvNsOHHtcBSe
1USS/NPtTUgJHLwhoK7T1/ubL370QQ+dK6SX4QsGRPZSIyprLX4TLrYwL+KfaNyp
dyYqJgj4jGviL8e/Eg2XYj3Nm3zqV4asl3nKW0EjSIsls7MlNMkTtlvU5IYfep8h
IC/sWgISPnarUQ7JfW5HxpnDP5U2qgGm+IjwOxh0uNhqJIZlh5O62jF+9WuNZw3W
Xpccrl5Zb8AWoAloePe5R0R2wpfXxzkTy+d0ov2lvFSSketZL8KgOwbKlging1Y1
hGMH3g64H4FBgP5nvO0aONxSgiSEOmnMD9MBBPwu3bKUDC8G2FntUHD3hCf7T5Do
WYqA8HCeNI1vzwr1QRePXRg34KuE3Lt9KsYvY0l8V9OIhGrHvbO+smRtxI4x+rXX
CEiNrLM0NPSiVaogJFX+z2HZc4Yw6syiA4ZGvmmVRwcXDDRYG7D7e59WpnunNDRQ
txRaXT3Add4jqTZ8QFm0nqWd16719/qc8NCqPge0EtuHkFz3UYx9CjVcRT96Wpg8
RC5/O60EqRaXK1Zf+n8ilZfSIvEJWqHf06f+oHAiknY6GbqV1Vw=
=iBeQ
-----END PGP SIGNATURE-----
--=-=-=--
