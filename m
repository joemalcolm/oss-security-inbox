X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5503" "Thursday" "4" "June" "2020" "16:09:59" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20200604140959.GA436@f195.suse.de>" "165" "[oss-security] xawtv: CVE-2020-13696: v4l-conf setuid-root program allows file existence tests and open(..., O_RDRW) on arbitrary files" nil nil nil "6" "2020060414:09:59" "[oss-security] xawtv: CVE-2020-13696: v4l-conf setuid-root program allows file existence tests and open(..., O_RDRW) on arbitrary files" (number mark "U       mgerstner@su Jun  4  165/5503  " thread-indent "\"[oss-security] xawtv: CVE-2020-13696: v4l-conf setuid-root program allows file existence tests and open(..., O_RDRW) on arbitrary files\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] xawtv: CVE-2020-13696: v4l-conf setuid-root program allows file existence tests and open(..., O_RDRW) on arbitrary files" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26577 invoked by uid 550); 4 Jun 2020 14:10:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26559 invoked from network); 4 Jun 2020 14:10:11 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 4 Jun 2020 16:09:59 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20200604140959.GA436@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Y7xTucakfITjPcLV"
Content-Disposition: inline
Subject: [oss-security] xawtv: CVE-2020-13696: v4l-conf setuid-root program allows file
 existence tests and open(..., O_RDRW) on arbitrary files

--Y7xTucakfITjPcLV
Content-Type: multipart/mixed; boundary="ibTvN161/egqYuK8"
Content-Disposition: inline


--ibTvN161/egqYuK8
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hallo,

xawtv [1] contains a setuid-root program called `v4l-conf` that is
supposed to allow regular users to configure v4l devices. xawtv is
pretty old code but it is stilled shipped on some distributions like
Debian and openSUSE.

Vulnerability Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

While checking the source code of `v4l-conf` I noticed that it allows
regular users to perform arbitrary file existence tests and also to
perform `open(..., O_RDWR)` and `fstat()` system calls on arbitrary
files. The issue is found in the `dev_open()` function which only
contains a naive security check:

```
    if (strncmp(device, "/dev/", 5)) {
	fprintf(stderr, "error: %s is not a /dev file\n", device);
	exit(1);
    }
```

This check is not safe against relative path components or symlinks in
/dev/shm. Example:

```
# in this case the file does not exist
user $ v4l-conf -c /dev/../root/.bashrc
VT_GETSTATE is not supported: Inappropriate ioctl for device
mode: 0x0, depth=3D0, bpp=3D0, bpl=3D0, base=3Dunknown
can't open /dev/../root/.bashrc: No such file or directory

# in this case the file exists
user $ v4l-conf -c /dev/../root/.bash_history
VT_GETSTATE is not supported: Inappropriate ioctl for device
mode: 0x0, depth=3D0, bpp=3D0, bpl=3D0, base=3Dunknown
/dev/../root/.bash_history: wrong device
```

Some devices in /dev might also trigger code paths upon open() in the
kernel that are usually not reachable to regular users.

Bugfix
=3D=3D=3D=3D=3D=3D

Upstream added two fixes in their Git repository [2]:

- commit 31f31f9cbaee7be806cba38e0ff5431bd44b20a3
- commit 36dc44e68e5886339b4a0fbe3f404fb1a4fd2292

The fix is still incomplete though. It avoids to perform an `open()` on
unintended files. But it still allows the file existence test to be
performed. Attached is a small patch that fixes also that.

Timeline
=3D=3D=3D=3D=3D=3D=3D=3D

2020-05-14: I privately reported the finding to
            mchehab+samsung@kernel.org, one of the xawtv maintainers
	    denoted in [3].
2020-05-14 - 2020-05-29: various discussions with the maintainer about
            the fix. He published the partial fixes in the Git
	    repository right away.
2020-05-29  I reported to the maintainer that the fix is still
            incomplete but did not hear back since then.
2020-05-29  I requested and obtained a CVE from Mitre for this issue.

[1]: https://www.linuxtv.org/wiki/index.php/Xawtv
[2]: https://git.linuxtv.org/xawtv3.git
[3]: https://www.linuxtv.org/wiki/index.php/Media_Maintainers#XawTV

Cheers

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer


--ibTvN161/egqYuK8
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="0001-v4l-conf-use-the-same-error-messages-for-stat-and-ty.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 693b157c3e290bd72588be058b1fc61429ceb3dd Mon Sep 17 00:00:00 2001
From: Matthias Gerstner <matthias.gerstner@suse.de>
Date: Thu, 4 Jun 2020 15:59:08 +0200
Subject: [PATCH] v4l-conf: use the same error messages for stat() and type
 errors

Only this way arbitrary file existence tests can be avoided. Otherwise
an unprivileged user will get different messages for existing files of
the wrong type than for non-existing files.
---
 console/v4l-conf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/console/v4l-conf.c b/console/v4l-conf.c
index 0e8d3e3..aee5bda 100644
--- a/console/v4l-conf.c
+++ b/console/v4l-conf.c
@@ -143,12 +143,12 @@ dev_open(const char *device, int major)
=20
     /* First check if the device is really a devnode of the right type */
     if (-1 =3D=3D stat(device, &stb)) {
-	fprintf(stderr, "stat failed on %s\n", device);
+	fprintf(stderr, "%s: invalid path or file is not of the right type\n", de=
vice);
 	exit(1);
     }
=20
     if (!S_ISCHR(stb.st_mode) || (major(stb.st_rdev) !=3D major)) {
-	fprintf(stderr, "%s: wrong device\n", device);
+	fprintf(stderr, "%s: invalid path or file is not of the right type\n", de=
vice);
 	exit(1);
     }
=20
--=20
2.26.2


--ibTvN161/egqYuK8--

--Y7xTucakfITjPcLV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl7ZALYACgkQFMQFyXGS
NVPy+w//YlFXQCTbjtrq+hr0QGMc8XPE+Gyl42Hok8qdu/UXLrLYYisHk81tEJ/N
MeC/dbvjgw6SbxGNsJwqd0t2uItLTq3AM5t0Sat+gWWg941hLm5B8Ha6YcsqS4gP
AVfYXWmLUsVyV+qSUfSGSKXca/KI1Pa9KHtfCQzvC+rYU8z8brug+FlK5fwcjvvC
9DfscU73cO8GAZExMWg4Jzy7OFOxaQJDeDeFSWHi5II49YkmwI6O6jh+lKUdE4Xu
veEdukJ0PaaYiE/321oZVluvLR5IiyGUepwtZSIReTMeiVPQI+vYZMDfwaqZIiJa
4MlcwA1DbvbkhNQVdx53lRGza/DQYeZZcUjc8jcVWeJPQEqecJKNA/AermXWzgzu
j1zQ8/cRFT1fHyh1bBXHJWubNiYhQQznKtonCc4f9gxoPX35yokCPoXitPy5MGwT
sM4a0aPxEm+yTG5OldaIIuZfkN8QuIxgtgAdeMBzbS3fcpxQg/A7ZRYtWhRd9Vg8
4/TsorVZJDN3vRH63zX5h0bLcITCTaAi9yy9quybQnrpJ/7oNHAVnSmYRYf7floX
AYniD1ItcJo1LUcXMHQib0q14m4okN3LqRkkpNMpvp4+/Qpx+Bef4eyu+XRR8fUS
8eO/2gxymp0RA5JtmLuCZVQbNLinbb7VY36JcLIuxQo2fSrTPkg=
=OuSP
-----END PGP SIGNATURE-----

--Y7xTucakfITjPcLV--
