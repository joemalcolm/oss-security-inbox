X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4095" "Thursday" "4" "June" "2020" "14:28:11" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20200604122811.GA31148@f195.suse.de>" "116" "[oss-security] linux-pam: pam_setquota.so vulnerability facilitated through fusermount setuid-root program" nil nil nil "6" "2020060412:28:11" "[oss-security] linux-pam: pam_setquota.so vulnerability facilitated through fusermount setuid-root program" (number mark "U       mgerstner@su Jun  4  116/4095  " thread-indent "\"[oss-security] linux-pam: pam_setquota.so vulnerability facilitated through fusermount setuid-root program\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] linux-pam: pam_setquota.so vulnerability facilitated through fusermount setuid-root program" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11906 invoked by uid 550); 4 Jun 2020 12:28:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11887 invoked from network); 4 Jun 2020 12:28:23 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 4 Jun 2020 14:28:11 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20200604122811.GA31148@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HlL+5n6rz5pIUxbD"
Content-Disposition: inline
Subject: [oss-security] linux-pam: pam_setquota.so vulnerability facilitated through
 fusermount setuid-root program

--HlL+5n6rz5pIUxbD
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

During a review of newly added PAM modules in the linux-pam project [1]
I found a vulnerability [2] in the pam_setquota.so module.

Vulnerability Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The pam_setquota module iterates over all mounted file systems using
`setmntent()` and `getmntent()`. It tries to find the longest match of a
file system mounted on /home/$USER or above (except when the explicit
fs=3D/some/path parameter is passed to the pam module).

The home directory /home/$USER is owned by the unprivileged user,
however. There exist tools like `fusermount` from libfuse which is by
default installed setuid-root for everybody. `fusermount` allows
unprivileged users to mount a FUSE file system using an arbitrary
source device name.

Thus given the following precondition:

1) there is only the root file system (/) or a file system is mounted on
   /home, but not on /home/$USER.

a non-privileged attacker can achieve the following:

2) the attacker mounts a fake FUSE file system over its own home directory:

  ```
  user $ export _FUSE_COMMFD=3D0
  user $ fusermount $HOME -ononempty,fsname=3D/dev/sda1
  ```

  This will result in a mount entry in /proc/mounts looking like this:

  ```
  /dev/sda1 on /home/user type fuse (rw,nosuid,nodev,relatime,user_id=3D100=
0,group_id=3D100)
  ```

3) when the attacker now logs in with pam_setquota configured then
   pam_setquota will identify /dev/sda1 as the file system to apply the
   user's quota on.

As a result an unprivileged user has full control over onto which block
device the quota is applied.

Consequences Regarding `fusermount`
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

It seems that developers find it suprising that regular user accounts
can specify arbitrary source device names in mount entries. It would be
desirable to apply restrictions on the source device string in the
`fusermount` setuid-root tool. It will probably be difficult to
implement this in a backward-compatible and safe way, however.

Bugfix
=3D=3D=3D=3D=3D=3D

This issue is fixed via upstream commit
27ded8954a1235bb65ffc9c730ae5a50b1dfed61 [3].

Vulnerability Reporting
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

This finding was reported privately to upstream. Since the
pam_setquota.so PAM module was never part of an official release no
embargo was setup.  For this reason I also did not request a CVE for the
issue.

[1]: https://github.com/linux-pam/linux-pam.git
[2]: https://bugzilla.suse.com/show_bug.cgi?id=3D1171721
[3]: https://github.com/linux-pam/linux-pam/commit/27ded8954a1235bb65ffc9c7=
30ae5a50b1dfed61

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


--HlL+5n6rz5pIUxbD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl7Y6NcACgkQFMQFyXGS
NVPsWhAAlCR6S57459RVC7YD1qwyGPaHu4ZqUgFqHWcs++xyGbzbGJJgQGCG/am3
ImmiqydDJvgfyoaiZu8mzkA4N644n19pkP98RQxKuxVFgj0BM4lr5Hnd1BJuHg8k
x58IArYxKqfC2OUWJ1GWlZBZ2KtfoTXVuRkSYKk+b99lZdia1apg73ScRgWOlF/d
8hlFHFpvyXo8vIM1Kzfug9ILnaWiHBSVHKda442lKSYDAmteF+LQ+TfjNewv73up
iO41Eqs3DSKob/J+o8U6PUq58oy948phMABhwK7jaeK6MvUA3hVBHw48bYYe9dGV
PELhenGaKP/bhBmCIpzxx2k3IH4ExNX83F9Q3CEZ0G70//3d30GJs9s+hhB83X+c
V9RIWgPlb9hSmEW1jzTBMZlSTxXB8KTiGCLm65cz3Wo4hMhA3L8Mo3WbZQI5JTtL
3uMrkVrsF1NCPwEtzlG6v7krA90GeA1+AuyVLsjROZsUYg9Ag73tR8s4xRD23ilM
HEvRRBm5Z01H4I+fCDcUYhRa6c9K/toQOIV4dYi4UDmkYJEnN/Bs90hj5Ks1oTZF
AqQAM6IpxJdl36gIb8obpp70gYpXHpOjZuNYdxT5ps4b12IQVknZZONfJlKSOLJ9
dIdLZlmM3hotT202gse54YPNwslsXDH0zG95Ik/kjFhju6Jz6cg=
=WdKA
-----END PGP SIGNATURE-----

--HlL+5n6rz5pIUxbD--
