X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2505" "Wednesday" "5" "February" "2020" "13:45:21" "+0100" "Matthias Gerstner" "mgerstner@suse.de" nil "72" nil "^Date:" nil nil "2" nil nil (number mark "        mgerstner@su Feb  5   72/2505  " thread-indent "\"[oss-security] CVE-2019-18901: mariadb: possible symlink attack for the mysql user in the SUSE specific mysql-systemd-helper script\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-18901: mariadb: possible symlink attack for the mysql user in the SUSE specific mysql-systemd-helper script" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13850 invoked by uid 550); 5 Feb 2020 12:45:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13832 invoked from network); 5 Feb 2020 12:45:49 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20200205124521.GA16369@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pf9I7BMVVzbSWLtt"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Wed, 5 Feb 2020 13:45:21 +0100
From: Matthias Gerstner <mgerstner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-18901: mariadb: possible symlink attack for the mysql user
 in the SUSE specific mysql-systemd-helper script
To: oss-security@lists.openwall.com

--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

in the course of a review of the mariadb packaging in the SUSE Linux
distribution I discovered that a SUSE specific helper script
"mysql-systemd-helper" unsafely operates with root privileges in
the /var/lib/mysql directory [1].

During initial package installation and during upgrade scenarios the
file /var/lib/mysql/mysql_upgrade_info is created/overwritten and
modified using the following shell commands:

```
echo -n "$MYSQLVER" > "$datadir"/mysql_upgrade_info
chmod 640 "$datadir/mysql_upgrade_info"
```

Since the unprivileged mysql user owns the parent directory it can
remove this file and replace it with a symlink to write/overwrite in
privileged file systems locations. This could mostly be used for
denial-of-service purposes, a full privilege escalation should not be
easily achieved by this vulnerability, since the file content cannot be
controlled by a potential attacker.

Future SUSE mariadb packages will keep this file in a safe location in
/var/lib/misc. Older, still supported packages will be fixed soon.

Cheers

Matthias

References
----------

[1]: https://bugzilla.suse.com/show_bug.cgi?id=3D1160895

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer

--pf9I7BMVVzbSWLtt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl46uOEACgkQFMQFyXGS
NVNePBAAh4MPGcKeYKznG/bgkZ3Rw8D+b70kaJ6pVDoUnBo3D1yrg5lxu4B0quKm
oAp0jWyyE+mSl0ww/YntCq7jeVDqOVfr3hn7aNgBJBQLTX5Zrv9hVWmHKPyA/ePr
oCaHueOL/9wNB6k1iVdexjzcboulLZfRkDheUbTTCoVWBrARJ5b1RM34zs/EIyZx
PE2bxubqFNOvWkuEBD4IQguzkInGXYfyoHMslB2NoMSkfQ+++zGqospJ5c0wHlVq
JLP0Y+hw44R/bzBT+xOG+HOHlhpsslIh/RkB63R023YZd2vZEBL2pMaR7hlHHyNH
DX0/dyZget9piwChX3A5zuzofq6Wfdl6x9TplG+va5+yJ0Lj11BHqcHDBlK4erXX
nv5KOFlRMlNE/o/p2xPT4Ow/ThPu0QTVIHWN55Fe7U/2RBXnVr+HHtpb4iUJV09z
d4/3Lch2208TfdHWQpet8/Y5vC6/zWpv2ATkqNii/5bqSjSRoEIH5SY6LA3y+675
8ujAgQVBilfChjuFdKpD2eL/1ZqZaNkdiFhPeA0MpSv07ekMXuGhfJRUc6TSIVO2
0wcv/lGjUErLFtHG4JassGbQYwscbNoFNgEcoe0K4iD5V11MzLRExO3/pePg3+Hr
A4MvCvw/7Do80i5zNLjkrjJi2nNxQt5ps0wy6N21EOJYU6+dEFI=
=LtuU
-----END PGP SIGNATURE-----

--pf9I7BMVVzbSWLtt--
