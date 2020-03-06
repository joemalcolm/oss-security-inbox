X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5310" "Friday" "6" "March" "2020" "14:46:35" "+0100" "Matthias Gerstner" "mgerstner@suse.de" "<20200306134635.GB11468@f195.suse.de>" "139" "[oss-security] CVE-2020-10174: timeshift: arbitrary local code execution due to unsafe usage of temporary directory in /tmp/timeshift" "^Date:" nil nil "3" "2020030613:46:35" "[oss-security] CVE-2020-10174: timeshift: arbitrary local code execution due to unsafe usage of temporary directory in /tmp/timeshift" (number mark "U       mgerstner@su Mar  6  139/5310  " thread-indent "\"[oss-security] CVE-2020-10174: timeshift: arbitrary local code execution due to unsafe usage of temporary directory in /tmp/timeshift\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-10174: timeshift: arbitrary local code execution due to unsafe usage of temporary directory in /tmp/timeshift" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31824 invoked by uid 550); 6 Mar 2020 13:46:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31803 invoked from network); 6 Mar 2020 13:46:47 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20200306134635.GB11468@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bp/iNruPH9dso1Pn"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Fri, 6 Mar 2020 14:46:35 +0100
From: Matthias Gerstner <mgerstner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-10174: timeshift: arbitrary local code execution due to
 unsafe usage of temporary directory in /tmp/timeshift
To: oss-security@lists.openwall.com

--bp/iNruPH9dso1Pn
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

in the course of a security review [1] for the Timeshift backup program
[2] I discovered a local root exploit vulnerability [3] in Timeshift.

=3D=3D Analysis

The problem is found in the source file TeeJee.Process.vala [3]. There
in `init_tmp()` a temporary directory for use by the Timeshift program
is setup. The TEMP_DIR path variable is setup like this:

```
TEMP_DIR =3D Environment.get_tmp_dir() + "/" + subdir_name + "/" + random_s=
tring();
```

This results in a path like /tmp/timeshift/wytOlUJg, for example. Only
the last part of the path is unpredictable, the /tmp/timeshift
directory, however, is constant and fully predictable. Timeshift does
not perform any checks regarding the trustworthyness of a pre-existing
/tmp/timeshift directory, or whether it might be a symlink. A typical
no-op run of timeshift causes the following (filtered) system call
sequence:

```
lstat("/tmp/timeshift/L00qsHH5", 0x7fffb14adfd0) =3D -1 ENOENT (No such fil=
e or directory)
mkdir("/tmp/timeshift/L00qsHH5", 0777) =3D 0
lstat("/tmp/timeshift/L00qsHH5/15833214581345651125.sh", 0x7fffb14adf10) =
=3D -1 ENOENT (No such file or directory)
openat(AT_FDCWD, "/tmp/timeshift/L00qsHH5/15833214581345651125.sh", O_WRONL=
Y|O_CREAT|O_EXCL, 0666) =3D 7
execve("/usr/bin/chmod", ["chmod", "u+x", "/tmp/timeshift/L00qsHH5/15833214=
"...], 0x7fffb14ae3f0 /* 63 vars */
stat("/tmp/timeshift/L00qsHH5/15833214581345651125.sh", {st_mode=3DS_IFREG|=
0644, st_size=3D102, ...}) =3D 0
fchmodat(AT_FDCWD, "/tmp/timeshift/L00qsHH5/15833214581345651125.sh", 0744)=
 =3D 0
chdir("/tmp/timeshift/L00qsHH5") =3D 0
execve("/tmp/timeshift/L00qsHH5/15833214581345651125.sh", ["/tmp/timeshift/=
L00qsHH5/15833214"...], 0x55f02814cfe0 /* 63 vars */
```

The `execve()` at the end is the result of the line
`exec_script_sync("echo 'ok'",out std_out,out std_err, true)` which is
also part of the `init_tmp()` function.

An unprivileged local attacker can pre-create the `/tmp/timeshift`
directory and wait for a Timeshift process running as root to create the
unpredictable sub-directory like /tmp/timeshift/L00qsHH5 and the shell
script like 15833214581345651125.sh in there. Then the attacker only
needs to replace this directory and script by his own ones in time,
resulting in arbitrary code execution as root.

A more simple proof of concept to show the problem is what happens when
a symlink is placed in /tmp/timeshift:

```
user$ ln -s /root /tmp/timeshift
```

This will cause timeshift to create temporary data in /root instead of
in /tmp.

For fixing this issue I suggest to remove the predictable prefix (in
this case "timeshift") from the TEMP_DIR path. Also the unpredictable
temporary directory created by timeshift should not be world readable
i.e. it should get mode 0750 to prevent that other users in the system
might obtain sensitive temporary data from the timeshift execution.
Currently these directories are created with mode 0755 by timeshift (or
more precisely, the mode is only modified by the calling user's umask,
which is 0022 by default).

=3D=3D Bugfix and Affectedness

The issue seems to have been present at least since the commit 9538300e
[6] which first went into the v17.2 version tag.

The upstream author fixed the issue according to my recommendations in
commit 335b3d5398079278b8f7094c77bfd148b315b462 [4] which is also part
of a new release v20.03 [5].

=3D=3D Timeline

I reported this privately to the upstream author on 2020-03-04 and he
publically fixed the issue on the following day already.

=3D=3D References

[1]: https://bugzilla.suse.com/show_bug.cgi?id=3D1165436
[2]: https://github.com/teejee2008/timeshift
[3]: https://bugzilla.suse.com/show_bug.cgi?id=3D1165802
[4]: https://github.com/teejee2008/timeshift/commit/335b3d5398079278b8f7094=
c77bfd148b315b462
[5]: https://github.com/teejee2008/timeshift/releases/tag/v20.03
[6]: https://github.com/teejee2008/timeshift/commit/9538300e

Best Regards

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


--bp/iNruPH9dso1Pn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl5iVDsACgkQFMQFyXGS
NVMBhRAAtKeBy2nbaQ7AJbeBeNk7ORG6T/3UWfNsj1SjFWzNkxxs/hn/B93OPhJj
lA7C9QJFWR3Cx1hJNK9dEcvUAEI2vcnFllGc8VjZfw9fVRQ8hmCpLsG4c3XhgEaX
fBW7Te9FBfZnV3kVcocITnPUUyJheNCKlav0yJ9RIkTaPnQpUOxiJJvmJ6ca/S86
f12H1HHw0J7CWQJ8jvNA90xxTZMHm7x/wRj5Q8Gh3BV+6m/shAYTKaFE3ionpqqY
Qd1wW89417xMvXU5T7L9SxYHTfI0Ts/bTVvkiQGjp5GcMQByf40YMjOVlFe/kaew
j6Hy8TUyInGFcfmTqvps7OZqUAY+w0afL3zCMeB9K/qttsdrI1TpL9k6U4507Xyv
oMpSUJtNZ/L0kUhd4+YQR7xRekCaPCTHKYaiaoQyajpFmCwEcNifvMMZaeyWDVVB
huIyjNQsNKllu1qLkbfped0RMJBbYVvUQt7ZVDSkokyj7KEC7uOd64KgKqRR4o8x
+sUg0eO87AMN4QIRsaGKj3kCPfEv2Ll2MPTmAj2LAHZQy23BN0ssIUdH4YP4e5iB
essvyGGrrC6OSDqdbwqIUzHVB1bZMDALTttfQoMxJbm4HGVCVLY5/F4QfZRt/DYx
lJ5G/Xur8IQTiVy99Lyvlcb7gW0PaXpVrRk5i08Q7VwYdctGMI8=
=iOf/
-----END PGP SIGNATURE-----

--bp/iNruPH9dso1Pn--
