X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5965" "Tuesday" "4" "February" "2020" "11:26:04" "+0100" "Matthias Gerstner" "mgerstner@suse.de" "<20200204102604.GB11664@f195.suse.de>" "157" "[oss-security] CVE-2020-7221: mariadb: possible local mysql to root user exploit in mysql_install_db script setting permissions of /usr/lib64/mysql/plugin/auth_pam_tool_dir/auth_pam_tool" "^Date:" nil nil "2" "2020020410:26:04" "[oss-security] CVE-2020-7221: mariadb: possible local mysql to root user exploit in mysql_install_db script setting permissions of /usr/lib64/mysql/plugin/auth_pam_tool_dir/auth_pam_tool" (number mark "        mgerstner@su Feb  4  157/5965  " thread-indent "\"[oss-security] CVE-2020-7221: mariadb: possible local mysql to root user exploit in mysql_install_db script setting permissions of /usr/lib64/mysql/plugin/auth_pam_tool_dir/auth_pam_tool\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-7221: mariadb: possible local mysql to root user exploit in mysql_install_db script setting permissions of /usr/lib64/mysql/plugin/auth_pam_tool_dir/auth_pam_tool" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22524 invoked by uid 550); 4 Feb 2020 10:26:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22506 invoked from network); 4 Feb 2020 10:26:17 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20200204102604.GB11664@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="RASg3xLB4tUQ4RcS"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Tue, 4 Feb 2020 11:26:04 +0100
From: Matthias Gerstner <mgerstner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-7221: mariadb: possible local mysql to root user exploit in
 mysql_install_db script setting permissions of
 /usr/lib64/mysql/plugin/auth_pam_tool_dir/auth_pam_tool
To: oss-security@lists.openwall.com

--RASg3xLB4tUQ4RcS
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

in the course of a review of a newly added setuid-root binary
(auth_pam_tool) in recent mariadb releases I discovered a local mysql
user to root privilege escalation.

The issue stems from the mysql_install_db script where the following
lines are found in mariadb releases ranging from 10.4.7 up and including
to 10.4.11:

```
    if test -n "$user"
    then
      chown $user "$pamtooldir/auth_pam_tool_dir" && \
      chmod 0700 "$pamtooldir/auth_pam_tool_dir"
      if test $? -ne 0
      then
          echo "Cannot change ownership of the '$pamtooldir/auth_pam_tool_d=
ir' directory"
          echo " to the '$user' user. Check that you have the necessary per=
missions and try again."
          exit 1
      fi
      if test -z "$srcdir"
      then
        chown 0 "$pamtooldir/auth_pam_tool_dir/auth_pam_tool" && \
        chmod 04755 "$pamtooldir/auth_pam_tool_dir/auth_pam_tool"
        if test $? -ne 0
        then
            echo "Couldn't set an owner to '$pamtooldir/auth_pam_tool_dir/a=
uth_pam_tool'."
            echo " It must be root, the PAM authentication plugin doesn't w=
ork otherwise.."
            echo
        fi
      fi
      args=3D"$args --user=3D$user"
    fi
```

In a typical MariaDB installation where $user is set to the mysql user
this will perform the following sequence of commands as root:

```
    chown mysql /usr/lib64/mysql/plugin/auth_pam_tool_dir
    chmod 0700 /usr/lib64/mysql/plugin/auth_pam_tool_dir
    chown 0 /usr/lib64/mysql/plugin/auth_pam_tool_dir/auth_pam_tool
    chmod 04755 /usr/lib64/mysql/plugin/auth_pam_tool_dir/auth_pam_tool
```

These steps are executed unconditionally no matter what the current
owner and mode of the auth_pam_tool_dir are. If the mysql account is
compromised then an attacker can prepare a symlink attack or simply
place an arbitrary binary in auth_pam_tool_dir/auth_pam_tool which will
gain setuid-root privileges once mysql_install_db is run. This way the
mysql user can gain full root privileges easily.

The mysql_install_db script can be invoked automatically, depending on
the actual integration into a Linux distribution, e.g. during RPM
installation time or during systemd service start time. It can also be
invoked interactively by an Administrator (it is placed in /usr/bin).

Upstream decided to fix [1] this issue by only executing the commands in
question when the `--rpm` command line parameter is *not* passed. Thus
in typical package manager integrations the vulnerability hopefully
doesn't show any more by default. It will still occur when
Administrators interactively run the command without the `--rpm` switch.
The rationale behind this is support for users that extract tarballs
manually (probably without correctly preserving permissions) to install
MariaDB.

For Deb/RPM packaging MariaDB continues to suggest to use the following
dir and file modes [2], [3]:

mysql:root  0700 /usr/lib/mysql/plugin/auth_pam_tool_dir
 root:root 04755 /usr/lib/mysql/plugin/auth_pam_tool_dir/auth_pam_tool

I personally suggest the following directory mode instead:

root:mysql  0750 /usr/lib/mysql/plugin/auth_pam_tool_dir

This way the hardening is still intact (i.e. the setuid-root binary is
not publically available to users in the system, but only to members of
the mysql group) while the dangerous situation of a setuid-root binary
residing in a directory owned by an unprivileged user is avoided. The
latter situation can easily lead to race conditions e.g. when programs
try to replace the "auth_pam_tool" binary with a new version.

I also recommend a patch of the mysql_install_db script towards this
directory mode, to make the default behaviour of the script more secure.

Cheers

Matthias


Timeline
--------

2020-01-14: I privately reported the issue at security@mariadb.org.
2020-01-14: Upstream replied and confirmed the issue. They asked me to
  wait until the next release of MariaDB before publication of the
  issue.
2020-01-16: I attempted a deeper technical discussion with upstream
  about an appropriate fix, but it died down. I shared a CVE for use
  with this issue with upstream.
2020-01-28: MariaDB 10.4.12 got released, containing an attempted fix
  for the issue. I was not informed about the publication by upstream.

References
----------

[1]: https://github.com/MariaDB/server/commit/9d18b6246755472c8324bf3e20e23=
4e08ac45618
[2]: https://github.com/MariaDB/server/blob/mariadb-10.4.12/debian/rules#L1=
51
[3]: https://github.com/MariaDB/server/blob/mariadb-10.4.12/plugin/auth_pam=
/CMakeLists.txt#L20
[4]: https://bugzilla.suse.com/show_bug.cgi?id=3D1160868

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer

--RASg3xLB4tUQ4RcS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl45RrwACgkQFMQFyXGS
NVN3OA//Xq2HtsMAHV3RXZauaESM+JeGlh+bTdSIEcYqvVEoksQ6TRd4dU/PnUkl
NJdgA0ubTN7eOW/5hPuvVrZkt9g97xTkej5w2eoKTYfuYldJvUNIGaKT++IyDrgz
nolqbpzFrviMlFL0nsFeJN4cy7/vHnFCIjdt0A2FENgVp9xxIzJS3SqnCOmsNZ+T
QkN3pIcOWncBTFT6jnDj+f6OZDKukVdywYgn6N2Q+6g0R2nH2Ln9+KfqV6G2rkDn
5n7jHZ+Fj0Vrrcyv+hmDDslCQrubvcgkWKFNK/+9os5YDYULc6bEGYom8Z2HdFuz
/f0/3C00F4yUUtA5F7DvhgObBF410LQof+TcloYf9QHuVctVSvpi02aUGLHZ17yp
6YOyqh1x5sMrTpBzCWmyJcZ6eX2hl6J7dfFWbx2l9yZoV5vp8aprGHl07HTH2ATi
T83cUKqK/Nfwd1j/JaH9Hsc7aZ03o6jgPdBGp6fNkfoU8nzpU9c883cKtIQsHsC+
vP2epHH5Uz8ZVTs6AhlNtmKDzEEpdl7+SJPH+oIpET4FgUqgleKORGTx4allAFn4
3CzlXqLX2xiGdIL5vI1VwmhoblLjXf/zf51bu6GQ7DvjtIMLD+jTig3jU+J2E0yE
EeaCM1NguKvQe0x/KPif+aw/d+KGoA01cqNMc+lvfOrMRxSb/7g=
=n1g4
-----END PGP SIGNATURE-----

--RASg3xLB4tUQ4RcS--
