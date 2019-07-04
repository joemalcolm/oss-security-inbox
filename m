X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3172" "Thursday" "4" "July" "2019" "14:59:14" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20190704125914.GD9530@f195.suse.de>" "81" "[oss-security] deepin-clone: various symlink attacks" nil nil nil "7" "2019070412:59:14" "[oss-security] deepin-clone: various symlink attacks" (number mark "U       mgerstner@su Jul  4   81/3172  " thread-indent "\"[oss-security] deepin-clone: various symlink attacks\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] deepin-clone: various symlink attacks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7516 invoked by uid 550); 4 Jul 2019 12:59:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7484 invoked from network); 4 Jul 2019 12:59:27 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 4 Jul 2019 14:59:14 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20190704125914.GD9530@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6Vw0j8UKbyX0bfpA"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] deepin-clone: various symlink attacks

--6Vw0j8UKbyX0bfpA
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

deepin-clone [1] is a command line and graphical disk backup utility
that is part of the deepin desktop environment (a desktop environment
focused on Chinese users).

In the course of a review [2] of polkit privileges used by the
application the following major security issues have been found:

CVE-2019-13227) in GUI mode deepin-clone creates
  `/tmp/.deepin-clone.log` as root and follows symlinks there.
=20=20
CVE-2019-13226) `Helper::temporaryMountDevice()` uses a predictable path
  `/tmp/.deepin-clone/mount/<block-dev-basename>` to temporarily mount a
  file system there. These paths can be prepared by an attacker and
  symlinks will be followed during mounting. If the attacker wins a race
  condition by quickly entering the mount point then it can also prevent
  the following unmount. This logic can e.g. be triggered by running
  `deepin-clone -i /dev/sdX`.

  An attacker can thus cause the file system to be permanently mounted
  at an arbitrary location in the file system.

CVE-2019-13229) `Helper::getPartitionSizeInfo()` uses /tmp/partclone.log
  as a fixed path during execution of partclone. The same issues about
  symlink attacks etc.  like in 1) apply here.

CVE-2019-13228) similarly in `BootDoctor::fix()` the fixed path
  `/tmp/repo.iso` is created and the fixed directory /tmp/.deepin-clone
  is used. The same concerns as in 1) and 3) apply. By winning a race
  condition to replace the `/tmp/repo.iso` symlink by an attacker
  controlled iso file further privilege escalation may be possible.

The issues have been fixed via the upstream commit [3].

Best Regards

Matthias

[1]: https://github.com/linuxdeepin/deepin-clone
[2]: https://bugzilla.suse.com/show_bug.cgi?id=3D1130388
[3]: https://github.com/linuxdeepin/deepin-clone/commit/e079f3e2712b4f8c28e=
3e63e71ba1a1f90fce1ab

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Linux GmbH
GF: Felix Imend=F6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG Nuernberg)

--6Vw0j8UKbyX0bfpA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl0d+CIACgkQFMQFyXGS
NVPx5g/9GFozK6qVs6pG8xwCSNThJL8v/XP5jPz9lNgKC0ZmW+ca5V3QEBe7Vee8
LAyaMRTYdYlMxSFTaVjbSmfJ3gRlRV1D4QhMtIvHskQgEFYyFgiAIxK3If1IGcpd
wsDTaJnNMMkjZ7D1teAs/lhQ2Cqd6dD3U9EXxHPFgtjbt3U5UEh5Ar2vU8DceDay
7mkQljsDo6wnGFr7mPwNHSL4tjOJGfpYVsph0E1LEgSfsViza2bXjqlcaCHjxHem
EYJ3FvuzgdEcd9Ud5d0BqBTsU9hieCOsLelakkwnChdRuXW3RGuQF2pK3FsspoUp
O6HlQY/sc/lE2SoOa6XJxUkhl2WE1n/j+ew6Zfv0Ux/vVNgCUaCbVtltBeR6RJ0n
dx+umEtA7TidNjfcjK5tiFAABNmODpP1y6JfGBimY+QyEd63vJao4rdb3t2eSYUm
mNjTA3NtgmldldC2rmnXRRNxCXD1TSJKyQqj4eHdAA/CDjQv5d2i8KHj1DzhPHfm
4mQBIVofGRQE47ZYuMwvd9DhzTEj0BokX+4JutQZj616ua7AJHdHvzDraZKLx1v9
50wyBw2u6bNLw4mbW/5u9KQN35tdO5PSIfVnOQXV1oQpLxfJ3J4ZJoCy/4jZQwvt
f/7kdAkRCElEVtEp5sGSR7hVyn76XbI6zne0oDaqbLH3ouRt3rI=
=QC7Q
-----END PGP SIGNATURE-----

--6Vw0j8UKbyX0bfpA--
