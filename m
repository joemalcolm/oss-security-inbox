X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3376" "Monday" "15" "February" "2021" "12:50:49" "+0100" "Matthias Gerstner" "mgerstner@suse.de" nil "94" "[oss-security] CVE-2021-26720: avahi-daemon: 'avahi' to 'root' user privilege escalation through Debian specific if-up script avahi-daemon-check-dns.sh" nil nil nil "2" nil nil (number mark "U       mgerstner@su Feb 15   94/3376  " thread-indent "\"[oss-security] CVE-2021-26720: avahi-daemon: 'avahi' to 'root' user privilege escalation through Debian specific if-up script avahi-daemon-check-dns.sh\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-26720: avahi-daemon: 'avahi' to 'root' user privilege escalation through Debian specific if-up script avahi-daemon-check-dns.sh" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17506 invoked by uid 550); 15 Feb 2021 11:51:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17488 invoked from network); 15 Feb 2021 11:51:01 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 15 Feb 2021 12:50:49 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <YCpgGeIbiOk30GBf@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fCmMmfn1PirML17w"
Content-Disposition: inline
Subject: [oss-security] CVE-2021-26720: avahi-daemon: 'avahi' to 'root' user privilege
 escalation through Debian specific if-up script avahi-daemon-check-dns.sh

--fCmMmfn1PirML17w
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

the avahi-daemon package [1] in Debian Linux contains a Debian specific
script installed in

    /usr/lib/avahi/avahi-daemon-check-dns.sh

This script is run as 'root' via the if-up.d script in

    /etc/network/if-up.d/avahi-daemon

There are security issues in the code of the main shell script in this
context. The $RUNDIR "/run/avahi-daemon" is owned by the unprivileged
avahi:avahi user/group. This fact is also enforced in the script via its
`ensure_rundir()` function.

In line 136

    `touch ${DISABLE_TAG}`

symlinks are followed in "/run/avahi-daemon/disabled-for-unicast-local".
Thus the unprivileged 'avahi' user can trigger an arbitrary file to be
created or an arbitrary file's timestamp updated when this script runs.

Similarly in line 94

    `cat /etc/resolv.conf | grep "nameserver" | sort > ${TMP_CACHE} || retu=
rn 0`

symlinks are followed in "/run/avahi-daemon/checked_nameservers.<PID>",
which is a predictable path. Content from /etc/resolv.conf will be
written to this location. This would allow for denial of service by
overwriting arbitrary existing files.

SUSE Linux distributions ship an outdated copy of this script in the avahi
package [2] that is also affected by these issues.

To fix these issues I consider it best to run the script as the avahi
user and group by dropping privileges in
"/etc/network/if-up.d/avahi-daemon" via tools like `setpriv` or `su`.

I privately reported this issue to the Debian security team on 2021-01-29. =
If
I understood correctly then Debian Linux will not ship this script in future
releases any more. A bugfix for Debian Buster will be included in the next
point release [3]. Affected packages in maintained SUSE Linux distributions
will also receive bugfixes [4].

[1]: https://packages.debian.org/buster/avahi-daemon
[2]: https://build.opensuse.org/package/show/openSUSE:Factory/avahi
[3]: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D982796
[4]: https://bugzilla.suse.com/show_bug.cgi?id=3D1180827

Cheers

Matthiag

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

--fCmMmfn1PirML17w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmAqYBkACgkQFMQFyXGS
NVM/uhAAwtuymvYaWLIYGjZK8d1noC4c8NHtYDgdH5b04708A5KEwCd5FepUqhCq
9aKA4rtXESZ9JKpb33iVF+cgQeOfQ6bqpk4DFfX1XTG3GMmniCaAAtBNg/7AEcgm
nki8kHqfiURZzBkyz0XMgx4GfvZexZ8y0eBkVGa7xxGxKL6ahGSDMhJhxKvpK4ZQ
kD6V59QqFvKZyuM157wWxkx/xOcE8G8x2r2tIXchrOIeFL4klFooszU81AyNPNR+
cPvrdsPyt1DKV9L/7zAXWALLt1dKVvqB2HPLBYR+pSJsmWbzHy9VK5cnmr0/PklA
0WsWup13YxR4EF1BzMt0aMJIoc9GqKU6ekdzclbz1XVxIoaYXK+b3rmwxTi6gr86
c1lYDjBRnkSVreuJDPpFJreZWDyscnxv4AIvU9VR+I8mtuqN9KoUGY9JmAD5zVrV
HnsGZeo6azMhrFn+E2/nwoG227mGNKd60/5p5VsM8p63XLv9eGM/8Fs9JGeHDsaX
2R5a2p2WX5G6j6HZLNToofaUGHuo3gocOSmueLQhThen8fxR5WXn3QLCf4aLRb3l
GHaJQLPcNB9aeR5wQhCFJ/aLdDGJVaZQYmdsIp2Xerk8VC0q1b+F8eC5XvklkEll
94Ij00BHGjSsJg91bQ93dw2+sPjlHgYGPpHXhN4ZksdtW6ya7bM=
=Y8ns
-----END PGP SIGNATURE-----

--fCmMmfn1PirML17w--
