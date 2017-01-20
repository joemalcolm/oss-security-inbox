X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2183" "Friday" "20" "January" "2017" "12:15:14" "+1030" "Doran Moppert" "dmoppert@redhat.com" "<20170120014512.GC20029@sin.redhat.com>" "64" "[oss-security] CVE Request: two flaws in hesiod permitting privilege elevation" nil nil nil "1" "2017012001:45:14" "[oss-security] CVE Request: two flaws in hesiod permitting privilege elevation" (number mark "U       dmoppert@red Jan 20   64/2183  " thread-indent "\"[oss-security] CVE Request: two flaws in hesiod permitting privilege elevation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11426 invoked by uid 550); 20 Jan 2017 01:45:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11401 invoked from network); 20 Jan 2017 01:45:31 -0000
Date: Fri, 20 Jan 2017 12:15:14 +1030
From: Doran Moppert <dmoppert@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20170120014512.GC20029@sin.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MfFXiAuoTsnnDAfZ"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Fri, 20 Jan 2017 01:45:20 +0000 (UTC)
Subject: [oss-security] CVE Request: two flaws in hesiod permitting privilege elevation

--MfFXiAuoTsnnDAfZ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Two flaws in Hesiod reported May 2016 - neither has made it into an
upstream release yet, but one is fixed in trunk and patches are
available for both.

Note that glibc is not affected by either of these issues.

Originally reported by Florian Weimer.


# Weak SUID check allowing privilege elevation

Hesiod unsafely checks EUID vs UID in a few places, consulting
environment variables for configuration if they match.  This could be
used for privilege elevation under some circumstances.  The fix uses
secure_getenv() in place of getenv().

https://bugzilla.redhat.com/show_bug.cgi?id=3D1332508
https://github.com/achernya/hesiod/pull/9


# Use of hard-coded DNS domain if configuration file cannot be read

If opening the configuration file fails, hesiod falls back on a default
domain ".athena.mit.edu" to retrieve managed information.  A local
attacker with the opportunity to poison DNS cache could potentially
elevate their privileges to root by causing fopen() to fail.

https://bugzilla.redhat.com/show_bug.cgi?id=3D1332493
https://github.com/achernya/hesiod/pull/10


Thanks,

--=20
Doran Moppert
Red Hat Product Security

--MfFXiAuoTsnnDAfZ
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBCgAGBQJYgWuoAAoJEGohqWcZR7qpxS4P/0hyIJBzW0iXbb9z1u0sV+qj
k0j0EbRVCJB84tLaXakNxob8d39dt3hoEJbWE4NSt3dmPnpQMkWRfWMKHIZ1sQ3Y
1r5OIw3kUkNEvb7UigBR7YEtzwOeGKlOMwMlLFrBXtbvKHAEFgHfAnsvGkZmI2Ee
uf99hfpeAeXUx32h9y/IxQDOzVPiaToHfwZF8xP+T3GDJo/6bty1/yQv1aw2dRqD
WlSJim8M0i1cdaWQQTjD7S7vNz8+gC+WBR+K4Nbn3AnaVUHKfWdT7fIJn8iDmr+c
xByRp/Q9J+12tTQVYzRWklg1xHWmyCm20k/8vBrjVL8mJJxFl+yVvmLN1GiWMpfq
LK4Q1IgCr7ddyHSpgTZDkgd3K/dAfVbM7re0Ouhv7WptGr1RudRzWJB1tcJjE+ju
r9tW12iCgAOi089aa7VyxQagcxIINxMDuIAHibZCw9Xo/fSPuMPPfHrNREGZ8Rf+
ycxMTebFk8NrPRq/rw1lhKwy63aKDW4VZyMfqo019p5OdZQXqoSJ2ASYdVK6fjVu
rTK8k9fXY+bzS0bhZlIu9HsmDkMykDLZBPFJ9gPTqgLUAt6ZUzk9XG5MCrHRi0r6
JEazcuJxwmd82jfG0zkWcBzHXYIw0QP5FzwLimbx0rjS58P9YmuoSLdrUhikc3jv
MENvu0srswswu1suQ8Dc
=b9Bu
-----END PGP SIGNATURE-----

--MfFXiAuoTsnnDAfZ--
