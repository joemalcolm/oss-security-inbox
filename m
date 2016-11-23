X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3986" "Wednesday" "23" "November" "2016" "10:53:20" "-0600" "Tyler Hicks" "tyhicks@canonical.com" "<c96b9b40-d80a-828e-0019-1ebc7aeddfb8@canonical.com>" "89" "[oss-security] Security issue in LXC (CVE-2016-8649) with additional Linux kernel implications" nil nil nil "11" "2016112316:53:20" "[oss-security] Security issue in LXC (CVE-2016-8649) with additional Linux kernel implications" (number mark "U       tyhicks@cano Nov 23   89/3986  " thread-indent "\"[oss-security] Security issue in LXC (CVE-2016-8649) with additional Linux kernel implications\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13408 invoked by uid 550); 23 Nov 2016 16:53:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13384 invoked from network); 23 Nov 2016 16:53:43 -0000
From: Tyler Hicks <tyhicks@canonical.com>
To: oss-security@lists.openwall.com
Cc: Roman Fiedler <roman.fiedler@ait.ac.at>,
 =?UTF-8?Q?St=c3=a9phane_Graber?= <stgraber@ubuntu.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>
Message-ID: <c96b9b40-d80a-828e-0019-1ebc7aeddfb8@canonical.com>
Date: Wed, 23 Nov 2016 10:53:20 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="OmrQUSngptXND1j34rsJQj1lbQaI6tQ37"
Subject: [oss-security] Security issue in LXC (CVE-2016-8649) with additional Linux kernel
 implications

--OmrQUSngptXND1j34rsJQj1lbQaI6tQ37
Content-Type: multipart/mixed; boundary="h02MQtCNcOlUwAhLbhnWLDf1DEu60LpDP";
 protected-headers="v1"
From: Tyler Hicks <tyhicks@canonical.com>
To: oss-security@lists.openwall.com
Cc: Roman Fiedler <roman.fiedler@ait.ac.at>,
 =?UTF-8?Q?St=c3=a9phane_Graber?= <stgraber@ubuntu.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>
Message-ID: <c96b9b40-d80a-828e-0019-1ebc7aeddfb8@canonical.com>
Subject: Security issue in LXC (CVE-2016-8649) with additional Linux kernel
 implications

--h02MQtCNcOlUwAhLbhnWLDf1DEu60LpDP
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Roman Fiedler from AIT discovered that a malicious root user in an LXC
container can ptrace the connecting lxc-attach process and then
manipulate it.

CVE-2016-8649
https://github.com/lxc/lxc/commit/81f466d05f2a89cb4f122ef7f593ff3f279b165c
https://launchpad.net/bugs/1639345

CVE-2016-8649 was assigned to the issue that allows an attacker inside
of an unprivileged container to use an inherited file descriptor, of the
host's /proc, to access the rest of the host's filesystem via the
openat() family of syscalls. The file descriptor is needed to write to
/proc/<PID>/attr/current or /proc/<PID>/attr/exec to set the
AppArmor/SELinux label of the attached process. The LXC upstream
developers have developed a patch to protect against this attack by only
passing a file descriptor of either the current or exec file itself.


There's also an additional attack where a malicious root user in an
unprivileged container can ptrace the connecting lxc-attach process and
bypass the AppArmor/SELinux confinement completely and/or prevent
lxc-attach from dropping privileges (privileges equal to the user that
initial ran lxc-attach). To fix that issue, a kernel patch is needed to
prevent such a ptrace operation. The LXC upstream developers report that
the following patch from Eric Biederman prevents this attack:

https://git.kernel.org/cgit/linux/kernel/git/ebiederm/user-namespace.git/co=
mmit/?h=3Dfor-next&id=3D2e41414828bb0b066bde2f156cfa848c38531edf

The kernel patch has not yet been merged and, as far as I know, is not
associated with any CVE. The Ubuntu Kernel team reports that it fixes
the disputed CVE-2015-8709, in addition to the issue described above,
but I do not believe that they are the same issue.

I'm not sure if a CVE should be assigned for this kernel issue. At
this point, I don't understand the full impact of that kernel change
well enough to put together a meaningful CVE request. Suggestions/ideas
are welcome.

The LXC fix for CVE-2016-8649 that withholds the /proc fd from the
connecting lxc-attach process mitigates the kernel issue in that it,
even though the malicious root user in the container can bypass MAC
confinement and/or prevent privilege dropping, there's no obvious way to
access or modify the host filesystem.

Tyler


--h02MQtCNcOlUwAhLbhnWLDf1DEu60LpDP--

--OmrQUSngptXND1j34rsJQj1lbQaI6tQ37
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJYNcmAAAoJENaSAD2qAscKlAsP/im8qs8YAmITNGfdTTeivZ2U
1+t0YwKUlISBBtM3AqKZV+tX3B0lu9iU3WYCJfQdjjJXbgHqewABwSJ7dVb38uhO
nk53MwUcPNm3JZ8b1YR/xHl+/bIg5W9h6G6I98UHTt05EicR2/s+1u1JZyel0V+p
XJ1QTbJY5wfOiO8aist/8uOHbrlvyNPzw+29Blf9ngae0AOgacSjExze7lsQ9JCh
xk0MG9RsdmIo7wIn3jgIErDgzHtPDf5jEpzcXUhWqVjjw349HjTjDyf18iXKRmNF
BXeT4EjAtGRJ68lLGRmNNRZ6dH/b6Gf5SZ63NeM8Xyv4UaemE820MQPgkY9IShh5
sfGM1+A8ADofdAAzLKrYAVtD2e5QLnRrxCG8nIbMYJfilLdNfXQjG8P30KqJnjCu
x/DTv6ghmb/YOgtrDu/W739Vh7K8XS77ZbsWi/w6RFqWEtNOXFNrYEhx7IwNeA3Y
Bmae0pZCNuG/xmg7hM2ZtXrrKh3imFX2+N2exJD3JxsUZU44pcTmyd3BpZ3Tt++I
UymQfhki5ieNUvQGE2oFjtnFHBfOQsjQtSiINlkq5czo/3tYanRgDh879Zn91zug
vvbphuz1ZOxgyIipVLuEm3pVANypf+s+yw/NtjYxKbBTkZmj2NZxD6Emh/asmhXQ
bAEdht0vB9Ps4vNkXngj
=yVJ/
-----END PGP SIGNATURE-----

--OmrQUSngptXND1j34rsJQj1lbQaI6tQ37--
