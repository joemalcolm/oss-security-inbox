Received: (qmail 32232 invoked by uid 550); 17 Jun 2025 13:19:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5635 invoked from network); 17 Jun 2025 10:05:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ssi.gouv.fr;
	s=20240601; t=1750154706;
	bh=pr9x+oXC0qorfH2Ltp43DI9Tyh22mJj4UZzK8Pqskn8=;
	h=From:To:Subject:Date:From:Subject;
	b=EvtOqQ9lwCQ/D6fythtbYl8A5ocBbHMHFAtX6K6c+Cfa7YVLh8L/8gBJJylp5Rd1a
	 w0e8q/68QjaH07wnbYjP1ry/n4KxBDvq39qFUQb9PoMGuhkjbJRjMwvgo7l28DIKCI
	 TDT70p/I7HMsS+hcb+B/L+U9UP6H4AZCLUew+4m/VWjqoMvR3z+hU+0HKAOTftHqaP
	 F3h8nM0SXWZOkLw99wdKm1hF4u1hrKUA7Ij2brDOnbAZ6u0upyCfq1KdvqSoRPIRTu
	 Ia4HuZHqd3adgjyY6cKnqudFU98KIEKMqZbQUbc1M6NUt/91uw+frbbSJwhPzMy+Un
	 jHzgA0Q2RYAqg==
From: BAL-PETRE Olivier <Olivier.Bal-Petre@ssi.gouv.fr>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: pam: pam_namespace local privilege escalation (CVE-2025-6020)
Thread-Index: Advem4pwpk9KUULHRl+LwfPz4rrg6A==
Date: Tue, 17 Jun 2025 10:05:05 +0000
Message-ID: <610246365f5341c8b3588e207b85042e@ssi.gouv.fr>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
Content-Type: multipart/signed; protocol="application/pgp-signature";
	micalg=pgp-sha256; boundary="=-=lmVlO1F3uWjd58=-="
MIME-Version: 1.0
Subject: [oss-security] pam: pam_namespace local privilege escalation (CVE-2025-6020)

--=-=lmVlO1F3uWjd58=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

This is a report about a potential privilege escalation in the
pam_namespace.so PAM module. This module is one of the core PAM
modules from the linux-pam project [1].

The vulnerability has been fixed in linux-pam v1.7.1 [2] and is tracked
as CVE-2025-6020 and GHSA-f9p8-gjr4-j9gx [3].

In addition to upgrading to the latest version, users of pam_namespace
may want to update their namespace.init script if they do not use the
one provided by their distribution. See section "Patches and mitigation"
for more details.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
The vulnerability
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

When setting up the polyinstantiation of directories, the module
pam_namespace may access files and directories owned by unprivileged
users. This is for instance the case when configuring polyinstantiated
home directories for the users in the following way, inspired by the
example in man namespace.conf(5):

    $HOME  $HOME/$USER.inst/  user  root

When accessing a directory owned by a user or writable by a user,
pam_namespace does it with great care. It resorts to two techniques:

1. Using file descriptors and relative paths instead of absolute paths.

2. Bind mounting on themselves all the directories that can be modified
   by an unprivileged user and are part of the given path. The goal is
   to forbid changes on these directories while operating on the path.
   This is what functions protect_dir() and protect_mount() do.

The first technique is used in some parts of the code, but some
operations are also made on user-controlled paths using absolute paths.
Thus, these operations are safe only if the second technique is reliable.

At the time the pam_namespace module was written, the second technique
was effective against a malicious user operating in any mount namespace.
However, since Linux 3.18, it's only effective if the malicious user is
operating *in the same mount namespace* as the one the mount was made
in. Indeed, as man mount_namespaces(7) states:

    A file or directory that is a mount point in one namespace that is
    not a mount point in another namespace, may be renamed, unlinked,
    or removed (rmdir(2)) in the mount namespace in which it is not
    a mount point [...]. Consequently, the mount point is removed in
    the mount namespace where it was a mount point.

    Previously (before Linux 3.18), attempting to unlink, rename,
    or remove a file or directory that was a mount point in another
    mount namespace would result in the error EBUSY.

Therefore, if a user can launch a process outside of the mount namespace
created by pam_namespace (i.e. outside of their PAM session), they are
able to alter the paths on which pam_namespace is operating as root.
Doing so, they can launch symlink attacks, race the other security
checks in the code, and elevate their privileges to root.

It may be complicated to launch a process outside of a mount namespace
as an unprivileged user, but the context can help an attacker to do so.
For instance:

* If two users are colluding or are compromised on the same system, the
  first one can mess with the paths used to polyinstantiate directories
  for the second user. Indeed, they will not be restricted by
  pam_namespace, as they will be in their own PAM session and therefore
  in their own mount namespace with their own mounts.

* A PAM service is misconfigured and do not call pam_namespace when
  creating a new PAM session. This can be found in the wild, especially
  because some packages come with PAM service files that do not include
  the common PAM service files of their distribution (common-session,
  system-auth, ...). This easily leads to misconfigurations, and in this
  case, can be turned into a local privilege escalation to root.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Patches and mitigation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In order to fix the issue, the following changes were made:

* All the functions that may operate on a user-controlled path were
  converted to operate on file descriptors instead of absolute path.

* The existing bind-mount protection provided by protect_mount() is kept
  as a defense in depth measure.

* Protecting the shell script namespace.init against symlink attacks and
  race conditions was deemed too complicated, especially because its
  content can be modified by vendors and users. Instead, it now
  receives two additional flags as arguments to indicate if the polydir
  path and the instance path are safe to operate on as root.

  If they provide their own script in place of the default one, vendors
  and users are expected to update their script to check for these
  flags and not operate on user-controlled paths.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2025-01-29: The vulnerability is reported to the maintainers. A PoC
            demonstrating the LPE to root and a draft of a patch are
            provided as well.

2025-02-17: An upstream maintainer acknowledge the issue and provides
            the first comments on the patch.

2025-06-05: After successive iterations and reviews, the patch is ready.

2025-06-11: Issue shared with the linux-distro mailing list.
            CVE-2025-6020 is assigned.

2025-06-17: Upstream linux-pam releases v1.7.1 containing the fix.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://github.com/linux-pam/linux-pam
[2]: https://github.com/linux-pam/linux-pam/releases/tag/v1.7.1
[3]: https://github.com/linux-pam/linux-pam/security/advisories/GHSA-f9p8-g=
jr4-j9gx

--

Best regards,

Olivier BAL-PETRE
ANSSI - French Cybersecurity Agency
https://cyber.gouv.fr/

--=-=lmVlO1F3uWjd58=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCAAdFiEE0ftIAyz7k8fVDUlh1duLaXH3c0wFAmhRPcgACgkQ1duLaXH3
c0wBWAwAlo/AxVUoyXKkxx+eOqp0BNOdM9z1zWoGVx2ZoNxammuTF14RDrFPEZXL
xo0WvytE8GpQbIIcHzJISeG4B8/0ndbZja9RmmareBEldeFsKdzOlmEar0nt0895
4atCCVx+RjIkmavCPBEfotu6IHpVsMHzj07/HYo9IfKwnxhl/EUamkfEfeIwxDu4
233tdv6xHdJ0rsoJ6oiQbZFU3bFcvuN38qFQhA2MAAQ/MWFzS6vKuUZi1+v21Ech
mtWe4hY/5OypiHuUvmvQEeVcCHitWNCBPjxquqY0kgoGa90JSlOunBnfdOI4JBlV
35v68RBI6t4V628xJieZhTP0FNpC0E5IOYldoA6iOHx3XjzMe9ONW6ebktOiSMRJ
sQ25us2ALJqj8Gve3tQml67znW7xEKcnQWVPXWAWJDJ5HgscGtk32U0yvU/uHBAy
uR1M6TxmGaqfvCYiFhNUtqzfv49ijQ3wBRZNbBEztZYBbP/9KjS/kcuNK8lFdPYJ
v087UhpG
=Jdp3
-----END PGP SIGNATURE-----


--=-=lmVlO1F3uWjd58=-=--
