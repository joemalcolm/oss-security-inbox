X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4957" "Tuesday" "19" "January" "2021" "15:30:39" "+0100" "Matthias Gerstner" "mgerstner@suse.de" "<YAbtDzwSAq3kkWxB@f195.suse.de>" "107" "[oss-security] segv_handler junkcode snippet / openSUSE segv_handler package potential local root exploit" nil nil nil "1" "2021011914:30:39" "[oss-security] segv_handler junkcode snippet / openSUSE segv_handler package potential local root exploit" (number mark "U       mgerstner@su Jan 19  107/4957  " thread-indent "\"[oss-security] segv_handler junkcode snippet / openSUSE segv_handler package potential local root exploit\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] segv_handler junkcode snippet / openSUSE segv_handler package potential local root exploit" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29888 invoked by uid 550); 19 Jan 2021 14:30:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29830 invoked from network); 19 Jan 2021 14:30:51 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Tue, 19 Jan 2021 15:30:39 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <YAbtDzwSAq3kkWxB@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qciJQxT86hkR/wV6"
Content-Disposition: inline
Subject: [oss-security] segv_handler junkcode snippet / openSUSE segv_handler package
 potential local root exploit

--qciJQxT86hkR/wV6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

I stumbled over this old code from samba / "junkcode" [1]. The code
demonstrates the idea how to establish a temporary or global
segmentation fault handler via an LD_PRELOAD library. This code ended up
in an openSUSE package "segv_handler" for a long time e.g. in [2]. I am
not aware of any other cases where this code has been released for
production use.

The documentation suggests to install the library globally via
/etc/ld.so.preload. If done this way the code will be used by all
programs in the system, including setuid-root programs.

The code has various issues:

1) the accompanying "backtrace" script is invoked via the `system()`
  library call and the command line constructed in line 22 does not escape
  any special characters. Thus if an executable name (as obtained from
  /proc/self/exe) contains special characters, then this will have side
  effects. It should not be a big security issue, because the "root" user
  should not typically run executables that are named by potential
  attackers.
2) the "backtrace" script uses a predictable temporary file in
  "/tmp/gdb.$$".  The contents of this file will be used as a command
  source file to `gdb -x`.  Thus if an unprivileged local attacker manages
  to precreate this file it can try to win a race condition and feed
  arbitrary commands to the `gdb` invoked potentially by the "root" user.
  This can allow for a full local root exploit.
3) the "backtrace" script invokes the "cat" and "gdb" commands using
  non-absolute path names. In the context of a setuid-root binary that
  does not sanitize the PATH environment variable this would allow an
  unprivileged user to execute arbitrary commands.
4) the hardcoded directory path for backtraces in /var/log/segv would
  need to be setup as a sticky-bit directory with mode 1777 to work for
  all users in the system. Then segv_handler.c line 24 would become
  subject to possible symlink attacks, however, when the path
  "/var/log/segv/segv_<exe>.<pid>.out" is created. The openSUSE package in =
[2]
  uses the /tmp/ directory for this purpose and is thus affected.
5) The backtraces created in /var/log/segv will be created with the
  umask of the process running the segfault handler. If the directory
  /var/log/segv is world-readable and the created backtrace files are also
  world readable then this poses an information leak towards other users
  in the system. Data found in stack variables or pointer values can be
  used for further attacks.

Some of the issues can be mitigated by protection mechanisms. The bash
shell by default drops privileges when invoked in a setuid-root context
which would mitigate issues 1), 2) and 3) (in fact this means that
segv_handler will not work for setuid-root programs at all in this
case). The kernel's symlink protection would protect against 4).

I contacted the code's author Andrew Tridgell ("Tridge") on 2021-01-07
about these concerns and suggested to remove this example code, document
the issues or fix the code. He expressed that he would like to adjust
the code but we did not come to a conclusion yet.

I could not find any trace that this code or the openSUSE package are in
active use anywhere, therefore we will remove this package from
openSUSE. I suggest to use the Linux kernel's core_pattern feature
instead (see `man 5 core`) or one of the integrated crash handlers like
provided by systemd (coredumpctl) or Ubuntu (apport).

[1]: https://www.samba.org/ftp/unpacked/junkcode/segv_handler/
[2]: https://build.opensuse.org/package/show/openSUSE:Leap:15.0/segv_handler

Cheers

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer

--qciJQxT86hkR/wV6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmAG7QwACgkQFMQFyXGS
NVNbTBAAgIHxxBsXV7+TdQ+wB/nX8XsHIAG7We335lRvKmjlTVT+fJKx64qOD6zW
QrnE6cGaBRYhri50GG44KLVW4eaGetBZpCdn+NOotsk83u0Ao+pgJeIg8ME10Rye
o3NODXxjRrFcIRwfbIeItVzscESwxDAvMAfTxhRKzHiuleULCVDnQn6oGdEyRZgA
vnRPjh3z2JuazgFBbAd73Ksacb0JIPfNZ5zzBnPvZ246WM0tKCRIbchOF4e7ACW7
i2u9l2OWG11VU0I0vtLyHkYy09gVjuhK0usmGaW4zc3BFBfjyTQHXsvcERQt+1G9
O/44xunU1l/tLF4BDCLWDl1v4jpNodljjiRpue0xG30VTyZ4JcbP9TdBRtcDC6fm
lcWvFSUsiA4NMyqOeOWzUVeeEc1gx7uHYlI49BZTKw1QarjRlCWcG7rCedMkBo6K
kyvTGMv05VyJ0lktPs0XkiI+TG2hO+ivPS40ePlfKsNOCQ6FGUBslfdqcnqqJNE6
c6Da8IiOwrMcGZ80DsIh45kgXI/ibH9xCsxOoysBtT5U07KqmMzx8/VJEV1+viD9
53/weNh5ZoldZf+T0cD+XiGn2tg3ZrLXc3YhXXvVCQTMwPVI39gADPLbZ96GMJvC
d3/GSVeMwiO1xnh90SmwcmZwzB3vYcUM6xtXvGE9NBgsaFXSIsY=
=4hrR
-----END PGP SIGNATURE-----

--qciJQxT86hkR/wV6--
