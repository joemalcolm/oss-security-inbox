X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2210" "Tuesday" "13" "April" "2021" "16:04:32" "+0200" "Matthieu Herrb" "matthieu@herrb.eu" nil "68" "[oss-security] X.Org server security advisory: April 13, 2021" nil nil nil "4" nil nil (number mark "U       matthieu@her Apr 13   68/2210  " thread-indent "\"[oss-security] X.Org server security advisory: April 13, 2021\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] X.Org server security advisory: April 13, 2021" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7581 invoked by uid 550); 13 Apr 2021 14:11:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5335 invoked from network); 13 Apr 2021 14:04:52 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=herrb.eu; h=date:from:to
	:subject:message-id:mime-version:content-type; s=20180121; bh=Fx
	U4VuDLYy7v4YHmJKg6k66kS50=; b=sgMUMfnCijcxvenflKtMyJUxYYP8Z3EJjw
	IpKaLprZuQJ+o52lt0L8qHQCcf87XoZYiV8cEm+x/pbrJp6KqetaPdfA8Ae4ihSl
	XsrTQzr0/fmaDxfsKCNFn02JTFFEhuU5WazM0MG6euO3a78KJ03ot8dyvYV3SIrz
	dr07a6NWM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=herrb.eu; h=date:from:to
	:subject:message-id:mime-version:content-type; q=dns; s=20180121; b=
	wG3Gv5bAjVk8RkLLDYEwQeCsvGWRTlymOLyVwJ/5KB36klk13xL9YFL5R4DY/4JD
	2rWf4x48QnWhYAp6MEPw9pO1dIDS8Bq35x1oREuy7nQC9yjcBZ8NFTDhm3NTdEvF
	OCuS/7KFzUcooPgs1Ze1gMUfe/F8zJ+wy2VbeHJqfLE=
Date: Tue, 13 Apr 2021 16:04:32 +0200
From: Matthieu Herrb <matthieu@herrb.eu>
To: oss-security@lists.openwall.com
Message-ID: <YHWk8MteMZ+3ScCn@zuma.herrb.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4qAhsEUpy1bXk/FU"
Content-Disposition: inline
Subject: [oss-security] X.Org server security advisory: April 13, 2021

--4qAhsEUpy1bXk/FU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

X.Org server security advisory: April 13, 2021


Input validation failures in X server XInput extension
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D


Insufficient checks on the lengths of the XInput extension
ChangeFeedbackControl request can lead to out of bounds memory
accesses in the X server.

These issues can lead to privilege escalation for authorized clients
on systems where the X server is running privileged.

* CVE-2021-3472 / ZDI CAN 12549 XChangeFeedbackControl Integer Underflow

Patch
-----

A patch for this issue has been committed to the xorg server git
repository. xorg-server 1.20.11 and xwayland 21.1.1 will be released
shortly and will include this patch.

https://gitlab.freedesktop.org/xorg/xserver.git

commit 7aaf54a1884f71dc363f0b884e57bcb67407a6cd

Fix XChangeFeedbackControl() request underflow

CVE-2021-3472 / ZDI-CAN-1259

Thanks
=3D=3D=3D=3D=3D=3D

These vulnerabilities have been discovered by Jan-Niklas Sohn working
with Trend Micro Zero Day Initiative.

--=20
Matthieu Herrb

--4qAhsEUpy1bXk/FU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEExByYX9zx5TZFdmOLaHOT7jfRKPgFAmB1pPAACgkQaHOT7jfR
KPjUZg/+JvIZdPY9TQJk3LtFr0eywiF4RA+NEtO4/hjv1nuxbNuZ2Xxp4zi4i3Qf
ldm3FWc55Hm+FPrmR5e+B8qn9AQwj/RvxOCazulALWxPZ7uOUhMZ0Jh8gH3GE7TY
5zTS9jh+Cge6aHjRqYp+ilX1300TJBd2hcoWaD9pse5GAvQChxZFYAo4lX2X5I1r
jjrB7OhSE3kMIZZ2I3H0Oh6zzc1n19vNAgLhLIh78QRnhN24dDDPv545dcxRZVcf
TbNaP8/bTru9v9ZmP5nyv64igruGnLuFMesxbYrA9MgsNh/a+yfUVzdLPJeuCKJ1
3GVi6/lwjUq3WymiiacAXrG3i2oMm8H2cwRoWw0eyPW2v6n8A0gmW/ad8isKltju
CkT3Vp+COA/GDfua6B3DzRCyNaFSPk0g2EIt45ItQ2GDaJi/3qsQE+Xx6SEa8dY5
17dBAzHiIDYIlTnFOmdcgS8+7m7QISVRfYIlKxLXyRmIdVLr69TD7YRoaXPEb9pe
+PNGpjPuUTBJoR3JVkWg66ih/MZRF727vL5pGyRAOCr5LY/QeXmta07R7vwsG0h7
zxS72rY7v/kcgPVAaxNVM/LIn6TkFtHBf1juUfx1NyDvicS9jTcFGZorP+EVpDpp
pkA20mRR6ICqODTE9CTbvO3H0AfUC45/bLL+eEqMG3ULP/+UnWw=
=HyIp
-----END PGP SIGNATURE-----

--4qAhsEUpy1bXk/FU--
