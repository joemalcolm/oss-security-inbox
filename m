X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3446" "Thursday" "25" "October" "2018" "16:25:39" "+0200" "Matthieu Herrb" "matthieu@herrb.eu" "<20181025142539.GD9126@timmy.laas.fr>" "93" "[oss-security] X.Org security advisory: October 25, 2018" nil nil nil "10" "2018102514:25:39" "[oss-security] X.Org security advisory: October 25, 2018" (number mark "U       matthieu@her Oct 25   93/3446  " thread-indent "\"[oss-security] X.Org security advisory: October 25, 2018\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19519 invoked by uid 550); 25 Oct 2018 14:38:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11484 invoked from network); 25 Oct 2018 14:25:53 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=herrb.eu; h=date:from:to
	:subject:message-id:mime-version:content-type; s=20180121; bh=l4
	u6C2M+PDsyhGka67yjXkCnt+Q=; b=y9CamAjeXoHUkJw6yNTvpzsyeHIODBuj6Q
	74nAW46JkVw/4vmlqhw2iiP9Pk2jBMYNWu9ha84GeGW6XMlc8NxyDfrTYyja3+9y
	XIXgnCGc4lOS64WJZoNpeBdFQH1UQ28qVKcPEjewYQvzn2cRQDQcaPyEgc7HpE19
	VAEsEGdlI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=herrb.eu; h=date:from:to
	:subject:message-id:mime-version:content-type; q=dns; s=20180121; b=
	0rri3hYJ8KQJKXpdlsA0llvGLY01tXkt7TGGt75Z65/wrMgcofWodLpZ7yYIOMMn
	FZ2KoYaNHVTjxthEzI8njiA7p1aTs89PMQJ+sg4VaqaRhMaXbFLlNI/j20sVuvDR
	JvZadg6gGuGwf3ig+6bPLRDB64iRIndAZL9WJBkyJmw=
Date: Thu, 25 Oct 2018 16:25:39 +0200
From: Matthieu Herrb <matthieu@herrb.eu>
To: oss-security@lists.openwall.com
Message-ID: <20181025142539.GD9126@timmy.laas.fr>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6zdv2QT/q3FMhpsV"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] X.Org security advisory: October 25, 2018

--6zdv2QT/q3FMhpsV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

X.Org security advisory: October 25, 2018

Privilege escalation and file overwrite in X.Org X server 1.19 and later
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Incorrect command-line parameter validation in the Xorg X server can
lead to privilege elevation and/or arbitrary files overwrite, when the
X server is running with elevated privileges (ie when Xorg is
installed with the setuid bit set and started by a non-root user).

The -modulepath argument can be used to specify an insecure path to
modules that are going to be loaded in the X server, allowing to
execute unprivileged code in the privileged process.

The -logfile argument can be used to overwrite arbitrary files in the
file system, due to incorrect checks in the parsing of the option.

This issue has been assigned CVE-2018-14665

Background
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The commit
https://gitlab.freedesktop.org/xorg/xserver/commit/032b1d79b7 which
first appeared in xorg-server 1.19.0 introduced a regression in the
security checks performed for potentially dangerous options, enabling
the vulnerabilities listed above.

Overwriting /etc/shadow with -logfile can also lead to privilege
elevation since it's possible to control some part of the written log
file, for example using the -fp option to set the font search path
(which is logged) and thus inject a line that will be considered as
valid by some systems.

Patches
=3D=3D=3D=3D=3D=3D=3D

A patch for the issue was added to the xserver repository on
October 25, 2018.

https://gitlab.freedesktop.org/xorg/xserver/commit/50c0cf885a6e91c0ea71fb49=
fa8f1b7c86fe330e

Workaround
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

If a patched version of the X server is not available, X.Org
recommends to remove the setuid bit (ie chmod 755) of the installed
Xorg binary.  Note that this can cause issues if people are starting
the X window system using the 'startx', 'xinit' commands or variations
thereof.

X.Org recommends the use of a display manager to start X sessions,
which does not require Xorg to be installed setuid.

Thanks
=3D=3D=3D=3D=3D=3D

X.Org thanks Narendra Shinde who discovered and reported the issue,
and the Red Hat Product Security Team who helped understand all
impacts.

--=20
Matthieu Herrb

--6zdv2QT/q3FMhpsV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJb0dJjAAoJEGhzk+430Sj4aK0P/idWC2oMhHHOWBRA2bli6q/P
BvZ0Ju/Lurz6OX7b0li4gF5VcrGeIHURw3XGrLePP0gMs9g+jgoXEUDjXtCiEfQB
7mbMqZGKFWrEOmvwdbdx2ocmZZ61L+4WhpP+TBlY3THNAbnNgQdc8X85PjVlOuKj
g5aYDpM/RB1C4YOrt2gO8Bd8QkA/y5w1MyoBuG/8TAj0kkqfo1z9PH2/9gsLbiV1
lbSA9oBg9qInr6PMjoZIJOkNEhFyX4asHAlFqxce8toBrAPQI6W7i/vVFhfU4Tw4
azqr6lrE0jKeBiZ+wEn7HRqKO109UGsj0zpxI5bKPvOJenpqVShqsqyWt//JZaZP
BoYBxBUnN07J0+AExJ4UWxKzTUPhobBeJKWnG+AYFg2qNesICrsGvEYZ79hlKRSL
/hTIUtVVLpgMuUAmHNC/VGDMwoG6TBn278ACPThtW9Oc8NtkHfypCbFFKGKdQvdx
gXumzgBZnQRdw+yC5Op3Oam/bxh1gP2jvYSkwoqINQbDce1vaQZz4KkeQOdx4gJn
fDwYtIuH3fmgJb3uqR+TdTlG1ApQ7LVGGVv+i10SuX0oPR/xbCa70yishY2HbaCP
iyv2dkdiUJbNMeSJ2iNQ5lb0I7MRehuWpJ/oZstx7AASjsDlrL3Hl8t8gPBe36s/
0wRaYdpee5TumPIzuNH0
=vU7C
-----END PGP SIGNATURE-----

--6zdv2QT/q3FMhpsV--
