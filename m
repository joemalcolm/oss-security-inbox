X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4170" "Friday" "21" "August" "2020" "10:57:25" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20200821085725.GB24102@f195.suse.de>" "121" "[oss-security] chrony: CVE-2020-14367: unsafe pidfile creation allows privilege escalation from chrony user to root" nil nil nil "8" "2020082108:57:25" "[oss-security] chrony: CVE-2020-14367: unsafe pidfile creation allows privilege escalation from chrony user to root" (number mark "U       mgerstner@su Aug 21  121/4170  " thread-indent "\"[oss-security] chrony: CVE-2020-14367: unsafe pidfile creation allows privilege escalation from chrony user to root\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] chrony: CVE-2020-14367: unsafe pidfile creation allows privilege escalation from chrony user to root" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9834 invoked by uid 550); 21 Aug 2020 08:57:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9816 invoked from network); 21 Aug 2020 08:57:37 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Fri, 21 Aug 2020 10:57:25 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20200821085725.GB24102@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="i9LlY+UWpKt15+FH"
Content-Disposition: inline
Subject: [oss-security] chrony: CVE-2020-14367: unsafe pidfile creation allows privilege
 escalation from chrony user to root

--i9LlY+UWpKt15+FH
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

chrony is a versatile implementation of the Network Time Protocol (NTP)
[1].

# Issue Description

The following applies to chrony version 3.5.

In chronyd's main() function the call to `write_pidfile()` is made with
full root privileges, while the privilege drop logic is only performed
later via `SYS_DropRoot()`. The pidfile is created using `fopen()`.

It seems a common default setup for chronyd currently is as follows:

- "chrony" user and group are used as unprivileged accounts to run
  chronyd as.
- The directory /run/chrony is created via systemd-tmpfiles (or during
  runtime by chronyd itself, in `CNF_CreateDirs()`). Ownership is passed
  to chrony:chrony, mode is 0750.
- The DEFAULT_PID_FILE path is set to /run/chrony/chronyd.pid (since
  chrony 3.4).

This constellation means that a compromised chrony user account can
stage a symlink attack in /run/chrony/chronyd.pid like follows:

```
root# systemctl stop chronyd.service
root# sudo -u chrony /bin/bash

# simulate a compromised chrony user staging a symlink attack
chrony# cd /run/chrony
chrony# ln -s /etc/fstab chronyd.pid
chrony# exit

# make sure to keep a backup of /etc/fstab if it is dear to you
root# cp /etc/fstab /etc/fstab.back
root# /usr/sbin/chronyd -n
^C
# fstab content got replaced by the chronyd PID
root# cat /etc/fstab
11354
```

So this attack mostly poses denial-of-service attack vector. It could
also be used to pre-create a file with mode 0644 that would then later
be used by other programs to store sensitive data.

# Mitigations

On recent systemd versions the issue is not severe as long as chronyd is
only started via the systemd service unit. This is the case because it
contains the ProtectSystem=3Dfull directive and thus no write permission
is granted for system file locations.

# Upstream Fixes

Upstream created a bugfix release 3.5.1 [3] that fixes this issue. The
development master branch in the upstream git repository was not
affected any more due to changed file open logic (switched from using
`fopen()` to using `open()` and appropriate flags). The bugfix [4] was
performed on a release branch for version 3.5.1.

# Timeline

- 2020-08-05: I found the issue and reported it privately to the
  upstream main developer Miroslav Lichvar. During the following two
  weeks We discussed the issue and the possible fixes and agreed on a
  patch. SUSE tracked the issue internally via Bugzilla [2].

- 2020-08-19: Upstream communicated to me a CVE assignment for the issue
  and prepared the publication of bugfix release 3.5.1.

[1]: https://chrony.tuxfamily.org
[2]: https://bugzilla.suse.com/show_bug.cgi?id=3D1174911
[3]: https://chrony.tuxfamily.org/news.html
[4]: https://git.tuxfamily.org/chrony/chrony.git/commit/?id=3Df00fed20092b6=
a42283f29c6ee1f58244d74b545

Cheers

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


--i9LlY+UWpKt15+FH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl8/jHUACgkQFMQFyXGS
NVOo5Q//dsXkfERMCNtrf+cI9n/V3gfesFXiDJ48oNIReg5LiQA5ll+zAltULq9s
uXfhyxnnefNa0Y2moMwUGMG7D6CI46mqlEEAv6NpoRm0qT2it6o/wj+Efkx++HqW
/t1QTle4/GHJvrGVBWgdSShpYMWMeS16FFW7lt4U4uSDyfhi6Gn+SQkXHf476qVY
3X5JKZt4qsVzSgcH0Jiak1ucjgURG5IrC3s8N7n1uMunsW74QllISTKiAEcCoE3W
737xqjpwXULqvunv/XdrgZoIe4ftx5uVw4aqDcHFigb9GA8SegeDLKxU3xFhaXFh
XkyIZggThlfd7Hj7d8dzSj6HeG+IbUrLpd0D+iMRyi7x6Ujj7cL/DXXyET5wLvSt
Jamz8EwDFEJ/kL0VGm7XZYk+u+p0kOSoXnXaEzM79sqYtTarc6tiAHb6mNBP8F+n
lkXzNAnUhqIjw5alsStwnnryniVcG7kjJo66NIlc0jyBWtxv75WTwqgbN7+op93s
gtCTlfsB0cEudL3iqwXuPO15DwuvvMtnNTet4Iib7HSfu8sxo5hBgQ45hWZ0ajfr
xMDvtY9C3bwjNouEPCKAxKgQSbaEE0kWmQbrla1g6kdEIyy+FedR1fQkXNjNc7oY
2yZ/UVPpp07whaD3nhpidfyxyUKfRZBD9wBg30OD70tSJHCOzRU=
=x7Ep
-----END PGP SIGNATURE-----

--i9LlY+UWpKt15+FH--
