Received: (qmail 30175 invoked by uid 550); 31 Oct 2025 17:22:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29956 invoked from network); 31 Oct 2025 17:21:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1761931310; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=9t//Awqryvv6RvTATal/buz1pBmk9IjYm4bVelO7nUQ=;
	b=WL8Xi+xKLR8+l7UjICdZGjgNTyaO/A9tgQMdfWHc/tIEr7H6N78e3/nlLsLqrpqGu9q6Zk
	sGJQ29JXz72Q32KqHbpZpmhs6w5gRPQtXl9RQOMoUlOTigaCoN1FFPi4jS/Rnl84IgRYgd
	Jz3f+SUDLjsg7MENVYoBs+7xp6Ypptc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1761931310;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=9t//Awqryvv6RvTATal/buz1pBmk9IjYm4bVelO7nUQ=;
	b=W5er/X0A0l7lvHGuS6YyK1pEl5FhTGcj4OqbPsBX0Nv4vIKBXEdDlTHRPL5x7AxgRBljYZ
	FD22RrNFKutlzFBA==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1761931310; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=9t//Awqryvv6RvTATal/buz1pBmk9IjYm4bVelO7nUQ=;
	b=WL8Xi+xKLR8+l7UjICdZGjgNTyaO/A9tgQMdfWHc/tIEr7H6N78e3/nlLsLqrpqGu9q6Zk
	sGJQ29JXz72Q32KqHbpZpmhs6w5gRPQtXl9RQOMoUlOTigaCoN1FFPi4jS/Rnl84IgRYgd
	Jz3f+SUDLjsg7MENVYoBs+7xp6Ypptc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1761931310;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=9t//Awqryvv6RvTATal/buz1pBmk9IjYm4bVelO7nUQ=;
	b=W5er/X0A0l7lvHGuS6YyK1pEl5FhTGcj4OqbPsBX0Nv4vIKBXEdDlTHRPL5x7AxgRBljYZ
	FD22RrNFKutlzFBA==
Date: Fri, 31 Oct 2025 18:21:46 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <aQTwLW7ZlH0CcRPv@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="z3qyeCMXRXYmSMrJ"
Content-Disposition: inline
X-Spam-Level: 
X-Spam-Flag: NO
X-Spam-Score: -6.40
Subject: [oss-security] OpenSMTPD: Trivial Local Denial-of-Service via UNIX Domain Socket
 (CVE-2025-62875)

--z3qyeCMXRXYmSMrJ
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="rLbulxqHZWoW1qUa"
Content-Disposition: inline
Date: Fri, 31 Oct 2025 18:21:46 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: OpenSMTPD: Trivial Local Denial-of-Service via UNIX Domain Socket
 (CVE-2025-62875)


--rLbulxqHZWoW1qUa
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

this issue was previously posted privately to the distros mailing list.
The embargo ends today. Please find a full formal report below. This
report is also available as rendered HTML on our blog [1].

Summary:

A world-writable `smtpd.sock` allows arbitrary local users to crash an
OpenSMTPD instance in version 7.7.0. Upstream provided a bugfix after a
longer time of silence, but there might still linger a memory leak issue
in the socket handling code, which remains unaddressed.

1) Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

OpenSMTPD [2] is an implementation of the server-side SMTP protocol
offered by the OpenBSD project. A few months ago a SUSE colleague
started packaging it for openSUSE Tumbleweed, which led to a code review
of the package [3].

While looking into a local API offered by OpenSMTPD we discovered a
trivial local Denial-of-Service (DoS) attack vector which allows
unprivileged users to cause the shutdown of all smtpd services. The full
details about the issue follow in section 2). Some additional remarks
about setuid-root and setgid utilities contained in OpenSMTPD are found
in section 3). A quick survey of the network-facing code of OpenSMTPD
is provided in section 4).

Note that two source code repositories for OpenSMTPD exist. The most
up-to-date code is found in the OpenBSD CVS repository [4], while the
portable version is found on GitHub [5]. The portable version offers
cross platform support for various kinds of UNIX systems, including
Linux and the other BSDs. This report is based on the portable OpenSMTPD
version 7.7.0p0 [6].

We reported the local DoS issue to upstream but did not get a response
(see timeline below) until two days before publication, due to
communication issues. By now an upstream bugfix [7] is available which
will be part of a pending 7.8.0 release, but it seems an independent
memory leak issue (see section 2) remains unaddressed.

2) Local DoS Issue via UNIX Domain Socket (CVE-2025-62875)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D

OpenSMTPD contains the `smtpctl` program, which communicates with the
`smtpd: control` daemon instance via a UNIX domain socket in
`/var/run/smtpd.sock`. While looking into the protocol used for this
purpose, we noticed a trivial local Denial-of-Service attack vector
affecting all of OpenSMTPD.

The UNIX domain socket `smtpd.sock` has file mode `0666` and is thus
writable for all users in the system, allowing anybody to create local
connections towards `smtpd`.

In the daemon's code in `mproc_dispatch()` [8] the process exits via
`fatal()` in case anything goes wrong while handling such a UNIX domain
socket connection. Two common error situations leading to this are bad
returns from `readv()` in `ibuf_read()` [9] or a bad message length
value in the message header, which is detected in `imsg_parse_hdr()`
[10]. Similar error conditions exist in the `msgbuf_read()` [11] call
path which is used when file descriptor passing is enabled on the
connection (see `imsgbuf_read()` [12]).

As a result, sending a malformed message with a bad header length is
enough for a client to provoke the invocation of `fatal()` on the daemon
side. Once `fatal()` is called, the `smtpd: control` instance ends
execution and causes the whole smtpd instance to be shut down along with
it.

We learned from upstream that the reason for the call to `fatal()` is
that `smtpd.sock` is used for two different purposes at the same time:

- connections from other, trusted `smtpd` daemon instances.
- connections from arbitrary other clients using the `smtpctl` program.=20

The call to `fatal()` is made with the first kind of connections in
mind. These connections are established during startup, and if anything
goes wrong while processing data from other `smtpd` daemon instances,
then a bug in OpenSMTPD itself is assumed, and a shutdown of all daemon
processes is a viable course of action.

The second kind of connections was left unconsidered in this logic, thus
allowing unprivileged clients to trigger this code path which leads to
the local DoS. The upstream bugfix [7] consequently consists of an
added `if` clause which excludes the second type of connections from the
call to `fatal()`.

Memory Leak on Regular Connection Close
---------------------------------------

While looking into a possible bugfix for the DoS issue, we noticed a
comment in the code [13], which points to unsolved cleanup issues, when
processing a connection fails:

    ibuf_read_process(struct msgbuf *msgbuf, int fd)
    {
        /* <<< SNIP >>> */
    fail:
        /* XXX how to properly clean up is unclear */
        if (fd !=3D -1)
            close(fd);
        return (-1);
    }

This made us wonder, if the cleanup is unclear in error conditions, is
it maybe also unclear during regular operation? After all, proper
cleanup will be needed regardless of whether a connection ends
gracefully or not. As it happens, the cleanup logic for a regular
connection close and for an erroneous connection close indeed is
equivalent in OpenSMTPD.

To this end, we tested what happens when a lot of UNIX domain socket
connections towards `smtpd` are created and closed in succession. The
outcome indeed is that the memory used by the `smtpd: control` instance
continuously grows. Thus it seems there is a memory leak present here as
well independently of the main issue described above. We did not analyze
this in more detail, but upstream is aware of the issue and is analyzing
it on their end.

This independent issue means that unprivileged clients can trigger the
memory leak in the `smtpd: control` daemon, even after applying the
upstream bugfix [7] to fix the main issue in this report. The impact
will also be a local DoS, it will take a much longer time to execute it,
however, because the memory leak is small and in our tests only consumes
about 100 megabytes within half an hour. The next section describes a
possible temporary workaround to avoid this issue, as well.

Workaround by Adjusting Socket Permissions
------------------------------------------

We initially suggested a different patch (attached to this mail) to
address the local DoS issue, tightening the permissions of the
`smtpd.sock` UNIX domain socket. We wrongly assumed that there were no
valid use cases for non-root users connecting to this socket. Shortly
before publication we learned from upstream that there actually is a
valid use case for this scenario: non-root users can enqueue mail using
the `sendmail` interface, which makes use of this socket.

Even though our suggested patch causes a regression in this case, it
reduces attack surface and provides protection against the memory leak
described in the previous section. For some users of OpenSMTPD it can
thus be a sensible option to use this patch if the described use case is
not needed, at least until upstream provides a fix for the memory leak
issue, as well.

Reproducer
----------

We offer a simple Python script (attached to this mail) to reproduce the
issue. The script creates a connection towards `smtpd.sock` and sends
an excessive header length. If the reproducer works, the `smtpd` daemon
processes will all exit immediately.

Affected Versions
-----------------

In commit 3270e23a6eb [14], which first made its way into version 7.7.0,
major changes to the message parsing code have been introduced,
including the call to `fatal()`. Triggering the issue was easily
possible in our tests for all packages based on this version.

It is unclear if older versions might be affected by some variant of
this issue as well. We only verified that the trivial reproducer does
not work against version 7.6.0 of OpenSMTPD.

Affected Systems
----------------

We verified that the issue affects the following systems, which all
offer OpenSMTPD version 7.7.0:

- Arch Linux (fully updated on 2025-09-29)
- Debian 13
- Fedora 42
- Gentoo Linux using the 7.7.0p0 ebuild
- OpenBSD 7.7
- NetBSD 10.1 (using the package available from https://pkgsrc.org)

On FreeBSD 14.2, where only the older version 7.6.0 of OpenSMTPD is
available, we could not reproduce the issue.

CVE Assignment
--------------

Without a formal confirmation from upstream we were reluctant to assign
a CVE for the issue. The case seemed clear-cut, however, and when we
were asked to provide a CVE on the distros mailing list [15], we
assigned CVE-2025-62875 and also communicated this to upstream.

When contact to upstream was established shortly before the publication
of this report, upstream picked up this CVE and used it to document
their bugfix.

Upstream Bugfix
---------------

Upstream already published the bugfix commit [7] for the main issue in
this report. The release of OpenSMTPD version 7.8.0 containing this
bugfix is expected soon, and was already announced [16] on the upstream
mailing list.

3) Notes on setuid and setgid Binaries
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The original reason for reviewing OpenSMTPD in the first place was the
presence of setuid and setgid binaries [17] in the package. The
following sub-sections give a short summary of the outcome of the
review.

lockspool
---------

`/usr/libexec/opensmtpd/lockspool` is a world-accessible setuid-root
binary which is used to synchronize parallel access to a user's spool.

The lockspool code [18] found in the OpenSMTPD portable release is quite
complex and is based on some assumptions [19] that might not hold true.
This code can allow for a minor local DoS in multi-user scenarios. The
OpenBSD CVS repository [20] already contains a simplified locking
algorithm which is not affected by this.

We reached out to upstream about this separately from the UNIX domain
socket DoS issue. In this instance we quickly got a reply and upstream
merged the change [21] from the CVS repository into the OpenBSD portable
repository. This change will be part of the OpenSMTPD 7.8.0 release. We
backported the change [22] into the openSUSE packaging of OpenSMTPD as
well.

smtpctl
-------

`/usr/sbin/smtpctl` is a world-accessible setgid binary operating in
`_smtpq` group context. The program uses these special group privileges
to store mail in the directory `/var/spool/smtpd/offline`, when the
smtpd services are not running.

The `_smtpq` group privileges are only used for this well defined
purpose and the extra privileges are also dropped as soon as they are no
longer needed. We found no issues in this aspect of the program.

4) Notes on the Network-Facing OpenSMTPD Code
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

After we found the local security issues described in this report, we
thought it a good idea to also have at least a cursory look [23] at the
actual network-facing SMTP protocol parsing code found in
OpenSMTPD. We could not find any tangible security issues in these
parts, still here is a short summary of our impression of the code:

- the protocol parsing is implemented in plain C and thus error prone.
  The implementation does have this under control, however, even though
  there is some redundancy in handling the various message types.
- a lot of parsing is done manually without the help of third party
  libraries, including things like domain name end email address
  verification.
- transmission of plaintext passwords is rejected on unencrypted
  connections, which is a good security stance.
- the daemon processing network data is running with limited service
  user credentials and is also placed into a `chroot` jail, which
  reduces attack surface.
- the daemon logs every bad SMTP protocol message by default, including
  attacker controlled data, which is a bit peculiar. The logging systems
  on the BSDs and Linux systems we looked into are able to deal with
  this in safe ways, however (e.g. terminal escape sequences are escaped
  or stripped).

5) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2025-09-15: We reported the issue to security@openbsd.org, offering coordin=
ated disclosure. We quickly got a short reply that the topic had been forwa=
rded to the relevant people.
2025-09-29: After two weeks without a more detailed response, we sent a fol=
low-up email asking for confirmation of the issue and if coordinated disclo=
sure was desired, or not. We asked for a response until 2025-10-02, otherwi=
se we would publish the finding on our own terms.
2025-10-02: Still without response, we decided to partially publish the iss=
ue by adding a patch [24] to our packaging, which tightens the UNIX domain =
socket permissions.
2025-10-23: We approached the distros mailing list [15] to give a heads-up =
to other distributions about the issue. We suggested an embargo until 2025-=
10-31.
2025-10-24: A member of the distros mailing list asked for a CVE, so we dec=
ided to assign CVE-2025-62875 and also informed upstream about this and the=
 ongoing embargo on the distros mailing list.
2025-10-27: We shared our suggested patch with the distros mailing list, wh=
ich we initially had forgotten to do.
2025-10-29: An OpenSMTPD developer finally replied to our report, explainin=
g that the information had been lost internally until now. Upstream confirm=
ed the issue and informed us that a bugfix release was being prepared for 2=
025-11-03 at the latest.
2025-10-30: From further discussions with upstream we learned about the rea=
l intentions of the call to `fatal()` and about the regression caused by ou=
r suggested patch. We on the other hand informed upstream about the additio=
nal memory leak issue we stumbled upon.
2025-10-31: Upstream published its bugfix for the main issue [7].
2025-10-31: We updated our report with the latest information from upstream=
 and published it.

[1]: https://security.opensuse.org/2025/10/31/opensmtpd-local-DoS.html
[2]: https://www.opensmtpd.org
[3]: https://bugzilla.suse.com/show_bug.cgi?id=3D1247781
[4]: https://cvsweb.openbsd.org/src/usr.sbin/smtpd
[5]: https://github.com/OpenSMTPD/OpenSMTPD
[6]: https://github.com/OpenSMTPD/OpenSMTPD/releases/tag/7.7.0p0
[7]: https://github.com/OpenSMTPD/OpenSMTPD/commit/653abf00f5283a2d3247eb9a=
abf8987d1b2f0510
[8]: https://github.com/OpenSMTPD/OpenSMTPD/blob/8c07e2a4b3d61d01483bd0f610=
31cb93ed46c9cf/usr.sbin/smtpd/mproc.c#L159
[9]: https://github.com/OpenSMTPD/OpenSMTPD/blob/8c07e2a4b3d61d01483bd0f610=
31cb93ed46c9cf/openbsd-compat/imsg-buffer.c#L826
[10]: https://github.com/OpenSMTPD/OpenSMTPD/blob/8c07e2a4b3d61d01483bd0f61=
031cb93ed46c9cf/openbsd-compat/imsg.c#L369
[11]: https://github.com/OpenSMTPD/OpenSMTPD/blob/8c07e2a4b3d61d01483bd0f61=
031cb93ed46c9cf/openbsd-compat/imsg-buffer.c#L878
[12]: https://github.com/OpenSMTPD/OpenSMTPD/blob/8c07e2a4b3d61d01483bd0f61=
031cb93ed46c9cf/openbsd-compat/imsg.c#L74
[13]: https://github.com/OpenSMTPD/OpenSMTPD/blob/8c07e2a4b3d61d01483bd0f61=
031cb93ed46c9cf/openbsd-compat/imsg-buffer.c#L799
[14]: https://github.com/OpenSMTPD/OpenSMTPD/commit/3270e23a6eb
[15]: https://oss-security.openwall.org/wiki/mailing-lists/distros
[16]: https://www.mail-archive.com/misc@opensmtpd.org/msg06634.html
[17]: https://bugzilla.suse.com/show_bug.cgi?id=3D1247781#c1
[18]: https://github.com/OpenSMTPD/OpenSMTPD/blob/8c07e2a4b3d61d01483bd0f61=
031cb93ed46c9cf/contrib/libexec/lockspool/locking.c#L60
[19]: https://bugzilla.suse.com/show_bug.cgi?id=3D1247781#c3
[20]: https://cvsweb.openbsd.org/cgi-bin/cvsweb/~checkout~/src/libexec/mail=
.local/locking.c?rev=3D1.15&content-type=3Dtext/plain
[21]: https://github.com/OpenSMTPD/OpenSMTPD/commit/91be977454d422af71700ae=
ec247464e313320de
[22]: https://build.opensuse.org/projects/openSUSE:Factory/packages/OpenSMT=
PD/files/OpenSMTPD-simplified-world-writable-spoolers-handling.patch?expand=
=3D1
[23]: https://bugzilla.suse.com/show_bug.cgi?id=3D1247781#c18
[24]: https://build.opensuse.org/projects/openSUSE:Factory/packages/OpenSMT=
PD/files/OpenSMTPD-reduced-permissions-on-SMTPD_SOCKET.patch?expand=3D1

Best Regards

SUSE Linux Security Team

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich

--rLbulxqHZWoW1qUa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment;
	filename=0001-control_create_socket-prevent-world-access-to-UNIX-d.patch
Content-Transfer-Encoding: quoted-printable

=46rom de8b223f42ceffebf17e0cc5fef4878ab6dcfa27 Mon Sep 17 00:00:00 2001
From: Matthias Gerstner <matthias.gerstner@suse.de>
Date: Mon, 27 Oct 2025 13:06:47 +0100
Subject: [PATCH] control_create_socket(): prevent world-access to UNIX doma=
in
 socket

This addresses CVE-2025-62875 by dropping the world-readable and
world-writable bits from the UNIX domain socket. This way only
privileged clients can send messages to smtpd and thus the problematic
call to `fatal()` is no longer reachable to unprivileged users.

This can break some use cases when non-root users are using `sendmail` to
enqueue mail messages locally.

There seems still a memory leak to be reachable via this UNIX domain socket,
thus on the positive side this patch avoids any potential left security iss=
ues
found in the handling of socket.
---
 usr.sbin/smtpd/control.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/usr.sbin/smtpd/control.c b/usr.sbin/smtpd/control.c
index eb7ef10e..96060bbd 100644
--- a/usr.sbin/smtpd/control.c
+++ b/usr.sbin/smtpd/control.c
@@ -194,7 +194,7 @@ control_create_socket(void)
 	(void)umask(old_umask);
=20
 	if (chmod(SMTPD_SOCKET,
-		S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH) =3D=3D -1) {
+		S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP) =3D=3D -1) {
 		(void)unlink(SMTPD_SOCKET);
 		fatal("control: chmod");
 	}
--=20
2.51.0


--rLbulxqHZWoW1qUa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=talk_smtpd.py
Content-Transfer-Encoding: quoted-printable

#!/usr/bin/env python3

# Matthias Gerstner <matthias.gerstner@suse.de>
#
# 2025-09-15
#
# script to send a message to smtpd via /var/run/smtpd.sock.
#
# passing an excess length in the header causes smtpd to shutdown.

import socket
from dataclasses import dataclass
import struct
import sys

@dataclass
class Header:
	mtype: int
	length: int
	peerid: int
	pid: int

	def to_bytes(self):
		return struct.pack("=3DIIII", self.mtype, self.length, self.peerid, self.=
pid)

sock =3D socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
sock.connect("/var/run/smtpd.sock")

IMSG_CTL_SMTP_SESSION =3D 35

h =3D Header(mtype=3DIMSG_CTL_SMTP_SESSION, length=3D500000, peerid=3D16, p=
id=3D0)

sock.send(h.to_bytes())
#sock.send(b"12345678")

# keep the connection open
print("press ENTER to terminate connection")
sys.stdout.flush()
sys.stdin.readline()

--rLbulxqHZWoW1qUa--

--z3qyeCMXRXYmSMrJ
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmkE8CoACgkQFMQFyXGS
NVMmcQ//fC37psqE5JNAVDXSiG1apE6o++lU8i6CiuKvT9X2dRZJboprgIYANgi6
o6Y+X2+yEn5RMIIYRvhwKfHUziyezpTPx/Cal4zNtzsaa+l9Pnh+NZwFuNWUKwKP
NJYsCojXt1eZVlSivDO3NMKks4fREDtdKLFf57Hnq3M1AACoRbWvXMqqB2s0jnrn
gVk4vyny1TBbpftt8p5/ihn8fe3gf+Lf4ZRfK3IZr7gLOW2H+psfOYQgF7Om4Tvx
+D0PszrQ5vEp8IQxEvWXJzTuL5g/dQ7EJXEeKxk0Be6Cr2X9ADJKorjvKXwq2VE3
mdVRNjFYdpilyotZDBI/jRPjFLS2quiMdqa+YzBo5jOHfW6gANiHCVjMa2W0/2sf
S0iVRFIj+6zaxiluMccScVAwif5WxLWLWOsnxA6orSrBPqZhc4w+WqunEgIujbEU
A2Rtqi5L5aHNPF/vWNp6frLRs5PDOO/z1WrXL0uGhJA/5p1Y14EtX+dHriwqOu4l
lPb2z6xk6Y+PybOXuf2OAsjl+JzGOM+UQ7h21ksCzbyF0b24lrw0FkpFQW8Pt9tf
pG0r++md0Rkfoe52f43fnTLpBXNMcWdFCepHKuP7b04HM1J06aBOROvQVa0p5cFG
RX2lPH0YTb7W9fjvAsLX4KtZrAChzfhncgbEblFBrsyTEuuo4Lw=
=xOpg
-----END PGP SIGNATURE-----

--z3qyeCMXRXYmSMrJ--
