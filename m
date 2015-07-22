X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2871" "Wednesday" "22" "July" "2015" "09:24:41" "-0500" "Tyler Hicks" "tyhicks@canonical.com" "<20150722142441.GA24809@boyd>" "68" "[oss-security] Security issues in LXC (CVE-2015-1331 and CVE-2015-1334)" nil nil nil "7" "2015072214:24:41" "[oss-security] Security issues in LXC (CVE-2015-1331 and CVE-2015-1334)" (number mark "        tyhicks@cano Jul 22   68/2871  " thread-indent "\"[oss-security] Security issues in LXC (CVE-2015-1331 and CVE-2015-1334)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20455 invoked by uid 550); 22 Jul 2015 14:25:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20365 invoked from network); 22 Jul 2015 14:24:57 -0000
Message-ID: <20150722142441.GA24809@boyd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1LKvkjL3sHcu1TtY"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Roman Fiedler <roman.fiedler@ait.ac.at>,
	Serge Hallyn <serge.hallyn@ubuntu.com>,
	=?iso-8859-1?Q?St=E9phane?= Graber <stgraber@ubuntu.com>,
	security@ubuntu.com
Date: Wed, 22 Jul 2015 09:24:41 -0500
From: Tyler Hicks <tyhicks@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Security issues in LXC (CVE-2015-1331 and CVE-2015-1334)
To: oss-security@lists.openwall.com

--1LKvkjL3sHcu1TtY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Two security issues were found in LXC:

* Roman Fiedler discovered a directory traversal flaw that allows
  arbitrary file creation as the root user. A local attacker must set up
  a symlink at /run/lock/lxc/var/lib/lxc/<CONTAINER>, prior to an admin
  ever creating an LXC container on the system. If an admin then creates
  a container with a name matching <CONTAINER>, the symlink will be
  followed and LXC will create an empty file at the symlink's target as
  the root user.=20
  - CVE-2015-1331
  - Affects LXC 1.0.0 and higher
  - https://launchpad.net/bugs/1470842
  - https://github.com/lxc/lxc/commit/72cf81f6a3404e35028567db2c99a90406e9c=
6e6 (master)
  - https://github.com/lxc/lxc/commit/61ecf69d7834921cc078e14d1b36c459ad8f9=
1c7 (stable-1.1)
  - https://github.com/lxc/lxc/commit/f547349ea7ef3a6eae6965a95cb5986cd921b=
d99 (stable-1.0)

* Roman Fiedler discovered a flaw that allows processes intended to be
  run inside of confined LXC containers to escape their AppArmor or
  SELinux confinement. A malicious container can create a fake proc
  filesystem, possibly by mounting tmpfs on top of the container's
  /proc, and wait for a lxc-attach to be ran from the host environment.
  lxc-attach incorrectly trusts the container's
  /proc/PID/attr/{current,exec} files to set up the AppArmor profile and
  SELinux domain transitions which may result in no confinement being
  used.
  - CVE-2015-1334
  - Affects LXC 0.9.0 and higher
  - https://launchpad.net/bugs/1475050
  - https://github.com/lxc/lxc/commit/5c3fcae78b63ac9dd56e36075903921bd9461=
f9e (master)
  - https://github.com/lxc/lxc/commit/659e807c8dd1525a5c94bdecc47599079fad8=
407 (stable-1.1)
  - https://github.com/lxc/lxc/commit/15ec0fd9d490dd5c8a153401360233c6ee947=
c24 (stable-1.0)

Tyler

--1LKvkjL3sHcu1TtY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVr6epAAoJENaSAD2qAscK03kP/0GibjGEEkqIhvmW9h6YeKWk
4ir1KHA9a6oVND9X3+laBTp7y3erADxmtVt9lKkLWfNoTUqROkBF8VLNEohA75hf
7LkpvSTwMZ7uXnAdRDtIZij/oXOdPniAmBvISpVfAzNChaxlscslU8KzP9kZlUf8
PRLzDKw/UtYgn2SZV4oqyEriVGH1yELO1e27NLw7+FEqeJwA6KfxZRmTnLuRiWu8
Pp5dP1SlTmjmWsFCr7Y0HfIlCpwCpu2QenylppDJASt2A2JQvfmNb7B2McGcyQKU
ijRF/O/rAcurFJ3jXzjbILXyHLX1/E3LdnTiw0+Nx8q4zhHDedwZZ3gCMQuu/c4y
p0MO00PtLtaWNuHUOIgw2kw2mmQpyCIGULB96IfbG8LDfVVPLva+yH8LBj7gBkNx
ZyC7XasJamz1U5gSUC2/3ybbyn+fUNpl4REAANmMdbnAwhycj9l1hXtQ5MkD49dy
f4UekYnyYSG44RoD7QDCq5cItJjUQfopI0vg8Eoh6wkZAPjcstJyalWcYvbv00Th
NlWbyQOiz+bmpHSaswJQJ7CL+77mXxjGvgb8pw9aJbR63PFqMYnBRqm3+KmgXBXQ
ju+v3Z5PaO66Swl+co7dMGYIuVDBou64U4LCNel1GOVwsxvgimZ2yI09FHjIr0/K
03BFiOlG/1T5pOVPHgS1
=+RHj
-----END PGP SIGNATURE-----

--1LKvkjL3sHcu1TtY--
