Received: (qmail 8180 invoked by uid 550); 16 Apr 2026 15:03:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8144 invoked from network); 16 Apr 2026 15:03:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1776351805; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=D+bYe8tpCw6UeOHCZQM57vW8QemaWuuJtMLCv18AvXo=;
	b=XvWnv4b8ZkZgZIM97ELCn8Ra6MXZTmjDwPhVKrJfhaeNlvjDUI2Pmo9CyyHXawIJpqJ6Sf
	+l0tcqI3BMbBUjLel9KWFUBjsO7tNmtJ3p0JqmNwysXUQbu2cmsPG5/Ics/SHf8tLffVB8
	DJNl4FT2oSsq6kImKdVLMlXCBRR01Uc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1776351805;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=D+bYe8tpCw6UeOHCZQM57vW8QemaWuuJtMLCv18AvXo=;
	b=P6ecf1rRp/Bt4jNQBFCN34SMcrwLQeILulBxBQXizTvmKqodgYAlq/kHvA5DS6EXJ3bnYo
	mJYes5MLoSxdgyCw==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1776351800; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=D+bYe8tpCw6UeOHCZQM57vW8QemaWuuJtMLCv18AvXo=;
	b=zThArvKEgSryWYp4wyWI6E/7T1yENm5gU1+/heREtJ4mIVddh+38ZyfqB5ix0jSVhzUJvV
	fBTwSEN5GVBVbsVXLXkXlDVcgkHBkf42HqKvvCYbtzMoTTkU110NoR6r3wzVzD0kdnFbZp
	2P0TOjBT7DmapqkXTFZjS8QOWmCx07k=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1776351800;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=D+bYe8tpCw6UeOHCZQM57vW8QemaWuuJtMLCv18AvXo=;
	b=YufCzQIOq/bb94JPD8tWyzk8AacHfqs2NPkJVLVeLtjcYGMiQgPL1aBUHGTRHHfYHJmjDJ
	xZ6dt4fj46t2U1Bw==
Date: Thu, 16 Apr 2026 17:03:17 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <aeD6OL7b7OqTenX6@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tG1Qj1Isvl30vZRV"
Content-Disposition: inline
X-Spam-Flag: NO
X-Spam-Score: -6.40
X-Spam-Level: 
Subject: [oss-security] cosmic-greeter: Unsafe File System Operations in User Home
 Directories (CVE-2026-25704)

--tG1Qj1Isvl30vZRV
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 16 Apr 2026 17:03:17 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: cosmic-greeter: Unsafe File System Operations in User Home
 Directories (CVE-2026-25704)

Hello list,

this is a security report about issues in cosmic-greeter. We also
offer a rendered  version of this report on our blog [1].

Summary: Cosmic is a modern Linux desktop environment implemented in
Rust. One of its components, cosmic-greeter, contains a D-Bus service
which operates in user home directories in an unsafe manner, leading to
potential privilege escalation or local Denial-of-Service.

Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Cosmic is a Linux desktop environment [2] written in the Rust
programming language. There is an ongoing effort to package it for
openSUSE Tumbleweed; in this context we reviewed a number of Cosmic
components, among them a D-Bus service [3] found in cosmic-greeter [4].
We found issues when the service accesses home directories of
unprivileged users, which will be described further below. This report
is based on cosmic-greeter version 1.0.8.

Overview
=3D=3D=3D=3D=3D=3D=3D=3D

`cosmic-greeter-daemon` is implemented in daemon/src/main.rs [5], runs
with full root privileges and offers a D-Bus interface
"com.system76.CosmicGreeter" on the D-Bus system bus. The interface only
provides a single D-Bus method "com.system76.CosmicGreeter.GetUserData".

This D-Bus method is only allowed to be called by members of the
`cosmic-greeter` group, not by arbitrary other unprivileged users. What
the method does [6] is basically looking up all non-system user accounts
in `/etc/passwd` and gathering Cosmic configuration data from every
user's home directory.

Security Issues
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The code contains a comment [7], outlining that it is important to drop
privileges to the owner of the home directory being processed, to
prevent security issues. While this is a good starting point, the actual
implementation of this logic is still lacking in a number of spots.

Following is an excerpt of an `strace` of the `cosmic-greeter-daemon`
process during invocation of the D-Bus method. The output will help
illustrate some of the issues in question:

    setresuid(-1, 1000, -1) =3D 0
    <...>
    statx(AT_FDCWD, "/var/lib/AccountsService/icons/<user>", AT_STATX_SYNC_=
AS_STAT, STATX_ALL, 0x7feb5d5f8a50) =3D -1 ENOENT (No such file or director=
y)
    statx(AT_FDCWD, "/home/<user>/.local/share/cosmic/com.system76.CosmicTh=
eme.Mode/v1", AT_STATX_SYNC_AS_STAT, STATX_ALL, 0x7feb5d5f8800) =3D -1 ENOE=
NT (No such file or directory)
    mkdir("/home/<user>/.config/cosmic/com.system76.CosmicTheme.Mode/v1", 0=
777) =3D -1 EEXIST (File exists)
    statx(AT_FDCWD, "/home/<user>/.config/cosmic/com.system76.CosmicTheme.M=
ode/v1", AT_STATX_SYNC_AS_STAT, STATX_ALL, {stx_mask=3DSTATX_ALL|STATX_MNT_=
ID, stx_attributes=3D0, stx_mode=3DS_IFDIR|0755, stx_size=3D4096, ...}) =3D=
 0
    statx(AT_FDCWD, "/home/<user>/.config/cosmic/com.system76.CosmicTheme.M=
ode/v1/is_dark", AT_STATX_SYNC_AS_STAT, STATX_ALL, {stx_mask=3DSTATX_ALL|ST=
ATX_MNT_ID, stx_attributes=3D0, stx_mode=3DS_IFCHR|0666, stx_size=3D0, ...}=
) =3D 0
    mkdir("/home/<user>/.config/cosmic/com.system76.CosmicTheme.Dark/v1", 0=
777) =3D -1 EEXIST (File exists)
    openat(AT_FDCWD, "/home/<user>/.config/cosmic/com.system76.CosmicTheme.=
Dark/v1/palette", O_RDONLY|O_CLOEXEC) =3D 11
    <...>
    setresuid(-1, 0, -1 <unfinished ...>

What we are seeing here is that the privilege drop only concerns the
effective user ID of the `cosmic-greeter-daemon` process. The root group
credentials are retained. This means any potential attacks by the owner
of a home directory can still try to leverage root group credentials to
their advantage.

Given this, the file operations performed in the user's home directory
are subject to a range of security issues:

- directory components within the path can be replaced by symbolic
  links. E.g. if a user places a symlink like this:

      $HOME/.config/cosmic =E2=86=92 /root/.config/cosmic

  then the daemon would actually process root's Cosmic configuration
  files, provided that root's home directory is accessible for members
  of the root group.
- since the daemon also attempts to create directories under some
  conditions, these directories could be created in arbitrary locations
  where the root group has write permission.
- the daemon checks the type of files via `stat()` before trying to open
  configuration files, for example. This is a typical
  Time-of-Check/Time-of-Use (TOCTOU) race condition, however, because
  the owner of the home directory can attempt to replace a regular file
  by a symbolic link or special file by the time the actual `open()`
  call is performed by the daemon. This can lead to the following
  potential issues:
  - parsing of private files accessible to the root group. Whether the
    data parsed from such files could ever leak into the context of a
    local attacker is a matter that we did not investigate more closely
    for the purpose of this report.
  - by placing a symbolic link to e.g. `/dev/zero`, an out-of-memory
    situation can be triggered in the daemon, causing it to be killed by
    the kernel, leading to a local Denial-of-Service (DoS).
  - by placing a FIFO named pipe in the location the daemon would block
    on it forever, also leading to a local DoS.
- the daemon considers accounts with user IDs =E2=89=A5 1000 as regular user
  accounts [8]. On many Linux distributions this means that also the
  `nobody` user account is included (UID 65534). As a result, the daemon
  also attempts to process Cosmic configuration in
  `/var/lib/nobody` on openSUSE. This grants processes operating with
  `nobody` privileges the opportunity to attempt to exploit the daemon's
  logic.

The severity of these issues is reduced by the fact that only members of
the `cosmic-greeter` group are allowed to invoke the `GetUserData` D-Bus
method, thus potential attackers have to wait for an authorized process
to call the function to attempt to exploit it. We don't have enough
insight into the bigger picture of the Cosmic desktop environment, but
it could be possible that local users are able to indirectly trigger the
execution of this D-Bus method by using other APIs made available by
Cosmic.

Suggested Fixes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We suggested the following improvements to upstream to deal with the
issues:

- the privileges should be fully dropped to the target user account,
  including group ID and the supplementary group IDs.
- to prevent potential DoS attack surface, the daemon should carefully
  open target paths element by element, passing `O_NOFOLLOW|O_NONBLOCK`
  to prevent symlink attacks, then perform an `fstat()` on the open file
  to determine its type in a race-free fashion.
- the `nobody` user account should be explicitly excluded based on its
  name for distributions that set a valid shell for this account.
- as additional hardening, the systemd unit
  `cosmic-greeter-daemon.service` can be extended with directives like
  `ProtectSystem=3Dfull`. This needs some tuning, though, since the daemon
  still needs to be able to read files in home directories of other
  users.

Upstream Bugfix
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Upstream implemented commit 63cd93bddd0 [9] containing the following
changes:

- the daemon properly drops its group and supplementary group IDs to the
  target user's.
- only user IDs in the range defined by `UID_MIN` and `UID_MAX` as
  configured in `/etc/login.defs` will be considered.
- icon files in `/var/lib/accountservice` will be opened with
  `O_NOFOLLOW` (actually an unrelated change / security hardening).

This bugfix is part of upstream release 1.0.9 [10] and newer.

What is still missing from our point of view is the prevention of local
DoS attack surface when accessing files in the user's home directory. We
informed upstream about this but have not heard back about this topic
for a while.

CVE Assignment
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Upstream has not expressed any wishes regarding CVE assignment, or
whether one should be assigned at all. We decided to assign a single
CVE-2026-25704 from our pool to track the main aspect of this report,
the incomplete privilege drop in the daemon.

Timeline
=3D=3D=3D=3D=3D=3D=3D=3D

2026-03-11: We forwarded this report to security@system76.com and the main =
developer of cosmic-greeter, offering coordinated disclosure.
2026-03-11: Upstream confirmed the issue and opted out of coordinated discl=
osure.
2026-03-11: We got a follow-up response asking us to keep the information p=
rivate for while longer after all.
2026-03-11: We received a patch from upstream corresponding to commit 63cd9=
3bddd0 [9] and have been asked to review it.
2026-03-12: Upstream meanwhile created a public pull request based on this =
bugfix and informed us that the report no longer needed to be private.
2026-03-13: We assigned CVE-2026-25704 to track the main aspect of the vuln=
erability, an incomplete privilege drop.
2026-03-13: We shared the CVE with upstream and provided feedback on the bu=
gfix, mainly pointing out that local Denial-of-Service (DoS) attack service=
 still remains.
2026-03-13: Upstream informed us that they are going to address these remai=
ning issues as well.
2026-03-24: We asked upstream about the status of the additional fixes, but=
 received no response so far.
2026-04-16: Publication of this report.

References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://security.opensuse.org/2026/04/16/cosmic-greeter.html
[2]: https://system76.com/cosmic
[3]: https://bugzilla.suse.com/show_bug.cgi?id=3D1259401
[4]: https://github.com/pop-os/cosmic-greeter
[5]: https://github.com/pop-os/cosmic-greeter/blob/epoch-1.0.8/daemon/src/m=
ain.rs
[6]: https://github.com/pop-os/cosmic-greeter/blob/epoch-1.0.8/daemon/src/m=
ain.rs#L62
[7]: https://github.com/pop-os/cosmic-greeter/blob/epoch-1.0.8/daemon/src/m=
ain.rs#L9
[8]: https://github.com/pop-os/cosmic-greeter/blob/epoch-1.0.8/daemon/src/m=
ain.rs#L65
[9]: https://github.com/pop-os/cosmic-greeter/commit/63cd93bddd01bf714e9855=
3966d4da12eac0ee5b
[10]: https://github.com/pop-os/cosmic-greeter/releases/tag/epoch-1.0.9

Cheers

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=C3=BCrnberg
Gesch=C3=A4ftsf=C3=BChrer: Jochen Jaser, Andrew McDonald, Werner Knoblich

--tG1Qj1Isvl30vZRV
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmng+jUbFIAAAAAABAAO
bWFudTIsMi41KzEuMTEsMiwyAAoJEBTEBclxkjVTAGkQAIUaAVUd/tQP29fmshrR
o0/u1d3YjGGnLbJ6uWzFNYP/QPXjSwGtE8deX39W3VyQEUoJIvB9asJrJVM1lAbD
vqm+oz23z6LqbT/AIbwaLlWcLB1U3wQxO8c113fLtmzMnE+vArPCwCyyexWRqEgj
YLv/lHkMkCPXS6SKTSImE4hd3xSBr8h0I5sJlC9m+F4p8PH8K8XuitEWIKDdXP0F
zA0nwWt9MQmyyyXAEWFJVARn1R6PxZMe0NEQkTqOljou/gAnLnDLcHcDKqhhJyM+
CnPhliKNmQeeVATbmXEl0r3aeXYZVtiNqS5Rtzg2rL51nwtU27noU3lM3pqcGULO
SJNc9hrqleVu5dUjXXnC4tVQgnl7rnIx5poJ10HNHLqUoqbxi1YfMKrk21agmZYR
4F7BDBTuApd7K1b5WViuEFA8e5op3nhXM7vvKNPPfnL1lvgjPdkbq+PKlO3GW2sY
ezAR2+LnHe4PejrF9WMnToOUja3qGFHzoVCTOvXLne2ezL51FKs4kWRyg4J5U0M7
tmY+8IaogykWPvUU84SXXyWBaWeYLdoQAB1oiylANP7fSvzp5hMZqrT0/ehXu0/l
fanM5MX6OvrTFmAhPzcMqzPUN9sZMpG7YGxN2Lv7zS2tlPgrnuMBL4UZX5gen0va
bgVcY5JqR2Aj8qpb2/xp1fvA
=ojdh
-----END PGP SIGNATURE-----

--tG1Qj1Isvl30vZRV--
