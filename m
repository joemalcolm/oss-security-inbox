Received: (qmail 7498 invoked by uid 550); 27 Apr 2026 10:33:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7450 invoked from network); 27 Apr 2026 10:33:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1777286003; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=X/CjYEbjDO61l/yTJN27aIOxZ6wB7ltIl9wh1vTN04E=;
	b=yd99inXY3jUmDKnVujPi8cu9kaXjbLkcJDUpLUp4LxQar/RdhURNyCoQaPtwzYA9uoKRkK
	G05f/4TZdMHtxbmMycylQjzynsa7o2vvoiTJbKxqXZVqqa7ymLU27zd3BFoYG4TagPIyRp
	6fEJFZJjx6KMiVZYPyBaaQypQSiSlz4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1777286003;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=X/CjYEbjDO61l/yTJN27aIOxZ6wB7ltIl9wh1vTN04E=;
	b=8/RChSQ9km/A+Djkf+DJlUhNl9GFH5k9e4ZVUj6dMzz2tElgXxMBhO4WZXMUXtXJpVMNYP
	y1XHB2+Iaz3z2SDg==
Authentication-Results: smtp-out1.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=yd99inXY;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b="8/RChSQ9"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1777286003; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=X/CjYEbjDO61l/yTJN27aIOxZ6wB7ltIl9wh1vTN04E=;
	b=yd99inXY3jUmDKnVujPi8cu9kaXjbLkcJDUpLUp4LxQar/RdhURNyCoQaPtwzYA9uoKRkK
	G05f/4TZdMHtxbmMycylQjzynsa7o2vvoiTJbKxqXZVqqa7ymLU27zd3BFoYG4TagPIyRp
	6fEJFZJjx6KMiVZYPyBaaQypQSiSlz4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1777286003;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=X/CjYEbjDO61l/yTJN27aIOxZ6wB7ltIl9wh1vTN04E=;
	b=8/RChSQ9km/A+Djkf+DJlUhNl9GFH5k9e4ZVUj6dMzz2tElgXxMBhO4WZXMUXtXJpVMNYP
	y1XHB2+Iaz3z2SDg==
Date: Mon, 27 Apr 2026 12:33:19 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <ae87czA-F_6_c9o8@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jRjATjlLImxLuehU"
Content-Disposition: inline
X-Spam-Flag: NO
X-Spam-Score: -6.61
X-Spam-Level: 
Subject: [oss-security] plasma-login-manager: Weaknesses in plasmaloginauthhelper
 (CVE-2026-25710)

--jRjATjlLImxLuehU
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Apr 2026 12:33:19 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: plasma-login-manager: Weaknesses in plasmaloginauthhelper
 (CVE-2026-25710)

Hello list!

Summary: plasma-login-manager, a new display manager component in KDE,
contains a privileged D-Bus helper which suffers from defense-in-depth
issues allowing the `plasmalogin` service user to escalate to `root` in
various ways.

We also offer a rendered version of this report on our blog [1].

1) Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In recent releases of the KDE desktop environment a fork of the SDDM
display manager [2] called plasma-login-manager [3] has been integrated.
As usual this led to a review [4] in our team for the privileged D-Bus
components contained in the package. While most of the code remains the
same [5], the new upstream added a privileged D-Bus helper [6] called
`plasmaloginauthhelper`, which suffers from defense-in-depth security
issues [7]. The full details of the issues will be discussed in the
following sections.

For this review we looked into plasma-login-manager version 6.6.2 [8].

2) Helper Overview
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

`plasmaloginauthhelper` makes the D-Bus interface
"org.kde.kcontrol.kcmplasmalogin" accessible to all users in the system
via the D-Bus system bus. It offers three actions `sync()`, `reset()`
and `save()` which are all by default protected by Polkit's `auth_admin`
setting.

These methods allow to manage configuration data stored in the home
directory of the `plasmalogin` service user, which has a preset of
`/var/lib/plasmalogin`.  The helper runs with full root privileges and
interprets various client-supplied data. The `plasmalogin` home
directory has the following permissions:

    drwxr-x--- 5 plasmalogin plasmalogin 4.0K Mar 24 13:25

Actually this helper is also a kind of fork of a helper found in the
`sddm-kcm` repository, which we covered in a previous report [9]. It
seems the codebase has not improved since then, but rather additional
attack surface has been added in the meantime.

3) Security Issues
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

3.a) Arbitrary `chown()` via Symlink Attack in `sync()` Method
--------------------------------------------------------------

In the `sync()` method [10] the helper service naively performs
`chown()` calls [11] on files located in the service user's home
directory (`/var/lib/plasmalogin`), allowing a `plasmalogin` to `root`
exploit.

The `chown()` is performed for the paths `$PLASMALOGIN_HOME/.config`,
`$PLASMALOGIN_HOME/.config/fontconfig` as well for a list of
configuration files like `plasmarc` placed into
`$PLASMALOGIN_HOME/.config`.

A compromised `plasmalogin` service account can place symbolic links
here to direct the `chown()` to arbitrary files in the system. After the
`chown()` the helper writes client-supplied content into these files,
which will also end up in arbitrary files in case of a symlink attack.

This method's logic would also allow deletion of certain files like
`plasmarc` in arbitrary directories, would the relevant statement [12]
in the service implementation not lack the final filename component in
the path construction:

    QFile(homeDir + QStringLiteral("/.config/")).remove();

Thus this removal logic doesn't work at all at the moment, since it
attempts to remove the `.config` directory instead of the actual
configuration files.

3.b) Arbitrary File Deletion in `reset()` Method
------------------------------------------------

In the `reset()` method [13] the paths `$PLASMALOGIN_HOME/.cache` and
`$PLASMALOGIN_HOME/.config/fontconfig` are recursively deleted. For this
purpose the Qt API `QDir::removeRecursively()` is used. The
implementation [14] of this function follows symbolic links even in the
final path component, which means that a compromised `plasmalogin`
service user can leverage this logic to achieve the deletion of
arbitrary directory trees in the system.

3.c) Symlink Attack via `/var/lib/plasmalogin/wallpapers` in `save()` Method
----------------------------------------------------------------------------

In the `save()` method [15] the path `/var/lib/plasmalogin/wallpapers`
is created and opened by root [16], using a system call sequence
affected by a race condition. A compromised `plasmalogin` user can
replace the directory by a symbolic link in time for the service to
write wallpaper files to arbitrary locations in the system, leading to
local Denial-of-Service (DoS) and integrity violation.

In this spot the helper employs a low-level `openat2()` system call [17]
to avoid symbolic link resolution, but this only applies to the actual
files placed within the wallpaper directory, not to the directory
itself, which is naively opened before that.

3.d) Missing Integrity Check of Configuration Data in `save()` Method
---------------------------------------------------------------------

In the `save()` method the contents of the file `/etc/plasmalogin.conf`
can be completely controlled by the caller [18]. Since this method is
protected by `auth_admin` Polkit authentication this is basically
acceptable, but there is not even an integrity or syntax check of the
data, the method blindly forwards whatever the client passes to it into
this file, without a maximum size limit or any sanity checks. While this
is not directly a security issue it is a lack of robustness, because the
D-Bus service is responsible for maintaining a sane structure of the
privileged configuration file, preventing a broken system e.g. in case
of buggy clients.

3.e) Lack of File Descriptor and File Size Verification in `save()` Method
--------------------------------------------------------------------------

For the actual wallpaper files, file descriptor passing [19] is
employed, which is good. There is no upper limit enforced on the amount
of data placed into the wallpapers directory, however, which allows to
exhaust disk space in `/var/lib/plasmalogin`.

Even file descriptors passed from clients should be verified to check
whether they refer to regular files and have no unexpected file flags
set. This verification is missing.

4) Suggested Fixes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We suggested the following fixes to upstream:

- Foremost the helper should drop privileges to the `plasmalogin` user
  before performing any file system operations in
  `/var/lib/plasmalogin`, thereby eliminating all symlink attack
  surface. There still remains Denial-of-Service (DoS) attack surface if
  the service user places e.g. a named FIFO pipe somewhere. Avoiding
  this requires careful inspection of each path component by the service
  before opening it.
- The helper should verify the structure and size of data written to
  `/etc/plasmalogin.conf`.
- The helper should place a limit on the maximum amount of space which
  may be used for wallpapers in the `plasmalogin` user's home directory.
- The helper should verify the type and flags of file descriptors passed
  by the client. The descriptors should not have special file types and
  they should not have any unexpected flags like `O_PATH` set.

5) Severity
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

None of the issues in this report is exploitable in a default
installation of `plasma-login-manager`. Most of the problems affect the
situation when the `plasmalogin` service user is compromised and thus
affect defense-in-depth.

It is conceivable, however,  that some actions in the helper, like the
wallpaper management, could be reduced to lesser authentication
requirements like a Polkit `yes` setting for locally logged-in users in
the future, be it due to upstream changes or due to choices made by
system integrators. Then further problems like disk space exhaustion by
other unprivileged users could sneak in as well.

Based on the high severity of the defense-in-depth issues shown in this
report, our assessment is that there is effectively no separation
between `root` and the `plasmalogin` service user account.

6) Upstream Bugfix
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

At this time there is no bugfix available by upstream, but a security
fix is planned for the next Plasma release on May 12. We have not been
involved in upstream's bugfix process so far and have no knowledge about
the approach that will be taken to address the issues from this report.

7) CVE Assignment
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We suggested a single CVE assignment relating to the lack of privilege
drop of the D-Bus service, which is the root cause of most of the issues
described in this report. In coordination with upstream we assigned
CVE-2026-25710 and shared it with them to track these defects.

8) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2026-03-30: We reached out to security@kde.org with a report of the problem=
s, offering coordinated disclosure. We stated that in our eyes, due to the =
issues being restricted to defense-in-depth, an embargo would not be strict=
ly necessary.
2026-03-30: Upstream provided a short reply, asking for a CVE assignment.
2026-03-31: We assigned CVE-2026-25710 and shared it with upstream.
2026-04-13: Lacking a more detailed response from upstream we asked once mo=
re whether they would like to perform coordinated disclosure and what the d=
esired coordinated release date (CRD) would be in that case.
2026-04-13: We received a reply from upstream stating that no coordinated d=
isclosure would be necessary and bugfixes would be published via public pul=
l requests soon in expectation of a security release on May 12.
2026-04-13: To be sure we asked upstream once more whether they agreed to u=
s publishing the report right away.
2026-04-20: Lacking a response and with no visible publication on upstream'=
s end we asked once more if publication on our end would be acceptable for =
them.
2026-04-21: We received a response confirming that we were allowed to publi=
sh right away.

9) References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://security.opensuse.org/2026/04/27/plasma-login-manager.html
[2]: https://www.github.com/sddm/sddm
[3]: https://invent.kde.org/plasma/plasma-login-manager
[4]: https://bugzilla.suse.com/show_bug.cgi?id=3D1260039
[5]: https://bugzilla.suse.com/show_bug.cgi?id=3D1260402
[6]: https://invent.kde.org/plasma/plasma-login-manager/-/blob/v6.6.2/src/f=
rontend/kcm/auth/plasmaloginauthhelper.cpp?ref_type=3Dtags
[7]: https://bugzilla.suse.com/show_bug.cgi?id=3D1260930
[8]: https://invent.kde.org/plasma/plasma-login-manager/-/tree/v6.6.2?ref_t=
ype=3Dtags
[9]: https://security.opensuse.org/2024/04/02/kde6-dbus-polkit.html#problem=
atic-file-system-operations-in-sddm-kcm6
[10]: https://invent.kde.org/plasma/plasma-login-manager/-/blob/v6.6.2/src/=
frontend/kcm/auth/plasmaloginauthhelper.cpp?ref_type=3Dtags#L61
[11]: https://invent.kde.org/plasma/plasma-login-manager/-/blob/v6.6.2/src/=
frontend/kcm/auth/plasmaloginauthhelper.cpp?ref_type=3Dtags#L85
[12]: https://invent.kde.org/plasma/plasma-login-manager/-/blob/v6.6.2/src/=
frontend/kcm/auth/plasmaloginauthhelper.cpp?ref_type=3Dtags#L99
[13]: https://invent.kde.org/plasma/plasma-login-manager/-/blob/v6.6.2/src/=
frontend/kcm/auth/plasmaloginauthhelper.cpp?ref_type=3Dtags#L125
[14]: https://github.com/qt/qtbase/blob/90b845d15ffb97693dba527385db83510eb=
d121a/src/corelib/io/qdir.cpp#L1666
[15]: https://invent.kde.org/plasma/plasma-login-manager/-/blob/v6.6.2/src/=
frontend/kcm/auth/plasmaloginauthhelper.cpp?ref_type=3Dtags#L161
[16]: https://invent.kde.org/plasma/plasma-login-manager/-/blob/v6.6.2/src/=
frontend/kcm/auth/plasmaloginauthhelper.cpp?ref_type=3Dtags#L195
[17]: https://invent.kde.org/plasma/plasma-login-manager/-/blob/v6.6.2/src/=
frontend/kcm/auth/plasmaloginauthhelper.cpp?ref_type=3Dtags#L225
[18]: https://invent.kde.org/plasma/plasma-login-manager/-/blob/v6.6.2/src/=
frontend/kcm/auth/plasmaloginauthhelper.cpp?ref_type=3Dtags#L169
[19]: https://security.opensuse.org/2024/08/13/summer-spotlight.html#kde6-r=
elease-final-touches-and-improvements

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

--jRjATjlLImxLuehU
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmnvO28bFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyAAoJEBTEBclxkjVTPAIP/iHh/hk5/zer4A5aU/IY
ewtHWUfY4bqmQf8D1/0sTIHwIijAo8nJBlXLMzYQ/gHCBEMNQSC8RM8eKvf/iOzv
Mi3mcjKx2v3wu9gZSg60hEllxw4dhRIrhnA1uLjpp4iM2cW2NNm2/OFS4bXZ2cBg
MDKx2LI/gSodlbtEoJo4Ch0vtXlYMcDx7gj0jvDzzTF/Q0+TOdg/58MJ4E7AexY+
LyO5YPUJ1pq9lZtz7qypBHfqpHzC1d7ck7PJafZPfSkP2X13JKYIvPBKdO20JVhu
sMnI6ae4C3JyPEwHKqM5N+/SW4joemosuytF+J2nqZu4MPflsxP8zcM69kBxQMEa
Paa4KPxBikP4eTEubG1lvyfptA+JMSVo+jiZnTxxmTSLJhSiwbs6ZDkdNmbWXAbV
WxC6DpuvFbWS24r+qjdvPRXV1Gte/cKEm/KTem0uB7OnNj5OHRN4IDY7xn4xbG/a
SCYFRgy9rQaMFmSdCvle2wcmWoURiG56p61cUHcAogk/ZwYqg3kcBNzUPNCF0Sk9
OaWfwQlEhc2QgHuPK8EHvL5WW5jFScTVnE7K970C3s+L4rMbA3CsKhjUgZSQV9HS
UbM+oKj+eRlhETQL8EUAW5hNwCqhDPjSz7fv92O0ofiaczZ2Q1IKT/n6uRi1FJoR
8wbfCz6gluqMyewR5pKpn/4E
=63sC
-----END PGP SIGNATURE-----

--jRjATjlLImxLuehU--
