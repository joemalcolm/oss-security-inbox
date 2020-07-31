X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2993" "Friday" "31" "July" "2020" "16:04:21" "+0200" "Matthieu Herrb" "matthieu@herrb.eu" nil "92" nil "^Date:" nil nil "7" nil nil (number mark "        matthieu@her Jul 31   92/2993  " thread-indent "\"[oss-security] Fwd: X.Org security advisory: July 31, 2020: Xserver\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Fwd: X.Org security advisory: July 31, 2020: Xserver" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31808 invoked by uid 550); 31 Jul 2020 14:07:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29875 invoked from network); 31 Jul 2020 14:04:35 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=herrb.eu; h=date:from:to
	:subject:message-id:mime-version:content-type; s=20180121; bh=WV
	oVxHbJdAkocWXZKDJHUUcAA3k=; b=OF57W8oqQ3sKLmkAQyV75DnnqK46lvpsSG
	wAlqecYa+JxkDYXZSzSBFju5KP45z26qcYv8Aie9gV+jkHlBYrmip1C0gCJf+rcZ
	uQJxsNXbkFswEpJoUiaqYdyjj+2os3z0ELSoTAkGxQoWuL+bcMC2xwQ9xuWeNckW
	BzihhUNb8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=herrb.eu; h=date:from:to
	:subject:message-id:mime-version:content-type; q=dns; s=20180121; b=
	uHL9CQcOghdkkU9iVZnq4UN1XcLW8/Yznj8aD8Sot5X4xJp7o3qCYlyEEYuZlKFe
	RFPvnOCyql2p8shaMJ+VqSYjGE6x6Xy5vS/gLEoTHCbFRDSeCxRmg7tKlJu4W5gm
	+tGOCFpuSOg9+A/FRjKkSGigVOZB+6YvwD412KXgZSk=
Message-ID: <20200731140421.GD69757@zuma.herrb.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="DHghc3FnY75Ze2RR"
Content-Disposition: inline
Date: Fri, 31 Jul 2020 16:04:21 +0200
From: Matthieu Herrb <matthieu@herrb.eu>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Fwd: X.Org security advisory: July 31, 2020: Xserver
To: oss-security@lists.openwall.com

--DHghc3FnY75Ze2RR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

----- Forwarded message from Matthieu Herrb <matthieu@herrb.eu> -----

Date: Fri, 31 Jul 2020 15:44:44 +0200
From: Matthieu Herrb <matthieu@herrb.eu>
To: xorg-announce@lists.x.org
Cc: xorg-devel@lists.x.org
Subject: X.Org security advisory: July 31, 2020: Xserver

X.Org security advisory: July 31, 2020

X Server Pixel Data Uninitialized Memory Information Disclosure=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

CVE-2020-14347

Allocation for pixmap data in AllocatePixmap() does not initialize the
memory in xserver, it leads to leak uninitialize heap memory to
clients. When the X server runs with elevated privileges.

This flaw can lead to ASLR bypass, which when combined with other
flaws (known/unknown) could lead to lead to privilege elevation in the
client.

Patch
=3D=3D=3D=3D=3D

A patch for this issue has been commited to the xorg server git
repository.  xorg-server 1.20.9 will be released shortly and will
include this patch.

https://gitlab.freedesktop.org/xorg/xserver.git

diff --git a/dix/pixmap.c b/dix/pixmap.c
index 1186d7dbb..5a0146bbb 100644
--- a/dix/pixmap.c
+++ b/dix/pixmap.c
@@ -116,7 +116,7 @@ AllocatePixmap(ScreenPtr pScreen, int pixDataSize)
     if (pScreen->totalPixmapSize > ((size_t) - 1) - pixDataSize)
         return NullPixmap;
=20
-    pPixmap =3D malloc(pScreen->totalPixmapSize + pixDataSize);
+    pPixmap =3D calloc(1, pScreen->totalPixmapSize + pixDataSize);
     if (!pPixmap)
         return NullPixmap;
=20=20=20=20
Thanks
=3D=3D=3D=3D=3D=3D

This vulnerability was discovered by Jan-Niklas Sohn working with
Trend Micro Zero Day Initiative.

--=20
Matthieu Herrb



_______________________________________________
xorg-announce mailing list
xorg-announce@lists.x.org
https://lists.x.org/mailman/listinfo/xorg-announce


----- End forwarded message -----

--DHghc3FnY75Ze2RR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIVAwUBXyQk4Whzk+430Sj4AQIUbg/9F7SGoRxQsgXmiZqxF0Bfv1oihSMNbBTY
JVDoiY8bWsTUmY2b2rnUjuRljncywSgqm/6FKAD3taXg7Nujj49Y4qmat1hPusQD
Petn+3tRbbD9ZVNVELsNvWaXMdrIgZq59imq/oWHyNHhkUML6UVgKWnyQzAbLx/N
BF+YCbEHKNhXUXDfkZdmB0PAYfjycX6QvqIQyb73Xpb5CCefjLP3Q5wWNismOduY
VIPjjkZ6VoidMlqMk1kZEbZmx8pqchugqcfJPbE/xdnUaw9dOzU/qqUtVOtRxLZe
B0HkEj5/5zJQpEWX+oCoUgr6gxJmIq0DJs34ofEo+o6iKCyIuPsf9LGKnSIb3Xl7
fdgTaytkhq0qANp1IYV8I0Ly7jlS07KT4A63qXPcZgDVIRoBB8UoFF0hCnjvAam3
+B1nv/uNYg6KLxfcLbQD2XaPXvt0QdlaeBqQn2e3J636Nvo11qNuavcevxVRhKZP
HOnIOPZKc/rT6xwanBx2OK5Q3CEh97pYL4jIyfWVda5w8L5zBedHCtP6qxsfa8xs
Ke04qX/ismJeGTBCZayT5YqvmpYFkBavMEoRNodTdlN1b1ZroKRpQtOFaXwSqw9S
66Tiy88ltsfYypLuQ8FViVpKd8LCY+05yfvABRsNU56HW7njnbAT34+VLnln0o3A
/S+PIZGWOAA=
=V7bA
-----END PGP SIGNATURE-----

--DHghc3FnY75Ze2RR--
