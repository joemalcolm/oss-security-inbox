Received: (qmail 27714 invoked by uid 550); 13 Jun 2025 14:29:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27686 invoked from network); 13 Jun 2025 14:29:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1749824959; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=O+SgXBy9UIfPnRUDV/wFVL4HS3tJX1dXrn/e0FhXbB8=;
	b=fREbIWETTWp3e5HFNhxjiVi32tSRznZeOliM3ci/mAiSVkYedLL9BhZqmrksfDIEDaJVYe
	98TQPprbO/VUPl5SEpfm0TgWLT050Qwa0XaN/OQ9+lAhJbrfwnv/n1aL2rYuwTpy/2xAF9
	x2wvAlwypgWP1KFCwxX3gw8cfN5wkIg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1749824959;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=O+SgXBy9UIfPnRUDV/wFVL4HS3tJX1dXrn/e0FhXbB8=;
	b=oyaLeQUEGFPJtdqEDP0UZKpdc8o4t0RoOf9APM7u5X5jV9MxHhfDOmS7hg+cVqGCNON7tW
	2LG3fZTJW793/gBQ==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1749824958; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=O+SgXBy9UIfPnRUDV/wFVL4HS3tJX1dXrn/e0FhXbB8=;
	b=0YEWAFXuoYMdqWCA+18WF1X25r2qI3QHzmhvUowroLil9nuF2nX3/lB8f3OCmG6/iDKuQv
	o2kHFII7ovRPbrw7rrxzJXaqff0ZBxX2qYfrwDpoYLvAjFqMRtWToIOsy631p4irs73kXQ
	pa+rrxAl1vMGlabRW9MS18319KeDNxE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1749824958;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=O+SgXBy9UIfPnRUDV/wFVL4HS3tJX1dXrn/e0FhXbB8=;
	b=MszBr2Ul0hf8/5p8S8MbCnnwAh+2Af/YhSGuLmF0mmBs343jfhMy4283kHZE7P61YUEXrN
	n6EUlC172dBiGTDA==
Date: Fri, 13 Jun 2025 16:29:17 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <aEw1vZi7kz0pDFZa@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fkMMmcNY3heo+jn4"
Content-Disposition: inline
Subject: [oss-security] sslh: Remote Denial-of-Service Vulnerabilities (CVE-2025-46807,
 CVE-2025-46806)

--fkMMmcNY3heo+jn4
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 13 Jun 2025 16:29:17 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: sslh: Remote Denial-of-Service Vulnerabilities (CVE-2025-46807,
 CVE-2025-46806)

Hello list,

this is a review report about remote Denial-of-Service vulnerabilities
in sslh. We also offer a rendered HTML version of this report on our
blog [1]. Please find the full details below.

1) Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

`sslh` [2] is a protocol demultiplexer that allows to provide different typ=
es
of services on the same network port. To achieve this, `sslh` performs
heuristic analysis of the initial network data arriving on a connection, and
forwards all further traffic to a matching service on the local system. A
typical use case is to serve both SSL and SSH connections (hence the name) =
on
port 443, to accommodate corporate firewall restrictions.

In April 2025 we conducted a review of `sslh`, mostly due to the fact that
it processes all kinds of network protocols and is implemented in the C
programming language, which is known to be prone to memory handling errors.
For this review we looked into release v2.2.1 [3] of `sslh`. Bugfixes for t=
he
issues described in this report can be found in release v2.2.4 [4].

The next section provides an overview of the `sslh` implementation. Section=
 3)
describes two security relevant Denial-of-Service issues we discovered duri=
ng
our review. Section 4) discusses some non-security relevant findings and
remarks we gathered during our review.  Section 5) looks into the general
resilience of `sslh` against high network load attacks. Section 6) provides=
 a
summary of our assessment of `sslh`.

2) Overview of sslh
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

`sslh` implements so-called probes [5] to determine the type of service whe=
n a
new TCP or UDP session is initiated. These probes inspect the first few byt=
es
of incoming data until a positive or a negative decision can be made. Once a
specific service type has been determined, all following traffic will be
forwarded to a dedicated service running on localhost, without interpreting
further data. `sslh` will only probe for those protocols that are actively
configured [6], no other probes will be invoked without need.

`sslh` supports three different I/O models for handling network input. The
choice of what model to use is made at compile time, which is why there can
exist multiple `sslh` binaries, one for each I/O flavor. The following mode=
ls
exist:

- a fork model implemented in `sslh-fork.c` [7]. In this model, a separate
  process is forked for each newly incoming TCP connection. The forked proc=
ess
  obtains ownership of the TCP connection, handles related I/O, and exits w=
hen
  the connection ends. UDP protocols are not supported in this model.
- a select model implemented in `sslh-select.c` [8]. In this model, file
  descriptors are monitored in a single process using the `select()` system
  call. This model also supports UDP protocols: for this purpose, all data
  originating from the same source address are considered to be part of the
  same session. A dedicated socket is created for each new session `sslh`
  detects.
- an implementation based on libev [9] implemented in `sslh-ev.c` [10]. This
  variant outsources the I/O management details to the third party library.
  This also supports UDP protocols in a similar way to the select model
  described earlier.

The different probes implemented in `sslh` were one of the focus areas duri=
ng
our review. `sslh` runs with lowered privileges and systemd hardenings
enabled, thus privilege escalation attack vectors will only have limited
impact. An area that is still important in spite of these protections is
Denial-of-Service, which we looked into as well.

3) Security Issues
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

3.1) File Descriptor Exhaustion Triggers Segmentation Fault (CVE-2025-46807)
----------------------------------------------------------------------------

As part of our investigation of Denial-of-Service attack vectors, we looked
into what happens when a lot of connections are created towards `sslh` and,=
 as
a result, file descriptors are exhausted. While the `sslh-fork` variant
manages file descriptor exhaustion quite well, the other two variants have
issues in this area. This especially affects UDP connections that need to be
tracked on application level, since there is no concept of a connection on
protocol level.

For each connection, `sslh` maintains a timeout after which the connection =
is
terminated if the type of service could not be determined. The `sslh-select`
implementation only checks UDP timeouts when there is network activity,
otherwise the file descriptors that are created for each UDP session stay
open. Due to this, an attacker can create enough sessions to exhaust the
1024 file descriptors supported by default by `sslh`, thereby making it
impossible for genuine clients to connect anymore.

Even worse, when the file descriptor limit is encountered, `sslh` crashes w=
ith
a segmentation fault, as it attempts to dereference `new_cnx` [11], which i=
s a
`NULL` pointer in this case. Therefore, this issue represents a simple remo=
te
Denial-of-Service attack vector. The segmentation fault also happens when t=
he
admin configures the `udp_max_connections` setting (or command line switch),
as the `NULL` pointer dereference is reached in this context as well.

To reproduce this, we tested the `openvpn` probe configured for UDP. On the
client side we created many connections where each connection only sends a
single `0x08` byte.

We did not check the `sslh-ev` implementation very thoroughly, because it
depends on the third party `libev` library. The behaviour is similar to the
`sshl-select` variant, though. UDP sockets are seemingly never closed again.

### Bugfix

Upstream fixed this issue in commit ff8206f7c [12] which is part of the v2.=
2.4
[4] release. While the segmentation fault is fixed with this change, UDP
sockets potentially still stay open for a longer time until further traffic=
 is
processed by `sslh`, which triggers the socket timeout logic.

3.2) Misaligned Memory Accesses in OpenVPN Protocol Probe (CVE-2025-46806)
--------------------------------------------------------------------------

In the UDP code path of `is_openvpn_protocol()` [13], `if` clauses like this
can be found:

    if (ntohl(*(uint32_t*)(p + OVPN_HARD_RESET_PACKET_ID_OFFSET(OVPN_HMAC_1=
28))) <=3D 5u)

This dereferences a `uint32_t*` that points to memory located 25 bytes after
the start of the heap allocated network buffer. On CPU architectures like A=
RM
this will cause a SIGBUS error, and thus represents a remote DoS attack
vector.

We reproduced this issue on a `x86_64` machine by compiling `sslh` with
`-fsanitize=3Dalignment`. By sending a sequence of at least 29 `0x08` bytes=
, the
following diagnostic is triggered:

> probe.c:179:13: runtime error: load of misaligned address 0x7ffef1a5a499 =
for type 'uint32_t', which requires 4 byte alignment
> 0x7ffef1a5a499: note: pointer points here
>  08 08 08  08 08 08 08 08 08 08 08  08 08 08 08 08 08 08 08  08 08 08 08 =
08 08 08 08  08 08 08 08 08
>               ^
> probe.c:185:13: runtime error: load of misaligned address 0x7ffef1a5a49d =
for type 'uint32_t', which requires 4 byte alignment
> 0x7ffef1a5a49d: note: pointer points here
>  08 08 08 08 08 08 08  08 08 08 08 08 08 08 08  08 08 08 08 08 08 08 08  =
08 08 08 08 08 08 08 08  08

### Bugfix

The usual fix for this problem in protocol parsing is to `memcpy()` the
integer data into a local stack variable instead of dereferencing the point=
er
into the raw network data. This is what upstream did in commit 204305a88fb3
[14] which is part of the v2.2.4 [4] release.

4) Other Findings and Remarks
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

4.1) Missing Consideration of Short Reads on TCP Streams
--------------------------------------------------------

A couple of probes don't consider short reads when dealing with the TCP
protocol. For example in `is_openvpn_protocol()` [15] the following code is
found in the TCP code path:

    if (len < 2)
        return PROBE_AGAIN;

    packet_len =3D ntohs(*(uint16_t*)p);
    return packet_len =3D=3D len - 2;

If less than two bytes have been received, then the function indicates
`PROBE_AGAIN`, which is fine. After the supposed message length has been
parsed into `packet_len`, the probe only succeeds if the complete message h=
as
been received by now, otherwise the function returns `0` which equals
`PROBE_NEXT`.

Similar situations are found in `is_teamspeak_protocol()` [16] and
`is_msrdp_protocol()` [17]. While it may be unlikely that such short reads
occur often with TCP, it is still formally incorrect and could lead to false
negative protocol detection in a number of cases.

### Bugfix

Based on experience upstream believes that this is not an issue in practice
currently, since no bug reports in this area have appeared. For this reason
this is not a priority for upstream at the moment.

4.2) Likelihood of False Positive Probe Results
-----------------------------------------------

A couple of probe functions rely on very little protocol data to come to a
positive decision. For example `is_tinc_protocol()` [18] indicates a match =
if
the packet starts with the string `" 0"`. In `is_openvpn_protocol()` [15] a=
ny
packet that stores the packet length in the first two bytes in network byte
order is considered a match, which is probably the case for quite a few
network protocols.

Security-wise this is not relevant, because the services these packets are
being forwarded to have to be able to deal with whatever data is sent to th=
em,
even if it is destined for a different type of service. From a perspective =
of
correct probe implementation it could lead to unexpected behaviour in some
situations, however (especially when a lot of protocols are multiplexed over
the same `sslh` port). We suggested upstream to try and base probe decisions
on more reliable heuristics to avoid false positives.

### Bugfix

Similar to section 4.1) upstream does not believe that this is a major issue
for users at the moment, hence there are no immediate changes to the code b=
ase
to address this.

4.3) Parsing of Potentially Undefined Data in `is_syslog_protocol()`
--------------------------------------------------------------------

The following code is found in `is_syslog_protocol()` [19]:

    res =3D sscanf(p, "<%d>", &i);
    if (res =3D=3D 1) return 1;

    res =3D sscanf(p, "%d <%d>", &i, &j);
    if (res =3D=3D 2) return 1;

The `sscanf()` function does not know about the boundaries of the incoming
network data here. Very short reads like a 1 byte input will cause `sscanf(=
)`
to operate on undefined data, found in the buffer allocated on the heap in
`defer_write()` [20].

### Bugfix

For a quick bugfix we suggested to explicitly zero terminate the buffer by
allocating an extra byte after the end of the payload. Running `sscanf()` to
parse integers found in untrusted data could be considered a bit on the
dangerous side, however, thus we suggested to generally try and change this
into more careful code.

Upstream fixed this in commit ad1f5d68e96 [21], which is part of the v2.2.4
[4] release. The bugfix is along the lines of our suggestion and also adds =
an
additional sanity check for the integer which is parsed from the network da=
ta.

5) Resilience of `sslh` Against High Network Load Attacks
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

A general-purpose network service like `sslh` can be sensitive to resource
depletion attacks, such as the aforementioned file descriptor exhaustion
issue. The `sslh-fork` implementation spawns a new process for each incoming
TCP connection, which brings to mind the possibility to consume excessive
resources not only on a per-process scope, but also on a system-wide scope.=
 By
creating a large amount of connections towards `sslh`, a "fork bomb" effect
[22] could be achieved. When a "fork bomb" is executed locally on Linux then
this often still causes an inaccessible system even today, when there are no
strict resource limits in place. Achieving something like this remotely wou=
ld
be a major DoS attack vector.

`sslh-fork` implements a timeout for each connection, which is based on the
`select()` system call. If the probing phase does not come to a decision
before the timeout occurs, then the connection is closed again. By default
this timeout is set to five seconds. Since `sslh-fork` creates a new process
for each newly incoming connection, there is no limit of 1024 file descript=
ors
being opened by `sslh`. In theory an attacker could attempt to exceed the
system-wide file descriptor and/or process limit by creating an excessive
amount of connections.

The default timeout enforcement of five seconds means that the attack is qu=
ite
limited, however. During our tests we were not able to create more than abo=
ut
5,000 concurrent `sslh-fork` processes. This creates quite a bit of system
load, but does not expose any critical system behaviour on an average machi=
ne.

Even though the current situation is acceptable, it could be considered to
offer an application level limit for the amount of parallel connections. For
UDP there exists a `udp_max_connections` setting already, but not for TCP.

### Bugfix

In discussions with upstream it was agreed that proper protection from such
Denial-of-Service attacks is best achieved on the end of the administrator,
who can for example configure Linux cgroup constraints. Upstream is still
considering to add a `tcp_max_connections` setting to limit the maximum amo=
unt
of parallel TCP connections in the future.

6) Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Overall we believe `sslh` is in good shape. There is little attack surface,
and hardenings are in place by default. With the two remote DoS vectors 3.1)
and 3.2) fixed, it should be safe to use `sslh` in production. Users that a=
re
worried about more complex DoS attacks should additionally consider
customizing their setup to enforce resource consumption limits on operating
system level.

There is some danger of false positive or false negative probe outcomes as
outlined in sections 4.1) and 4.2). These seem not to have occurred a lot in
practice yet, and it is a trade-off towards simplicity and efficiency in the
current implementation of `sslh`.

7) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

- 2025-04-25: We privately reported the findings to the author of `sslh` by
  email, offering coordinated disclosure.
- 2025-05-06: We discussed details about the reported issues and possible C=
VE
  assignments. The issues were kept private for the time being.
- 2025-05-08: We assigned two CVEs from our pool for the issues and shared
  them with upstream.
- 2025-05-25: The upstream author informed us about bugfixes that have alre=
ady
  been published in the `sslh` GitHub repository and about an upcoming rele=
ase
  containing the fixes.
- 2025-05-28: Release v2.2.4 [4] containing the fixes was published.
- 2025-06-13: We published this report.

8) References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://security.opensuse.org/2025/06/13/sslh-denial-of-service-vulner=
abilities.html
[2]: https://github.com/yrutschle/sslh
[3]: https://github.com/yrutschle/sslh/releases/tag/v2.2.1
[4]: https://github.com/yrutschle/sslh/releases/tag/v2.2.4
[5]: https://github.com/yrutschle/sslh/blob/v2.2.1/probe.c#L34
[6]: https://github.com/yrutschle/sslh/blob/v2.2.1/example.cfg#L116
[7]: https://github.com/yrutschle/sslh/blob/v2.2.1/sslh-fork.c
[8]: https://github.com/yrutschle/sslh/blob/v2.2.1/sslh-select.c
[9]: https://github.com/enki/libev
[10]: https://github.com/yrutschle/sslh/blob/v2.2.1/sslh-ev.c
[11]: https://github.com/yrutschle/sslh/blob/v2.2.1/sslh-select.c#L161
[12]: https://github.com/yrutschle/sslh/commit/ff8206f7c8a47f901b78a1b78db5=
a4c788f6aa6f
[13]: https://github.com/yrutschle/sslh/blob/v2.2.1/probe.c#L179
[14]: https://github.com/yrutschle/sslh/commit/204305a88fb32cffaf1349253a2b=
052186ca8d39
[15]: https://github.com/yrutschle/sslh/blob/v2.2.1/probe.c#L162
[16]: https://github.com/yrutschle/sslh/blob/v2.2.1/probe.c#L383
[17]: https://github.com/yrutschle/sslh/blob/v2.2.1/probe.c#L396
[18]: https://github.com/yrutschle/sslh/blob/v2.2.1/probe.c#L217
[19]: https://github.com/yrutschle/sslh/blob/v2.2.1/probe.c#L365
[20]: https://github.com/yrutschle/sslh/blob/v2.2.1/common.c#L516
[21]: https://github.com/yrutschle/sslh/commit/ad1f5d68e96eec389668d1139cb2=
81b1f3f13725
[22]: https://en.wikipedia.org/wiki/Fork_bomb
[23]: https://bugzilla.suse.com/show_bug.cgi?id=3D1224800

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
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich

--fkMMmcNY3heo+jn4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmhMNb0ACgkQFMQFyXGS
NVPT/A//fFRD4NpYdCdxMuEZIwLHatGv5fm09E798Wqk1ZYI0qr+Rl0pbNyG7ksz
VS8uf/xEnyuXQHvAj/JchKn+3mvTo7W8zF1xcEXc05HAGr3DwCpsLAT+j6eSA+/t
SUTJZfnax3tGYTtI3jROUqIONs0m6IKHQcNTGsZKUi14FrkV1cIhSWxeTHzglTuQ
CC1wzCF72sHHdOSrkRwZ85bFNiIsZ+tKrnXorDlJ9iNAGD/M1dA7sdepUpn1eiDg
2wNasVz8aOYSrtYcimNqkD11hPg8o/RLGIHMTC8fxPvEnXzkkdlqoDur+c4BjX1G
NB4iZ5M3QgaCa79VioMA0xkXdAbFfrHwF1VXEQC9tQCw8NSEhrBCNMHP8IRWLu81
nRf1RJ51ZAXmICAFej/URQ8AxwQCYGUahp9N9cKd9wUeFPIubSN6Pa+5ejrPhibY
CcYSRfxAtFqoGJHQoUcAP1KlzLgZW7DrGxVSDLWhYZxdi4ubwTOqznd0imbkcpgQ
sEmE5GOIH7xKIKxuGUMkWCVvEdwFPjSGkHiL3bAlQRify7Ox1eyl1LOIm9QraK2v
TyAjck9FoGjPCDx+MN3ubqWthefo4M/uP2umlCoKxqmzh7Qb5BR6udcg5i+6O+nE
A+I4w0JDtG6WVkr2OqzNxWKqEWdFBWpxJt9JN4cm159JPFJXCc8=
=EtlC
-----END PGP SIGNATURE-----

--fkMMmcNY3heo+jn4--
