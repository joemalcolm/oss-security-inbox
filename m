X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2459" "Tuesday" "18" "May" "2021" "16:32:26" "+0200" "Matthieu Herrb" "matthieu@herrb.eu" nil "70" "[oss-security] libX11 security advisory: May 18, 2021" nil nil nil "5" nil nil (number mark "U       matthieu@her May 18   70/2459  " thread-indent "\"[oss-security] libX11 security advisory: May 18, 2021\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] libX11 security advisory: May 18, 2021" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9592 invoked by uid 550); 18 May 2021 14:41:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3930 invoked from network); 18 May 2021 14:32:41 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=herrb.eu; h=date:from:to
	:subject:message-id:mime-version:content-type; s=20180121; bh=mg
	C+dMEfYegMonUPEhiUCVGpPcg=; b=X989AmSpyGz1w+BcL5wo8nI8K+XQKkF783
	7MBz3Hro8BIEly1rfGdL02D+zy0nilgKM2F/jBzexpT1pD+G4lqZ4dsN9aG5qcDi
	AmedGvhlmk/RfX7N+ygzjKCFziGCwFAhkfqstoF1CX4GvsoPdkMseXFFyS/cCnh9
	kx1VcWf5c=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=herrb.eu; h=date:from:to
	:subject:message-id:mime-version:content-type; q=dns; s=20180121; b=
	zcXHGUkZSRSMaNASjUqx99hmBtfiPIx6R7UljDKKiwoFIznzBVrPq7Nu/LPIvklh
	xwMuFDCficSZcdx79RzSuNWJ9KA23cPggAmBTX+T0ShAQY6k006SwZXxC7IEv7nY
	uZvQXaAsre6xx9wDFuyiwHIRDUG+Js/3GiiIXPFuAuc=
Date: Tue, 18 May 2021 16:32:26 +0200
From: Matthieu Herrb <matthieu@herrb.eu>
To: oss-security@lists.openwall.com
Message-ID: <YKPP+hCgfAaW0OiB@blues>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VGButq5aoR7eVjDN"
Content-Disposition: inline
Subject: [oss-security] libX11 security advisory: May 18, 2021

--VGButq5aoR7eVjDN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

X.Org libX11 security advisory: May 18, 2021

Missing request length checks in libX11
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

CVE-2021-31535

XLookupColor() and other X libraries function lack proper validation
of the length of their string parameters. If those parameters can be
controlled by an external application (for instance a color name that
can be emitted via a terminal control sequence) it can lead to the
emission of extra X protocol requests to the X server.

Patch
-----

A patch for XLookupColor() and other potentially vulnerable functions
has been committed to libX11. libX11 1.7.1 will be released shortly
and contains a fix for this issue.

https://gitlab.freedesktop.org/xorg/lib/libx11

commit: 8d2e02ae650f00c4a53deb625211a0527126c605

    Reject string longer than USHRT_MAX before sending them on the wire

XTerm version 367 contains extra validation for the length of color
names passed to XLookupColor() from terminal control sequences.  XTerm
version 366 and earlier are vulnerable.

Tests conducted by Roman Fiedler on other terminal emulator
applications have not found other cases of passing un-checked color
names to XLookupColor().

Thanks
=3D=3D=3D=3D=3D=3D

This vulnerability has been discovered by Roman Fiedler from
Unparalleled IT Services e.U.

--=20
Matthieu Herrb

--VGButq5aoR7eVjDN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEExByYX9zx5TZFdmOLaHOT7jfRKPgFAmCjz/oACgkQaHOT7jfR
KPhGYg/9Hne+/cpkAvliyLDYiukYEJf1g9towhlX9N/K4ZY/jB3vv2DctzMjjKdI
xUh3RTYT/PYRNjJlRDPgCE8+URxWsQZhHxgAYTWodvxavO3TDgqhkCBYLrg5RZlo
kvzAySoOiHJKC05nWAF+r+f6S4foQgkXF7MxBldbA0Yh3Kppn43eeTzO5HclZMUN
4fI+3NjhW+KBN+1bp9N9lF3UYJHeDcr4JXR+PW2H3oIyzkXqc562n0ChxigVcJ2u
jmCwhwQQwehM9RGca15FJwtsRBGlUaRUoYrl1Z+9KKvesKJZ0JYFDHmV0fpXWh4i
lrXH+Vd7nyudj+ffX49qKvTs2IeNaALKgQNG6VNbllXh/CW/nmYeFjhpMSG/Qj+S
vjWofuqREP42fr1AjZYxDhvuT1wnWK+J231oINNDd2j/+j2VbFF8FNW5Y5uOHoc4
vR7XNSEwIhMcd9anJOkM71ACB03/bUQ6muL0zdd9zV0Hq45Gqu5kS7/X8eXLg9cm
INmx308uf1a2qCjZ7mq4gZTgyTvgsdGJGIO5GC/LSNTaqwlMYjYaolZwOwrEj7Yl
MLIpX5R4HYX/nNQv+h1BoLw5srarKcHRICt7A8NgBTBn7Qqn21U0X9UXqTc2TDJX
0NfKejo+dhGhyOz6TusD2FXv8FYqlXPrCvcxIFL/yGyJd+y5qBo=
=hlQQ
-----END PGP SIGNATURE-----

--VGButq5aoR7eVjDN--
