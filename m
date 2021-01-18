X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3947" "Monday" "18" "January" "2021" "16:07:40" "+0100" "Matthias Gerstner" "mgerstner@suse.de" "<YAWkPB4mFDvqtep9@f195.suse.de>" "91" "[oss-security] libreoffice-online \"loolforkit\" privileged program local root exploit" nil nil nil "1" "2021011815:07:40" "[oss-security] libreoffice-online \"loolforkit\" privileged program local root exploit" (number mark "U       mgerstner@su Jan 18   91/3947  " thread-indent "\"[oss-security] libreoffice-online \"loolforkit\" privileged program local root exploit\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] libreoffice-online \"loolforkit\" privileged program local root exploit" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5371 invoked by uid 550); 18 Jan 2021 15:07:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5335 invoked from network); 18 Jan 2021 15:07:52 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 18 Jan 2021 16:07:40 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <YAWkPB4mFDvqtep9@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HTqsoZBHM0NykPQh"
Content-Disposition: inline
Subject: [oss-security] libreoffice-online "loolforkit" privileged program local root exploit

--HTqsoZBHM0NykPQh
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

libreoffice-online [1] contains a privileged setuid-root like binary
"loolforkit" [2] that carries Linux capability bits for CAP_FOWNER,
CAP_MKNOD and CAP_SYSCHROOT.

Upstream's intention seems to be that this program should only be
accessible to the "loolforkit" user in the system. This precondition is
not fulfilled in the 7.0 release versions of the "loolforkit" program,
however, because a command line switch "--disable-lool-user-checking"
allows to bypass this check. In the upstream repository this was fixed
as a "side effect" of commit d9708437b2 [3].

Any user that is allowed to run this program can obtain root privileges.
In the `globalPreinit()` function the program attempts to load a shared
library under the user specified lotemplate path (parameter
"--lotemplate"). Thus the unprivileged caller can cause arbitrary code
to be executed in the context of the privileged program.

Even with the fix from commit d9708437b2 the "loolforkit" user is
equivalent to root, because it can execute arbitrary code as root using
this attack vector. I think this creates a false sense of security,
because to unaware users it looks like there is user separation in
place. A compromised "loolforkit" user account can easily become root
using the "loolforkit" program, however.

I did not fully review the program source. The large amount of command
line switches the program accepts and the general program philosophy
"it's okay if the right user is calling it" make me suspect that there a
further weaknesses over the '--lotemplate' approach in this program that
might allow to escalate privileges.

I contacted upstream by email on 2020-12-14 and offered coordinated
disclosure of these issues and recommended to thoroughly check the
program's source code for issues. It seems upstream considers this fixed
with commit d9708437b2 and doesn't consider it an issue that the
"loolforkit" user can escalate privileges to root using this program. I
recommended to assign at least a CVE for the combination of the two
issues that allows arbitrary users in the system to become root using
the "loolforkit" binary. Nothing happened so far, however.

Formally libreoffice-online is covered by the "Document Foundation" CNA,
therefore I did not request a CVE for this via the Mitre CVE form. I
will try to contact the CNA directly in this matter.

[1]: https://github.com/LibreOffice/online
[2]: https://github.com/LibreOffice/online/blob/master/kit/ForKit.cpp
[3]: https://github.com/LibreOffice/online/commit/d9708437b2ba2f8c10eeb95c9=
ce7bd78cc83d244

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

--HTqsoZBHM0NykPQh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmAFpDkACgkQFMQFyXGS
NVMI2A/9G17nCCsrYC6RtrM0Ja0MJxAif4/324U/uQGH8Ia7LdRX0EaeEOGpxOj7
5Nz4wBZRGW1ub2k/+wgOfjJujMSoLkqVf77xwbsgj8emnM5jZISy7CAEeQygDSAd
hLLsmvvZejrc0+MlTMuX1rhZjHPlgWgoLGoa8fOa9szCQm1ndpc4z9zGck/O3Stt
3cI0ktbVR3KlyvqGwAxX1HwoW7F3yw/bRsXQzSWm4HnaqwsZTgxkoqjcZL2Cvo+e
q0FaQm1i3+oX/xZSPmz9Jdn3+hjnS0kJhiaefKu+9GNfW0n9S4RXlDxlsPEubhLR
FT6RkJIwQaF3N0qWF+pgO7xscGonSIcvVi9E3chXFfLQLGIjBODfMzASlFFdyCQq
1O5zrihTG9HuXQ46RhELu9veMde+3ismiTsGdVNfvGyh0mNCAlJJieTZYwAzYgYv
OnkUNx7IUTb3Qed75mx235mChU7EjBeaz1qcRHTYETZJRPjyuDD7KlAyw0OIquY2
YIkRcQKVuWB5v4BlvTj8/YWa7Y7iQkU4OntsClFqzpd87dM+rlSy55FKVHxHOSli
4A4FsbbcTV60jrkClkM9Bo+NfhbnqbUlCBFxhwcgkjdrbeE653O7I2oSgsk9Um8o
Y94waurlS7htuL5FQCf9eF6MyieB2ub8cRtb5LislfcwfheotXo=
=4jGh
-----END PGP SIGNATURE-----

--HTqsoZBHM0NykPQh--
