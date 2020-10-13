X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2563" "Tuesday" "13" "October" "2020" "10:10:34" "-0700" "Steve Beattie" "steve.beattie@canonical.com" "<20201013171034.GA68820@nxnw.org>" "73" "[oss-security] CVE-2020-16120 - incorrect unprivileged overlayfs permission checking" nil nil nil "10" "2020101317:10:34" "[oss-security] CVE-2020-16120 - incorrect unprivileged overlayfs permission checking" (number mark "U       steve.beatti Oct 13   73/2563  " thread-indent "\"[oss-security] CVE-2020-16120 - incorrect unprivileged overlayfs permission checking\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-16120 - incorrect unprivileged overlayfs permission checking" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23885 invoked by uid 550); 13 Oct 2020 17:12:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23601 invoked from network); 13 Oct 2020 17:10:50 -0000
Date: Tue, 13 Oct 2020 10:10:34 -0700
From: Steve Beattie <steve.beattie@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20201013171034.GA68820@nxnw.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="J2SCkAp4GZ/dPZZf"
Content-Disposition: inline
Organization: North by Northwest Consolidated Industries, LLC
X-PGP-Key: http://www.NxNW.org/~steve/005E81F4.txt
Subject: [oss-security] CVE-2020-16120 - incorrect unprivileged overlayfs permission checking

--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

CVE-2020-16120 - incorrect unprivileged overlayfs permission checking

Giuseppe Scrivano discovered that overlayfs did not properly perform
permission checking when copying up files in an overlayfs, and can be
exploited from within a user namespace, if, for example, unprivileged
user namespaces are allowed.

An attacker can abuse this to get read access to files on the system
that they would not normally be permitted to access.

This likely only has an impact on Ubuntu kernels, where unprivileged
user namespaces are enabled by default.

The following upstream commits address the issue:

  48bd024b8a40d73ad6b086de2615738da0c7004f ("ovl: switch to mounter creds i=
n readdir")
  56230d956739b9cb1cbde439d76227d77979a04d ("ovl: verify permissions in ovl=
_path_open()")
  05acefb4872dae89e772729efb194af754c877e8 ("ovl: check permission to open =
real file")

The following commits also may be desired or necessary:

  130fdbc3d1f9966dd4230709c30f3768bccd3065 ("ovl: pass correct flags for op=
ening real directory")
  292f902a40c11f043a5ca1305a114da0e523eaa3 ("ovl: call secutiry hook in ovl=
_real_ioctl()")

Mitigation on systems where unprivileged user namespaces are enabled
but not needed is to set the kernel.unprivileged_userns_clone sysctl
to 0. e.g.:

  $ sudo sysctl kernel.unprivileged_userns_clone=3D0

and across reboots by adding a file in /etc/sysctl.d/ that contains:

  kernel.unprivileged_userns_clone=3D0

Thanks.

--=20
Steve Beattie
<sbeattie@ubuntu.com>

--J2SCkAp4GZ/dPZZf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEpgY7tWAjCaQ8jrvULwmejQBegfQFAl+F34oACgkQLwmejQBe
gfTYUw//WX9T5fkdT9BkjgJ2FtKFV3ubgfgbqAw+AYTrIoN+aoQ86fPQlrROtWDT
t/fvlh7+6EnkU8QjG2HqlVCU+Pkk5gTi0oCQfpIh5O0clzpR2GYJQnnfdfRLC8zl
oN8UpYa01xK7IGNrDjd74qKRSfho2puT8LWSeeCWUD7EYZ+toZPEiQsbfHv5ewRW
L0OXGvxx+i2QAZbJD37MsPg9an6RuixDoWhPwq2z4p2mqEu96iTo8sq6oN680AgI
9FVHErdH1DTlbS+7VLPF+JHYT25m4xvDmKhwE+CBTAL6TYTG1er6g6V4QPnA5OXC
rxgDVVtSl3Pe0YtWUPJHkfapND05YQJS8Yvo34b1TD1HT3MTdPDgAQ+18j3h5fAH
+GAo8kvrgBeplZdWNE76JCcau3tBdyeiIzL3pmS1cLZluIb+Y7+QC8Z+ZgmaoEnG
SpIa2xDdYbVoJy4qK+6F9/hQBWKOscJDgHIWeUd24XVbXCRxms458gUgcLsxdxMP
Q5EbFso+l8ZGBQ1grmiDODiRouwFf00BYxFWyhzbmnG3Txy6+wwwvUrvFtHn5x0Z
hl37JrRqjYkRy+wn9RcqW4j16WG503oY9zGEQqe9brAuCSvPtfWM8hiavIrEv0eF
SpQPn70ektXGYBWJTO1j2xyqhRhYAY8kYuZG/k5iciGnUZZU4MU=
=Mv0e
-----END PGP SIGNATURE-----

--J2SCkAp4GZ/dPZZf--
