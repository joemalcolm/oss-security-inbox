X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1988" "Thursday" "15" "April" "2021" "14:31:14" "-0700" "Steve Beattie" "steve.beattie@canonical.com" nil "54" "[oss-security] [CVE-2021-3493] Ubuntu Linux kernel overlayfs fs caps privilege escalation" nil nil nil "4" nil nil (number mark "U       steve.beatti Apr 15   54/1988  " thread-indent "\"[oss-security] [CVE-2021-3493] Ubuntu Linux kernel overlayfs fs caps privilege escalation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-3493] Ubuntu Linux kernel overlayfs fs caps privilege escalation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25832 invoked by uid 550); 16 Apr 2021 10:10:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13519 invoked from network); 15 Apr 2021 21:32:02 -0000
Date: Thu, 15 Apr 2021 14:31:14 -0700
From: Steve Beattie <steve.beattie@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20210415213114.GA5315@nxnw.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EeQfGwPcQSOJBaQU"
Content-Disposition: inline
X-PGP-Key: http://www.NxNW.org/~steve/005E81F4.txt
Subject: [oss-security] [CVE-2021-3493] Ubuntu Linux kernel overlayfs fs caps privilege
 escalation

--EeQfGwPcQSOJBaQU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

An independent security researcher reported via the SSD Secure
Disclosure program that the overlayfs stacking file system within the
Linux kernel as used within Ubuntu did not properly validate the
application of file capabilities against user namespaces.

This issue is likely Ubuntu specific, as Ubuntu carries a patch to
enable unprivileged overlayfs mounts. The combination of that patch
plus allowing unprivileged user namespaces by default in Ubuntu allows
an unprivileged attacker to gain elevated privileges.

A commit that addresses the issue was applied in the upstream kernel:

  7c03e2cda4a5 ("vfs: move cap_convert_nscap() call into vfs_setxattr()") (=
v5.10)

It was added prior to the upstream kernel commit allowing unprivileged
overlayfs mounts:

  459c7c565ac3 ("ovl: unprivieged mounts") (v5.11)

Thus the upstream Linux kernel is not affected.

--=20
Steve Beattie
<sbeattie@ubuntu.com>

--EeQfGwPcQSOJBaQU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEpgY7tWAjCaQ8jrvULwmejQBegfQFAmB4sKIACgkQLwmejQBe
gfQnhw/+MngnHCijM9f87KZ0vsEdNWSo+h1N1kBEi9hYYOwarrDA0hoyN+eSPdnn
ZZIpB3AWJ64s6nq5n65wogKwYWijCLF7raWlgoJWkd+votYoNV8iEjcTIjNN96Un
d4VnwuuDgC4Ksu775XGFHdEjC/DN0M5DltR/08Q54MqIUPPJhCf4Wqtsqw3Ugsgu
m9AwAyqOvDfL39lIyrA7P/oueQoxnbiF/DKB27bymiqppfNJIVDBCtyAWjHTj0nG
6htt8JNeLwpsBecyff6RL6iLAJsTBLRRpnxBKQ/vgCMuBkfUUMXGoqo2ZUeiXN/X
h5Bw7z2nv/HXuaOGQyvUQSokouER2QBQBbjmks80/QJKCwo5Jib4GJjdt1/jpwO2
ScxwM7CXsvh6DGHjV+PXo9ZnTl54iNMAUhffS5Dcnm1gMSEKrNsZhPvGEGkNzYyg
Ja7MMi9IxcjooAuceTjGi768YVxg5h12aQ5JLMCNU0A8KMlR6SxHsNG28PXCHaes
FUv/HCYlbHGQL7WdeDQABFOwgP78aaiwrHyTATPTKCMMK8q+dND34IVDI3Bfn/+L
neJIApQe9T33/F/xxWO9kfwWS5DdOKPQ5LwdSlT3y3czJvEgM67PG6uTgtnDkSW/
Op61gxnaQ37qaabhMmTnopqHgfCLQU6uq8rBHcb56dlT+U3XGUM=
=haW7
-----END PGP SIGNATURE-----

--EeQfGwPcQSOJBaQU--
