Received: (qmail 11915 invoked by uid 550); 17 Nov 2025 14:39:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11856 invoked from network); 17 Nov 2025 14:39:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1763390338; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=aCZyfcobQHODy9rrp6l2VCyJfc6AtoaJFrTibG/azEo=;
	b=M59AjVK006FVVo1nrZkQ8M+f7ONtudJK5t6wjYEGKNghUALY0g7cT3zOecRjiqVr/MmxMd
	v3aJ72tWDt7nUhPZIYvupz91DUn9GCAYldujNWHbH7SZ27Uozz8PmP9/0WO1dMogRTsfrV
	4a7AEZULeYGQWSIrmcR9fkL5MTc6nh4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1763390338;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=aCZyfcobQHODy9rrp6l2VCyJfc6AtoaJFrTibG/azEo=;
	b=lV5kk+2NE1vaf4HJEW3XX3uEzBCl3qZeFlSwQkJXji3qBie/Jw8pxl7LS8mtUimvmDFNhb
	SNScUruya8u3Y2Cw==
Authentication-Results: smtp-out2.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=M59AjVK0;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=lV5kk+2N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1763390338; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=aCZyfcobQHODy9rrp6l2VCyJfc6AtoaJFrTibG/azEo=;
	b=M59AjVK006FVVo1nrZkQ8M+f7ONtudJK5t6wjYEGKNghUALY0g7cT3zOecRjiqVr/MmxMd
	v3aJ72tWDt7nUhPZIYvupz91DUn9GCAYldujNWHbH7SZ27Uozz8PmP9/0WO1dMogRTsfrV
	4a7AEZULeYGQWSIrmcR9fkL5MTc6nh4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1763390338;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=aCZyfcobQHODy9rrp6l2VCyJfc6AtoaJFrTibG/azEo=;
	b=lV5kk+2NE1vaf4HJEW3XX3uEzBCl3qZeFlSwQkJXji3qBie/Jw8pxl7LS8mtUimvmDFNhb
	SNScUruya8u3Y2Cw==
Date: Mon, 17 Nov 2025 15:38:57 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <aRszgdEcjCyuaqCS@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kEB3+00XL4MVtyEb"
Content-Disposition: inline
X-Spam-Level: 
X-Spam-Flag: NO
X-Spam-Score: -6.61
Subject: [oss-security] lightdm-kde-greeter: Privilege Escalation from lightdm Service User
 to root in KAuth Helper Service (CVE-2025-62876)

--kEB3+00XL4MVtyEb
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 17 Nov 2025 15:38:57 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: lightdm-kde-greeter: Privilege Escalation from lightdm Service User
 to root in KAuth Helper Service (CVE-2025-62876)

Hello list,

please find below a report about a `lightdm` to `root` privilege
escalation in lightdm-kde-greeter [1]. We also offer a rendered version
of this report on our blog [2].

Summary: lightdm-kde-greeter is a KDE-themed greeter application for the
lightdm display manager. It contains a KAuth-based D-Bus helper
application for performing privileged operations, which suffers from a
`lightdm` to `root` privilege escalation and some other shortcomings in
versions up to 6.0.3. In discussions with upstream we managed to arrive
at a much improved version of the affected code.

1) Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

lightdm-kde-greeter [1] is a KDE-themed greeter application for the
lightdm display manager [3]. At the beginning of September one of our
community packagers asked us [4] to review a D-Bus service contained in
lightdm-kde-greeter for addition to openSUSE Tumbleweed.

In the course of the review we found a potential privilege escalation
from the `lightdm` service user to `root` which is facilitated by this
D-Bus service, among some other shortcomings in its implementation.

The next section provides a general overview of the D-Bus service.
Section 3 discusses the security problems in the service's
implementation. Section 4 takes a look at the bugfix upstream arrived
at.

This report is based on lightdm-kde-greeter release 6.0.3 [5].

2) Overview of the D-Bus Helper
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

lightdm-kde-greeter includes a D-Bus service which enables regular users
to configure custom themes to be used by the greeter application. The
D-Bus service is implemented as a KDE KAuth helper service [6], running
with full root privileges.

The helper implements a single API method [7], protected by Polkit
action `org.kde.kcontrol.kcmlightdm.save`, which requires
`auth_admin_keep` by default, i.e. users need to provide root
credentials to perform this action. The method takes a map of key/value
pairs which allow to fully control the contents of `lightdm.conf` and
`lightdm-kde-greeter.conf`.

=46rom a security point of view such a generic interface is sub-optimal,
since the scope of the operation is not restricted to changing theme
settings, but also allows to change all the rest of lightdm's
configuration, providing less control over who may do what in the
system. From an application's point of view this approach is
understandable, however, as this makes it easy to support any future
features.

Another Polkit action `org.kde.kcontrol.kcmlightdm.savethemedetails` is
declared in `kcm_lightdm.actions` [8], which is unused, maybe a remnant
of former versions of the project.

3) Problems in the D-Bus Helper
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

The problems in the D-Bus service start in helper.cc line 87 [9], where
we can find this comment:

```
// keys starting with "copy_" are handled in a special way, in fact,
// this is an instruction to copy the file to the greeter's home
// directory, because the greeter will not be able to read the image
// from the user's home folder
```

To start with it is rather bad API design to abuse the key/value map,
which is supposed to contain configuration file entries, for carrying
"secret" copy instructions. Even worse, in the resulting copy operation
three different security contexts are mixed:

- the helper, which runs with full root privileges.
- the unprivileged D-Bus client, which specifies a path to be opened by
  the helper.
- the `lightdm` service user; the helper will copy the user-specified
  file into a directory controlled by it.

The helper performs this copy operation with full `root` privileges
without taking precautions, reading input data from one unprivileged
context and writing it into another unprivileged context. This is done
naively using the Qt framework's `QFile::copy()` and similar APIs,
leading to a range of potential local attack vectors:

- Denial-of-Service (e.g. passing a named FIFO pipe as source file path,
  causing the D-Bus helper to block indefinitely).
- information leak (e.g. passing a path to private data as source file
  like `/etc/shadow`, which will then become public in
  `/var/lib/lightdm`).
- creation of directories in unexpected locations (the helper attempts
  to create `/var/lib/lightdm/.../<theme>`, thus the lightdm user can
  place symlinks there which will be followed).
- overwrite of unexpected files (similar as before, symlinks can be
  placed as destination file name, which will be followed and
  overwritten with client data).

If this action would ever be set to `yes` Polkit authentication
requirements, then this would be close to a local root exploit. Even in
its existing form it allows the `lightdm` service user to escalate
privileges to `root`.

Interestingly these problems are quite similar to issues in `sddm-kcm6`,
which we covered in a previous report [10].

4) Upstream Bugfix
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We suggested the following changes to upstream to address the problems:

- the copy operation should be implemented using D-Bus file descriptor
  passing, this way opening client-controlled paths as `root` is already
  avoided.
- for creating the file in the target directory of `lightdm`, a
  privilege drop to the `lightdm` service user should be performed to
  avoid any symlink attack surface.

We are happy to share that the upstream maintainer of
lightdm-kde-greeter followed our suggestions closely and coordinated the
changes with us before the publication of the bugfix. With these
changes, this KAuth helper is now kind of a model implementation which
can serve as a positive example for other KDE components. Upstream also
performed some general cleanup, like the removal of the unused
`savethemedetails` Polkit action from the repository.

Upstream released version 6.0.4 [11] of lightdm-kde-greeter which
contains the fixes.

5) CVE Assignment
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In agreement with upstream, we assigned CVE-2025-62876 to track the
`lightdm` service user to `root` privilege escalation aspect described
in this report.  The severity of the issue is low, since it only affects
defense-in-depth (if the `lightdm` service user were compromised) and
the problematic logic can only be reached and exploited if triggered
interactively by a privileged user.

6) Coordinated Disclosure
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We reported these issues to KDE security on 2025-09-04 offering
coordinated disclosure, but we initially had difficulties setting up the
process with them. Upstream did not clearly express the desire to
practice coordinated disclosure, no (preliminary) publication date could
be set and no confirmation of the issues was received.

Things took a turn for the better when a lightdm-kde-greeter developer
contacted us directly on 2025-10-16 and the publication date and fixes
were discussed. The ensuing review process for the bugfixes was very
helpful in our opinion, leading to a major improvement of the KAuth
helper implementation in lightdm-kde-greeter.

7) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2025-09-04: We received the review request [4] for the lightdm-kde-greeter =
D-Bus service.
2025-09-10: We privately reported the findings to KDE security.
2025-09-17: We received an initial reply from KDE security stating that the=
y would get back to us.
2025-09-29: We asked for at least a confirmation of the report and a rough =
disclosure date, but upstream was not able to provide this.
2025-10-01: KDE security informed us that an upstream developer planned to =
release fixes by mid-November.
2025-10-16: An upstream developer contacted us to discuss the publication d=
ate, since the bugfixes were ready.
2025-10-20: We asked the developer to share the bugfixes for review.
2025-10-21: The developer shared a patch set with us.
2025-10-24: We agreed on 2025-10-31 for coordinated disclosure date.
2025-10-28: After a couple of email exchanges discussing the patches, upstr=
eam arrived at an improved patch set. We suggested to assign a CVE for the =
`lightdm` to `root` attack surface.
2025-10-29: We assigned CVE-2025-62876.
2025-11-03: We asked when the bugfix release would be published, with the d=
isclosure date already passed.
2025-11-03: Upstream agreed to publish on the same day.
2025-11-03: Upstream released version 6.0.4 [11] containing the bugfixes. W=
e published our Bugzilla bug [4] on the topic.
2025-11-13: Publication of this report.

8) References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://invent.kde.org/plasma/lightdm-kde-greeter
[2]: https://security.opensuse.org/2025/11/13/lightdm-kde-greeter-auth-help=
er.html
[3]: https://github.com/canonical/lightdm
[4]: https://bugzilla.suse.com/show_bug.cgi?id=3D1249146
[5]: https://invent.kde.org/plasma/lightdm-kde-greeter/-/tags/v6.0.3
[6]: https://security.opensuse.org/2024/04/02/kde6-dbus-polkit.html#the-kde=
-kauth-framework
[7]: https://invent.kde.org/plasma/lightdm-kde-greeter/-/blob/v6.0.3/kcm/he=
lper.cpp#L48
[8]: https://invent.kde.org/plasma/lightdm-kde-greeter/-/blob/v6.0.3/kcm/kc=
m_lightdm.actions?ref_type=3Dtags#L39
[9]: https://invent.kde.org/plasma/lightdm-kde-greeter/-/blob/v6.0.3/kcm/he=
lper.cpp?ref_type=3Dtags#L87
[10]: https://security.opensuse.org/2024/04/02/kde6-dbus-polkit.html#proble=
matic-file-system-operations-in-sddm-kcm6
[11]: https://invent.kde.org/plasma/lightdm-kde-greeter/-/tags/v6.0.4

Best Regards

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Jochen Jaser, Andrew McDonald, Werner Knoblich

--kEB3+00XL4MVtyEb
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmkbM4EACgkQFMQFyXGS
NVNJaQ/9FLns6H40UhWvHgkOMWESV22DHHgRxvalfS2LryHab1ZJJmZpQxOfufbW
GXTCVx5VGEiC+cITVu3OF6dLDrtGTqcqJXvHDTHb5vOuRhn8MDcuu8KwtcZVTdyt
gd44CaocJvfFFp2lScB9ULUZIB1DokfOqC50ZrDhQYUkdy4IPPLzLTY2GT3wBU0U
0WAE3LU/h8BxAx+sYq4Ez0mM0kPvHMWV5lrOK2ugH/5bihb/lxQB/2KXAajxIT29
1UkjnM5ltgNG9e8tBnSykJNlDFF6ZKxSaE813e/hlCdlGAsu69iN42iorX+zWWlU
QpctVcHSSA9+Qby5NgrbHwveyE5wciKzBtvAAjhWSn1BOyDxpmsJaPtpq7PR6VHB
iHT/GE1a9TtRx9GeV35RO1MuH1+1B9xAinDGy9JRVKeTqS/A7GgGT1szu13BuEW9
q/W55TRyvBi6H2toQaKRQaEtXdeFLavpZueTnOWsOATb1HM9q46wtUepjxYJGx/3
/RpL0atKHIa84YaOLwWvdNP4/NWyWqmvHwS9npmNgufzZVLN8/leWLvI3Zjdm6FD
8Sj6Dn/H1naui7psGMO4GWxgeb64UlEcb/gCLdx/ag39KgbRFkdGSmK7AG6La4Kv
f7nsAK9gT2l5/dCK2UDd6tXkmmyPZQVTkjmxqGCPM5d4m6xcDbg=
=CkCR
-----END PGP SIGNATURE-----

--kEB3+00XL4MVtyEb--
