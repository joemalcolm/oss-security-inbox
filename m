X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3359" "Friday" "31" "July" "2020" "16:03:35" "+0200" "Matthieu Herrb" "matthieu@herrb.eu" nil "109" nil "^Date:" nil nil "7" nil nil (number mark "        matthieu@her Jul 31  109/3359  " thread-indent "\"[oss-security] Fwd: X.Org security advisory: July 31, 2020: libX11\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Fwd: X.Org security advisory: July 31, 2020: libX11" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30527 invoked by uid 550); 31 Jul 2020 14:07:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29710 invoked from network); 31 Jul 2020 14:03:50 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=herrb.eu; h=date:from:to
	:subject:message-id:mime-version:content-type; s=20180121; bh=8A
	PRfPjJDx4jDeKxisk6lf4o7uo=; b=lXUecJxEOheDoaSvif6+obPNCzmPy4iO9h
	cCOgFVaO8zE7jIF+Iw4zfpwopK1HLFpcF2kMIjJBOGu+5SvR0VGfk0phHuCW2C7b
	RaF4RvTVx397VxbkTrlgY/t6rmRZHCNZXdLvibRwCN9rvz5uGePzb9aXkB7IIY8R
	/UyRLYpHI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=herrb.eu; h=date:from:to
	:subject:message-id:mime-version:content-type; q=dns; s=20180121; b=
	IZmZXbQpB1Rd2xH2wFCTdgHiSd/eFfQ5a00t4M+gSpK7YQc+GKhPj5jotOYke6mw
	Ger9xW/uGK+5BslINxQ6EMVrWPE26ws+BD9js5JIpzuDj7YJbtccl+RQC3JL82ov
	GS/NzcOFoFse1Qd8qdsqdpTQmty3no95syRZOZNxXRM=
Message-ID: <20200731140335.GC69757@zuma.herrb.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="x7uGNNMLqM1zUlCR"
Content-Disposition: inline
Date: Fri, 31 Jul 2020 16:03:35 +0200
From: Matthieu Herrb <matthieu@herrb.eu>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Fwd: X.Org security advisory: July 31, 2020: libX11
To: oss-security@lists.openwall.com

--x7uGNNMLqM1zUlCR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

----- Forwarded message from Matthieu Herrb <matthieu@herrb.eu> -----

Date: Fri, 31 Jul 2020 15:37:55 +0200
From: Matthieu Herrb <matthieu@herrb.eu>
To: xorg-announce@lists.x.org
Cc: xorg-devel@lists.x.org
Subject: X.Org security advisory: July 31, 2020: libX11

X.Org security advisory: July 31, 2020

Heap corruption in the X input method client in libX11
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

CVE-2020-14344

The X Input Method (XIM) client implementation in libX11 has some
integer overflows and signed/unsigned comparison issues that can lead
to heap corruption when handling malformed messages from an input
method.

Patches
=3D=3D=3D=3D=3D=3D=3D

Patches for these issues have been commited to the libX11 git repository.
libX11 1.6.10 will be released shortly and will include those patches.

https://gitlab.freedesktop.org/xorg/lib/libx11

commit 1703b9f3435079d3c6021e1ee2ec34fd4978103d (HEAD -> master)

    Change the data_len parameter of _XimAttributeToValue() to CARD16
=20=20=20=20
    It's coming from a length in the protocol (unsigned) and passed
    to functions that expect unsigned int parameters (_XCopyToArg()
    and memcpy()).
=20=20=20=20
commit 1a566c9e00e5f35c1f9e7f3d741a02e5170852b2

    Zero out buffers in functions
=20=20=20=20
    It looks like uninitialized stack or heap memory can leak
    out via padding bytes.
=20=20=20=20

commit 2fcfcc49f3b1be854bb9085993a01d17c62acf60

    Fix more unchecked lengths
=20=20=20=20
commit 388b303c62aa35a245f1704211a023440ad2c488

    fix integer overflows in _XimAttributeToValue()
=20=20=20=20

commit 0e6561efcfaa0ae7b5c74eac7e064b76d687544e

    Fix signed length values in _XimGetAttributeID()
=20=20=20=20
    The lengths are unsigned according to the specification. Passing
    negative values can lead to data corruption.
=20=20=20=20
Thanks
=3D=3D=3D=3D=3D=3D

X.Org thanks Todd Carson for reporting these issues to our security
team and assisting them in understanding them and providing fixes.


--=20
Matthieu Herrb



_______________________________________________
xorg-announce mailing list
xorg-announce@lists.x.org
https://lists.x.org/mailman/listinfo/xorg-announce


----- End forwarded message -----


--x7uGNNMLqM1zUlCR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIVAwUBXyQksmhzk+430Sj4AQKFAw//QTYPRRIq1Lqsuluxt5PdfYokhLKprvyY
PzO8kaLtZgyUHJahDtkr08Rkbwwy1mZXwcesAryqHREhBfmBzq+OBqPH0cdOXPil
d6QAlIKiCgosuzmTCprlOcC7UobfMheTrGDclkDJiWw9wfN12JnoGnJcetiwZOTj
2QKJxx4wJNgPe0zKbdjuFVt3vIUdpkBcRUv/ymz9IMAlZ7F1ta2k4pf2OnnGib6r
0KAK/MUkegfj511+Ot6Zjph/04WZkCvge+6WUDyUF12fWBNc499deu1epHExikhN
EWvtI3oYKa2Y3aiT6Ktmdt3kiKO+HrWXx7d5fwiZxAcmQU04NUClySC0Z9BE86yv
4DPwWixo4rt60kCoOSJCbB7RmRF5AuIcya56SBfRtm0Jn6r4R9Df99hrVeJlSBWE
xJk6RdBP6pibsJ2m6Z42CP+St8qoOHqU3BXJnU1pqRKCIyEXfnbTwRlVFAT4SFHU
ZwwLU2BxEUktFSkYBvchyVXgnB+fTfZPiKOgqzLH5/d8v2PazSGnv/Cd4Qmz7wip
l/cmGscx2opWRiVykn4MkTyaw0jJ+Ow7qmZftHyO7IOJN4toswI2YgadQpFuw96r
DGySz/dF9A9YokOiwtkjVuHNYXD3lGZ3k2OFSCUZyoykDteOXEkl7mYS4yO1jDks
lNIaRka+k6Q=
=/BUW
-----END PGP SIGNATURE-----

--x7uGNNMLqM1zUlCR--
