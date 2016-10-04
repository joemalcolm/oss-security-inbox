X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5009" "Tuesday" "4" "October" "2016" "16:46:53" "+0200" "Matthieu Herrb" "matthieu.herrb@laas.fr" "<20161004144653.GB20328@paperthin-usb.laas.fr>" "150" "[oss-security] X.Org security advisory: Protocol handling issues in X Window System client libraries" nil nil nil "10" "2016100414:46:53" "[oss-security] X.Org security advisory: Protocol handling issues in X Window System client libraries" (number mark "U       matthieu.her Oct  4  150/5009  " thread-indent "\"[oss-security] X.Org security advisory: Protocol handling issues in X Window System client libraries\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12108 invoked by uid 550); 4 Oct 2016 15:18:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30038 invoked from network); 4 Oct 2016 14:47:07 -0000
Date: Tue, 4 Oct 2016 16:46:53 +0200
From: Matthieu Herrb <matthieu.herrb@laas.fr>
To: oss-security@lists.openwall.com
Message-ID: <20161004144653.GB20328@paperthin-usb.laas.fr>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="TakKZr9L6Hm6aLOc"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] X.Org security advisory: Protocol handling issues in X Window System
 client libraries

--TakKZr9L6Hm6aLOc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

X.Org security advisory: October 4, 2016

Protocol handling issues in X Window System client libraries
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Description

Tobias Stoeckmann from the OpenBSD project has discovered a number of
issues in the way various X client libraries handle the responses they
receive from servers, and has worked with X.Org's security team to
analyze, confirm, and fix these issues. These issue come in addition
to the ones discovered by Ilja van Sprundel in 2013.

Most of these issues stem from the client libraries trusting the
server to send correct protocol data, and not verifying that the
values will not overflow or cause other damage. Most of the time X
clients & servers are run by the same user, with the server more
privileged than the clients, so this is not a problem, but there are
scenarios in which a privileged client can be connected to an
unprivileged server, for instance, connecting a setuid X client (such
as a screen lock program) to a virtual X server (such as Xvfb or
Xephyr) which the user has modified to return invalid data,
potentially allowing the user to escalate their privileges.

The X.Org security team would like to take this opportunity to remind
X client authors that current best practices suggest separating code
that requires privileges from the GUI, to reduce the attack surface of
issues like this.


Affected libraries and CVE Ids

libX11 - insufficient validation of data from the X server
	 can cause out of boundary memory read (XGetImage())
	 or write (XListFonts()).
	 Affected versions libX11 <=3D 1.6.3

libXfixes - insufficient validation of data from the X server
	can cause an integer overflow on 32 bit architectures.
	Affected versions : libXfixes <=3D 5.0.2

libXi - insufficient validation of data from the X server
	can cause out of boundary memory access or
	endless loops (Denial of Service).
	Affected versions libXi <=3D 1.7.6

libXrandr - insufficient validation of data from the X server
	can cause out of boundary memory writes.
	Affected versions: libXrandr <=3D 1.5.0

libXrender - insufficient validation of data from the X server
	can cause out of boundary memory writes.
	Affected version: libXrender <=3D 0.9.9

XRecord - insufficient validation of data from the X server
        can cause out of boundary memory access or
	endless loops (Denial of Service).
	 Affected version libXtst <=3D 1.2.2

libXv - insufficient validation of data from the X server
        can cause out of boundary memory and memory corruption.
	CVE-2016-5407
	affected versions libXv <=3D 1.0.10

libXvMC - insufficient validation of data from the X server
	can cause a one byte buffer read underrun.
	Affected versions: libXvMC <=3D 1.0.9


Fixes

Fixes are available in the following git commits.

lib/libX11
8ea762f Validation of server responses in XGetImage()
8c29f16 The validation of server responses avoids out of boundary accesses.

libXfixes
61c1039 Integer overflow on illegal server response

libXi
19a9cd6 Properly validate server responses.

libXrandr
a0df3e1 Avoid out of boundary accesses on illegal responses

libXrender
9362c7d Validate lengths while parsing server data.
8fad00b Avoid OOB write in XRenderQueryFilters

lib/libXtst
9556ad6 Out of boundary access and endless loop in libXtst

libXv
87b3c94 Protocol handling issues in libXv

libXvMC
2cd95e7 Avoid buffer underflow on empty strings.


They will also be available in these modules releases from X.Org:

 * libX11 1.6.4
 * libXfixes 5.0.3
 * libXi 1.7.7
 * libXrandr 1.5.1
 * libXrender 0.9.10
 * libXtst 1.2.3
 * libXv 1.0.11
 * libXvMC 1.0.10

Thanks

X.Org thanks Tobias Stoeckmann for reporting these issues to our
security team and assisting them in understanding them and evaluating
our fixes.

--=20
Matthieu Herrb

--TakKZr9L6Hm6aLOc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIVAwUBV/PA3Whzk+430Sj4AQJLrA//TzLzO1zK/tvQKbQXCpKY3zUA1456PY1A
aparEICK+pipvYvSOSrE9dyG05nsX9NCIlvaIuMxWnc+bhAoBCZDE8wRV95jsa4E
JackRZ1A3EdYG5ulvKvFuYd4T10IJz06QshUpv9DuQeNTnFwHXep2ANPr+nFVF7l
H1qqZRyxwVZkFOBmLdqGigWTs7nd0GbJrBxE5IUYODOhvPxAhZxQNMu8g1vDRKcO
SppynwzXFY0kHCbemFdJrZBG+UjNkxlZZVBEfTia+MzJjFxL1r0zgL9S/ftfGg2H
AGHLwK9tnSlhUf9uu2z5ouFKCprSUUTNfiEI67rSZ3sF1czjecEGDuLeq+0Ar/Zo
AtkU69cIhFi1EloqY15vvgPEqIz4Eg9tTMBvEU/X+nBOJYRZ0Vl+rOxHgHNfSHwl
CrUm323gZHk/V8eDE3oxwm0m76dOzNyzXn6SaTb9TQjd/VDZHPK0xuee3vvQLnMn
+5ivwyaxO4yqGNZdMozcw6aBBRPAkqk4QaN7iewpyJaO0BfAynsjNcTg05sJKfsO
7uo2zoRgv3+03lGFrpXGX3cPtuuONuj0R6/R6HObGj9nIJj5BQf4D306fD7gv/nB
oPw8RxtS5ThUEKlh0dHHai47L9xYio5HBX32c4cHjzSsEzzs2So0WmXwjqCg62iR
i2Cw0P3XONk=
=C5rF
-----END PGP SIGNATURE-----

--TakKZr9L6Hm6aLOc--
