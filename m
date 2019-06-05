X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5656" "Wednesday" "5" "June" "2019" "11:59:31" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20190605095931.GA13513@f195.suse.de>" "161" "[oss-security] pam-u2f: CVE-2019-12210: debug_file file descriptor leak, CVE-2019-12209: symlink attack on u2f_keys leading to possible information leak" nil nil nil "6" "2019060509:59:31" "[oss-security] pam-u2f: CVE-2019-12210: debug_file file descriptor leak, CVE-2019-12209: symlink attack on u2f_keys leading to possible information leak" (number mark "U       mgerstner@su Jun  5  161/5656  " thread-indent "\"[oss-security] pam-u2f: CVE-2019-12210: debug_file file descriptor leak, CVE-2019-12209: symlink attack on u2f_keys leading to possible information leak\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] pam-u2f: CVE-2019-12210: debug_file file descriptor leak, CVE-2019-12209: symlink attack on u2f_keys leading to possible information leak" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24510 invoked by uid 550); 5 Jun 2019 09:59:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24492 invoked from network); 5 Jun 2019 09:59:43 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Wed, 5 Jun 2019 11:59:31 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20190605095931.GA13513@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sdtB3X0nJg68CQEu"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] pam-u2f: CVE-2019-12210: debug_file file descriptor leak,
 CVE-2019-12209: symlink attack on u2f_keys leading to possible information
 leak

--sdtB3X0nJg68CQEu
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

pam-u2f [1] is a PAM module that allows to integrate universal 2nd
factor authenticators like YubiKey into the PAM stack. In the context of
a source code review [2] due to the inclusion of pam-u2f into SUSE Linux
two security issues in this PAM module have been uncovered as described
in the following sections.

CVE-2019-12210: debug_file file descriptor leak
-----------------------------------------------

If the `debug` and `debug_file` options are set then the opened debug
file will be inherited to the successfully authenticated user's process.
Therefore this user can write further information to it, possibly
filling up a privileged file system or manipulating the information
found in the debug file.

In some contexts the program utilizing PAM closes off leaked file
descriptors but it does work with su, for example, use the following
line in the PAM stack:

```
auth    optional        pam_u2f.so debug debug_file=3D/tmp/u2f-debug.txt
```

Then prepare the debug file such that the PAM module can open it:

root# touch /tmp/u2f-debug.txt

Then perform su on yourself as an unprivileged user:

user$ su user
Password: XXX
user$ ls -l /proc/$$/fd
[...]
l-wx------ 1 user users 64  8. Mai 11:44 3 -> /tmp/u2f-debug.txt

As you can see the new user shell now has an open file descriptor for
the debug file.

CVE-2019-12209: symlink attack on u2f_keys leading to possible information =
leak
---------------------------------------------------------------------------=
----

The file `$HOME/.config/Yubico/u2f_keys` is blindly followed by the PAM
module. It can be a symlink pointing to an arbitrary file. The PAM
module only rejects non-regular files and files owned by other users
than root or the to-be-authenticated user. Even these checks are only
made after open()'ing the file, which may already trigger certain logic
in the kernel that is otherwise not reachable to regular users.

If the PAM modules' `debug` option is also enabled then most of the
content of the file is written either to stdout, stderr, syslog or to
the defined debug file.  Therefore this can pose an information leak to
access e.g.  the contents of /etc/shadow, /root/.bash_history or similar
sensitive files. Furthermore the symlink attack can be used to use other
users' u2f_keys files in the authentication process.

For example use the following line in the PAM stack:

```
auth    optional        pam_u2f.so debug
```

Then prepare a suitable symlink:

```
user$ mkdir -p ~/.config/Yubico
user$ ln -s /etc/shadow ~/.config/Yubico/u2f_keys
```

Then authenticate the user on a text console:

host login: user
Password: XXX
[...]
debug(pam_u2f):  Authorization line: avahi:!:18019::::::
[...]

Notice the lines from /etc/shadow being output on the terminal.

Bugfixes and Mitigations
------------------------

The bugfix for CVE-2019-12210 is found in [3]. It solves the issue by
passing `O_CLOEXEC` and more conservative flags to related `open()`
calls.

The bugfix for CVE-2019-12209 is found in [4]. It solves the issue by
dropping privileges to the to-be-authenticated user before accessing the
`u2f_keys` file.

Both bugfixes are contained in the upstream release 1.0.8 [5].

A major mitigation for both issues is to remove the `debug` and
`debug_file` options for `pam_u2f.so` in the PAM configuration.
Furthermore enabling the `openasuser` option will mitigate the symlink
attack in CVE-2019-12209.

Timeline and Responsible Disclosure
-----------------------------------

Communication with upstream was responsive and constructive over the
complete timeline.

2019-05-08: I reported the findings privately to the upstream maintainer.
2019-05-20: security@yubico.com has been involved and we worked out and
    reviewed patches together that have been agreed upon by this time.
2019-05-22: Yubico assigned CVEs for the issues.
2019-06-04: This was the established publication date and Yubico
    released a fixed version as planned.

References
----------

[1]: https://developers.yubico.com/pam-u2f/
[2]: https://bugzilla.suse.com/show_bug.cgi?id=3D1087061
[3]: https://github.com/Yubico/pam-u2f/commit/18b1914e32b74ff52000f10e97067=
e841e5fff62
[4]: https://github.com/Yubico/pam-u2f/commit/7db3386fcdb454e33a3ea30dcfb8e=
8960d4c3aa3
[5]: https://developers.yubico.com/pam-u2f/Release_Notes.html

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Linux GmbH
GF: Felix Imend=F6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG Nuernberg)

--sdtB3X0nJg68CQEu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAlz3koAACgkQFMQFyXGS
NVO+Zw/+I8jDbT8jzWp5Cs6Hs5s0u6Qpf/rHTQR7Fu98jtsCnmJtIfuOe/fNxNPO
nQTl0b+MYCuit1cKel2Ay12f4gGaIsedHaAHh/i2KSDaySxvN1V+ubkhdNwVzJZ7
fKExM3ahBf2wZlLam6JPIoSlmzWCFoSYQ0GOoq/Fr7eQ3d6+IWFCnljzwlAni76F
RYCZKrtvoQBVd9o0SECQ8X8zzhWyANqkiDtwoB4KHV/+3Z1pez2SFdRm0yte4Gyj
0iYf0KE1nsqZM64m2reMnH639PY+3kwPHMAK9uVX44CbX6FGsm2pHCFxK2gVRc2+
EVKAgwq3n+/UNbLhandUYHbLrg+7FnbEe+89lSR7DW4kLZ+TK2YCdGvxQPxI48og
NVfPdwJxSnZkK+ZYnaQrR8s1S96WH7JH1ABil6zuPzu6KfzBHcnNEy7/BfMK9wOo
n0R7m2MrON9J21joBwg3efqOy0oHGKe1+8iUW+HNcCaG3SEK/oGwmHggsQOtmT9w
+8Ajr1CfGILo3xL8Hit0O6YtZpyOlU4XdyXgsmX9KeFMRc1Zg2CH+ms+vMw5y3Eq
bs6jAeBq9d6nB6DcORyBuR4EZvMCU34CvDqQF/NOfI/qltkyN4pqp3PEItZt2zNP
cTz2Jixj8iz6Ma5LGBCBDlx2Oedeot5liWhNep7vIYxg17WnrcU=
=ddrQ
-----END PGP SIGNATURE-----

--sdtB3X0nJg68CQEu--
