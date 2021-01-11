X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9848" "Monday" "11" "January" "2021" "15:05:23" "+0100" "Matthias Gerstner" "mgerstner@suse.de" "<X/xbI+6vsPHK6TmT@f195.suse.de>" "230" "[oss-security] Various security fixes in sudo 1.9.5 (CVE-2021-23239, CVE-2021-23240)" nil nil nil "1" "2021011114:05:23" "[oss-security] Various security fixes in sudo 1.9.5 (CVE-2021-23239, CVE-2021-23240)" (number mark "U       mgerstner@su Jan 11  230/9848  " thread-indent "\"[oss-security] Various security fixes in sudo 1.9.5 (CVE-2021-23239, CVE-2021-23240)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Various security fixes in sudo 1.9.5 (CVE-2021-23239, CVE-2021-23240)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1466 invoked by uid 550); 11 Jan 2021 14:05:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1445 invoked from network); 11 Jan 2021 14:05:35 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 11 Jan 2021 15:05:23 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <X/xbI+6vsPHK6TmT@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gkbslUjjCOIrOzdy"
Content-Disposition: inline
Subject: [oss-security] Various security fixes in sudo 1.9.5 (CVE-2021-23239, CVE-2021-23240)

--gkbslUjjCOIrOzdy
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

concerns have been raised with us about half a year ago that new
features like the python plugin in sudo [1] major version 1.9 could have
introduced new security issues. Recently I performed a review of the
current sudo code base and found a couple of minor and moderate issues
(not necessarily in the new features) that will be addressed in a soon
to be available sudo upstream release 1.9.5.

The following findings are all based on the `SUDO_1_9_4` tag in the
Mercurial upstream repository [2]. Only the two issues c) and d) have
been considered severe enough to request CVEs for them.

# a) User Could Enable Debug Settings not Intended for it

Function `sudo_conf_debug_files_v1()` is passed the unfiltered program
basename from `argv[0]`. In /etc/sudo.conf debug settings are based on
the program name, for example:

```
Debug sudo /var/log/sudo.log all@debug
```

Example scenario: An Admin experimented with something, say, the
`python_plugin.so` and enabled debugging for it and afterwards removed
the `python_plugin.so` from the Plugin configuration but forgot to also
remove it from the Debug configuration.

Now an unprivileged user can set argv[0] to `python_plugin.so` when
executing sudo, which will cause debugging to be enabled for the sudo
main program.

Log files created by sudo have root:root 0600 permissions so nothing
really bad should come from this. Still I think that the unprivileged
user should not be able to confuse the debugging system.

This has been addressed in upstream commit 12797:1d32c53859f9 [3].

# b) Result of `fcntl(..., FD_CLOEXEC)` is not Checked in `sudo_debug_new_o=
utput()`

In `sudo_debug.c:183` the result of `fcntl(output->fd, F_SETFD,
FD_CLOEXEC)` is ignored. If this would fail (while unlikely), then the
open debug file descriptor would be inherited into the target user
context. There seems to be no other code in place that closes this file
descriptor before executing the target command.

This has been addressed in upstream commit 12798:f1ca39a0d870 [4].

# c) CVE-2021-23239: Possible Dir Existence Test due to Race Condition in `=
sudoedit`

The `sudoedit` personality by default wants to prevent that the edited
file is in any way under control of an unprivileged user. This logic is
rooted in `sudo_edit_open()` / `sudo_edit_open_nonwritable()`. It
follows the complete file path from the file system root downwards and
avoids symlinks in directories that are writable by unprivileged users.

There is a corner case, however, when the target file does not exist
yet. This is handled in `sudo_edit.c:545`. `errno` will be set to
`ENOENT`, because the file didn't exist yet. Now the code checks the
parent directory of the path for existence and whether it is a
directory. If this is both true then the edit operation continues in the
expectation that later on a new file will be created. The check is done
using `stat()`, however, thus if the parent directory is under control
of the unprivileged user, it can try to win a race condition and place
an arbitrary symlink at the parent directory location just in time for
the check in `sudo_edit.c:549` to succeed.

This means the precondition covered in `sudo_edit.c:576` is no longer
true ("editing files in a writable directory is not permitted"). As far
as I can see this only allows an attacker to test for existence of
directories in arbitrary locations, if the target user is root, because
`sudoedit` behaves differently if the link target exists and is a
directory, or if it doesn't exist or isn't a directory. It *cannot* be
used to write to arbitrary locations, because the write operation
happens in `sudo_edit.c:1043` via `sudo_edit_copy_tfiles()`, which uses
`sudo_edit_open()`, this time with `O_CREAT` to open the target file.
This will not follow a symlink this time.

Example: A regular user 'testuser' is for some reason allowed to edit
the file /home/testuser/subdir/file with root privileges and without
password entry.

```
sudoedit ~/subdir/file
```

Initially ~/subdir is empty or doesn't exist. The logic in
`sudo_edit.c:545` will come into play. 'testuser' wins the race to
create a symlink:

```
ln -s /root/.gnupg ~/subdir
```

If /root/.gnupg exists then `sudoedit` will now open the editor, if it
doesn't exist it will fail with

```
sudoedit: /home/testuser/subdir/file: No such file or directory
```

This has been addressed in upstream commit 12799:ea19d0073c02 [5]

# d) CVE-2021-23240: Possible Symlink Attack in SELinux Context in `sudoedi=
t`

If SELinux is enabled on a system then `sudoedit` uses alternate code
paths to create temporary files and to copy temporary files to target
files, namely `selinux_edit_copy_tfiles()` and
`selinux_edit_create_tfiles()`. Both functions employ `chown()` system
calls which follow symlinks.

Especially in `selinux_edit_copy_tfiles()` a `chown()` to the target
user is performed on a temporary file path that is owned by the
unprivileged user in e.g. /var/tmp. The unprivileged user could remove
this file and replace it by a symlink to a another file, that would be
followed by `sudoedit` to change its ownership.

When SELinux is in enforce mode then it should prevent such a thing to
happen. But a system might run in SELinux permissive mode in which case
the SELinux logic in `sudoedit` would still trigger but the protection
effect would be gone. In this case still the symlink protection in the
kernel can prevent the attack, if it is enabled.

This has been addressed in upstream commit 12800:8fcb36ef422a [6].

# e) Bad Buffer Size Calculation in `get_net_ifs()`

In the `get_net_ifs()` function the remaining space in the `cp` buffer
is calculated for passing it to the `snprintf()` function calls in line
175 and line 192. The calculation `ailen - (*addrinfo - cp)` is
erroneous, however, because the expression in parantheses will become
negative for increasing values of `cp`, thus passing an ever larger
buffer size to `snprintf` instead of the correctly remaining space. The
correct calculation would be `ailen - (cp - *addrinfo)`.

The impact could be a heap buffer overflow for certain values of IP
addresses on network interfaces that would exhaust the actually
available space in the `cp` buffer. However it should not be possible to
trigger this, because the buffer is allocated with enough space for
(`2 * INET6_ADDRSTRLEN`) bytes for each pair of interface address and
netmask. And even then an unprivileged user should not usually be able
to assign crafted IP addresses that would result in such an overflow.

This has been addressed in upstream commit 12796:b0cae3ac8e46 [7].

# f) Python Plugin `_verify_import()` Follows Symlinks

In `python_importblocker.c:39` a `stat()` system call that follows
symlinks is performed to determine the security of the to-be-imported
Python module. If the target directory would be under control of an
unprivileged user then it could attempt to place a symlink at the
`file_path` location that points to a file that fulfills the necessary
conditions and then could replace the symlink by a user controlled
module that would then be loaded by the Python importer.

To be completely safe here a check of all path components like done in
`sudo_edit_open_nonwritable()` would need to be made to make sure that
no unprivileged user has control over parent directories of the Python
module path.

Ideally a safely opened file descriptor would be used directly to load
the module (if possible with the Python API).

Upstream told me that this code is not actually intended to be a
security check but more of a debugging utility for admins. The Python
API does not allow to make this particular check safe. Therefore a safe
configuration is the responsibility of the sudo administrator.

# Upstream Communication

I shared this report with the sudo main developer Todd Miller on
2020-12-21. Since then we discussed the issues and possible patches, I
requested CVEs from Mitre for issues c) and d) and this week the 1.9.5
release with all bugfixes will be made.

See also the detailed analysis of issue d) done by Todd [8].

[1]: https://www.sudo.ws/
[2]: https://www.sudo.ws/repos/sudo
[3]: https://www.sudo.ws/repos/sudo/rev/1d32c53859f9
[4]: https://www.sudo.ws/repos/sudo/rev/f1ca39a0d870
[5]: https://www.sudo.ws/repos/sudo/rev/ea19d0073c02=20
[6]: https://www.sudo.ws/repos/sudo/rev/8fcb36ef422a=20
[7]: https://www.sudo.ws/repos/sudo/rev/b0cae3ac8e46=20
[8]: https://www.sudo.ws/alerts/sudoedit_selinux.html

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

--gkbslUjjCOIrOzdy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl/8WyIACgkQFMQFyXGS
NVO78RAAh+wqq5zi84ivKwijXovbB1DjeXfqd9xIhMgzdJGLLRElXhEjVskB38e6
pISCUqWsVVTRDLjX+jgocujU/WeOkHX3KcexH5Y59+m9MZAvU2OL4LbwNlaeda6e
v0UfWjQxOnGZK4GqBSF5tl+3Ui2u8FpRafdiKkqnz4GdAo9a0w7x0ptbgW4/DdJU
vBztZp3hE1ja6tOYWdJ/HHEWQwq9YvSKAueMgy4mXlVCHYwz39DPC5zDHLIbkJ5o
/fhbily1mypy1HNar0YZ5+PHBx+Yw4RXIEkkcRHcdH5eRev6HzWhvIeSEwY8VoGb
LsbztcQRlGfqV8fXvOXcZlLQBNV/hQqO/sn7mM011rtXhYLtCySQle+XhGueeDc0
51UAjnb7VHDJxk85wMjSvNkO8hT3fOUJ95K6tqFTso49s9dCwpIz7ehCObgbcyEi
atS9ss5pEvHhyVw76H1YNYQmje6rgDLBjmlZII1Vn3lJcTziE+ETRfsFJjNMQYVI
5F2/6rR6eEYfAEBDt4E/ZZ4IwGFVct0W5URoP9pArgn3gcLhKQgUFQGpEtI8t85s
lXJG6DDyPAqslJgPRZcK8gzp5tzrCwHBnQ3xBC6BTf2wChd2QNYjPXistZxRmHPz
lhVdc5VFmRMCS0NH2B1mXLzeK9jGBpYAvDA6CLwV5YJzaAHz+qQ=
=SH9t
-----END PGP SIGNATURE-----

--gkbslUjjCOIrOzdy--
