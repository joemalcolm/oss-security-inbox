Received: (qmail 9603 invoked by uid 550); 7 Jan 2026 19:20:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9573 invoked from network); 7 Jan 2026 19:20:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1767813621; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=d/zsJKuX8YDuzwFcOzZGtYpa9JSNZnQpoKtsLmYyPyk=;
	b=HRbzew9gcoBl0QxF/HFYqkEWeCGBj/z6a0KefT1V/Og98yLb8WSO3sCLdk8YVpL06IItbp
	rWGs+OiIE6tmYDxSZzEJxTzoThxZaA+4iQgIRWlTx1vz4cOT4fom7wu3VRX+ycfZBRzWd1
	j6yTFxFwnZbi46R0NP5vrQV61ykR0FQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1767813621;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=d/zsJKuX8YDuzwFcOzZGtYpa9JSNZnQpoKtsLmYyPyk=;
	b=RdoXxST1k1dUD27Q+JeMSPoJ8EvHs5u82dOd6TERha7i6o3gGgCmbuuv2TviIIW12kw3cH
	90BktQUwAo6TzNDg==
Authentication-Results: smtp-out1.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=gVlN1brG;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=eeC31hrf
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1767813620; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=d/zsJKuX8YDuzwFcOzZGtYpa9JSNZnQpoKtsLmYyPyk=;
	b=gVlN1brGA8xRYygyB8KxbBVRfSihcVxxrTq7ukNrzo2siXpuA+J90RjiYZTvKrMHDN+MN9
	+V40J9iiSXsqczd3DGtaaE8WOgBgj6Fhe6ZinmAcYXft6S930Okw8n1+OlKDiY46NDV6pV
	3PtgK9Jwxu7bBwVPxsCT7vcooeqqr+o=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1767813620;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=d/zsJKuX8YDuzwFcOzZGtYpa9JSNZnQpoKtsLmYyPyk=;
	b=eeC31hrfMI0RuK1sgCfh8A/uP+LS9zr8iJ4baPNvcNvwSYmrROccK5i7bxFoyFirl7mEWQ
	5KsSWRoQNguy70Bg==
Date: Wed, 7 Jan 2026 20:20:20 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <aV6x9IJym6OdzB9Y@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ARKK7rLmKdRSHA59"
Content-Disposition: inline
X-Spam-Flag: NO
X-Spam-Score: -6.61
X-Spam-Level: 
Subject: [oss-security] Foomuuri: Lack of Client Authorization and Input Verification allow
 Control over Firewall Configuration (CVE-2025-67603, CVE-2025-67858)

--ARKK7rLmKdRSHA59
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 7 Jan 2026 20:20:20 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Foomuuri: Lack of Client Authorization and Input Verification allow
 Control over Firewall Configuration (CVE-2025-67603, CVE-2025-67858)

Hello list,

please find below a report about security issues in the D-Bus interface
in the Foomuuri firewall manager [1]. We also offer a rendered version
of this report on our blog [2].

Summary: Foomuuri is an nftables-based firewall manager for Linux. It
contains a privileged D-Bus service which allows to change the firewall
configuration. A lack of D-Bus client authorization and input data
verification allow arbitrary local users to completely control the
system's firewall configuration in Foomuuri before version 0.31.

1) Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Foomuuri [1] is an nftables-based firewall manager for Linux. The
project includes a D-Bus daemon which offers an API similar to
firewalld. In early December an openSUSE community member asked us to
review Foomuuri [3] for addition to openSUSE Tumbleweed.

During the review we quickly noticed a lack of client authorization and
input validation in the implementation of Foomuuri's D-Bus service. We
reported the issues to upstream and performed coordinated disclosure.
Upstream published version 0.31 [4] of Foomuuri on 2026-01-07 which
contains bugfixes for the security issues.

The next section provides an overview of the Foomuuri D-Bus service.
Section 3) discusses the security issues in detail. Section 4) provides
an overview of the upstream bugfixes to address the issues. Section 5)
looks into the CVEs which were assigned. Section 6) gives insight into
the coordinated disclosure process which was established for these
findings.

This report is based on Foomuuri release v0.29 [5].

2) Overview of the D-Bus Service
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

Foomuuri runs with full root privileges and registers a D-Bus interface
[6] under the name"fi.foobar.Foomuuri1". Optionally a firewalld drop-in
replacement interface is also registered under
"org.fedoraproject.FirewallD1". Both interfaces hook into the same
logic, however, and there is no need to look at them separately.

There are only a few methods [7] provided by the D-Bus interface:
getting the list of available zones and managing the assignment of
network interfaces to zones.

3) Security Issues
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

3.1) Lack of Client Authorization
---------------------------------

There is no authentication layer like Polkit present in the Foomuuri
D-Bus service, and there are also no restrictions on D-Bus configuration
level [8] as to who is allowed to connect to the D-Bus interfaces
provided.

As a result any local user, including low privilege service user
accounts or even `nobody`, can invoke the D-Bus interface and change the
firewall configuration. The only state which can be modified this way is
the assignment of interfaces to zones, but this is enough to weaken the
firewall configuration or to perform a limited Denial-of-Service.

3.2 Missing Input Parameter Verification
----------------------------------------

Apart from the lack of access restrictions pointed out above, the input
parameters to the D-Bus methods are not carefully scrutinized. While the
`zone` input parameter is at least checked against currently configured
zones [9], no further checks are performed on the `interface` parameter.
This means that, e.g. via the "addInterface" D-Bus method, arbitrary
strings can be passed as interface name. There is also intentionally no
check if the specified name corresponds to an existing network device in
the system (to allow seamless coverage of network devices even before
they are added to the system).

One result from this can be log spoofing, since the `interface` name is
passed to logging functions unmodified. The string could contain control
characters or newlines, which can manipulate the log.

In `DbusCommon.add_interface()` [10] the possibly crafted interface name
is added to the to-be-generated JSON configuration via the `out()`
method. While we did not verify whether this works in practice, a local
attacker could attempt to largely control the JSON configuration passed
to `nftables`, by skillfully embedding additional JSON configuration in
the `interface` parameter.

We were worried that this could even lead to arbitrary code execution by
abusing features of `nftables` like loading external files or plugin
code, but it turned out that there are no such features available in the
`nftables` configuration format.

3.3) Unsafe `umask` used in Daemonize Code
------------------------------------------

Foomuuri contains optional support to daemonize itself. Normally this is
done by systemd and the code in question is not invoked. It contains
logic [11] to set the daemon's `umask` to 0, however, which is a bad
default, since applications or libraries which intend to foster user
control of the file mode of newly created files can pass modes like
`0666` to `open()`, rendering them world-writable.

Foomuuri does not contain any code paths that create new files, but the
`umask` setting is also inherited by child processes, for example. While
we did not think this was a tangible security issue in this form, we
suggested to choose a more conservative value here to prevent future
issues.

4) Upstream Bugfixes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We suggested the following fixes to upstream:

- restrict access to the D-Bus interfaces to `root` only, maybe also to
  members of a dedicated opt-in group. Alternatively Polkit could be
  used for authentication of callers, which is more effort and complex,
  however.
- the `interface` input parameter should be verified right from the
  beginning of each D-Bus method to make sure that it does not contain
  any whitespace or special characters and is not longer than `IFNAMSIZ`
  bytes (which is currently 16 bytes on Linux).
- as an additional hardening measure we also suggested to apply systemd
  directives like `ProtectSystem=3Dfull` to Foomuuri's systemd services,
  to prevent possible privilege escalation should anything go wrong at
  the first line of defense.

Upstream decided to implement Polkit authentication for Foomuuri's D-Bus
service and otherwise followed closely our suggestions:

- commit 5944a42 [12] adds Polkit authentication to the D-Bus service.
  Changing firewall settings now requires admin authorization. The use
  of Polkit can be disabled in Foomuuri, in which case only clients with
  UID 0 are allowed to perform the operations.
- commit d1961f4 [13] adds verification of the `interface` parameter to
  prevent manipulation of the JSON configuration data.
- commit 806e11d [14] sets the `umask` used in the daemonize code to a
  more conservative `0o022` setting, preventing world- or group-writable
  files from coming into existence.
- commit 5fcf125 [15] adds the `ProtectSystem=3Dfull` directive to all
  Foomuuri systemd service units.

All of the bugfixes are contained in version 0.31 [4] of Foomuuri.

5) CVE Assignment
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In agreement with upstream we assigned the following two CVEs
corresponding to this report:

- CVE-2025-67603: lack of client authorization allows arbitrary users to
  influence the firewall configuration (issue 3.1).

- CVE-2025-67858: a crafted `interface` input parameter to D-Bus methods
  can lead to integrity loss of the firewall configuration or further
  unspecified impact by manipulating the JSON configuration passed to
  `nft` (issue 3.2).

6) Coordinated Disclosure
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We reported these issues to the upstream developer on 2025-12-11,
offering coordinated disclosure. We soon got a reply and discussed the
details of the non-disclosure process. Upstream quickly shared patches
with us for review and we agreed on the final patches already on
2025-12-19. In light of the approaching Christmas season we agreed on a
publication date of 2026-01-07 for general disclosure.

We want to thank the upstream author for the prompt reaction and
cooperation in fixing the issues.

7) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2025-12-11: We contacted the Foomuuri developer by email providing a detail=
ed report about the D-Bus related findings and offered coordinated disclosu=
re.
2025-12-12: The upstream author confirmed the issues, agreed to coordinated=
 disclosure and asked us to assign CVEs the way we suggested them. 2026-01-=
07 was suggested for publication date.
2025-12-15: We discussed some additional technical details like the umask i=
ssue and the question of whether arbitrary code execution could result from=
 the ability to control the JSON configuration passed to `nft`.
2025-12-18: Upstream shared with us a first version of patches for the issu=
es we reported. The patches for minor issues and hardening were already pub=
lished on GitHub at this point.
2025-12-19: We provided feedback on the patches, suggesting minor improveme=
nts.
2025-12-19: With the fixes ready we discussed whether earlier publication w=
ould make sense, but we agreed to stick to the date of 2026-01-07 to accomm=
odate the Christmas holiday season.
2026-01-07: Upstream release v0.31 [4] was published.
2026-01-07: Publication of this report.

[1]: https://github.com/FoobarOy/foomuuri
[2]: https://security.opensuse.org/2026/01/07/foomuuri-lack-of-dbus-authori=
zation.html
[3]: https://bugzilla.suse.com/show_bug.cgi?id=3D1254385
[4]: https://github.com/FoobarOy/foomuuri/releases/tag/v0.31
[5]: https://github.com/FoobarOy/foomuuri/releases/tag/v0.29
[6]: https://github.com/FoobarOy/foomuuri/blob/c532cc902a402bbaf88e90a972d0=
78649425f34b/src/foomuuri#L2856
[7]: https://github.com/FoobarOy/foomuuri/blob/c532cc902a402bbaf88e90a972d0=
78649425f34b/src/foomuuri#L2763
[8]: https://github.com/FoobarOy/foomuuri/blob/c532cc902a402bbaf88e90a972d0=
78649425f34b/firewalld/fi.foobar.Foomuuri-FirewallD.conf#L20
[9]: https://github.com/FoobarOy/foomuuri/blob/c532cc902a402bbaf88e90a972d0=
78649425f34b/src/foomuuri#L2698
[10]: https://github.com/FoobarOy/foomuuri/blob/c532cc902a402bbaf88e90a972d=
078649425f34b/src/foomuuri#L2692
[11]: https://github.com/FoobarOy/foomuuri/blob/c532cc902a402bbaf88e90a972d=
078649425f34b/src/foomuuri#L244
[12]: https://github.com/FoobarOy/foomuuri/commit/5944a428f53a132fc343ff679=
2b1b7539f1c990e
[13]: https://github.com/FoobarOy/foomuuri/commit/d1961f420600d133e5f1d3125=
deb17445e7745ac
[14]: https://github.com/FoobarOy/foomuuri/commit/806e11d59c1e582452668cec3=
b68397e4cbf71b3
[15]: https://github.com/FoobarOy/foomuuri/commit/5fcf1254537604b0b60904751=
9efedeb7a2fd2cb

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

--ARKK7rLmKdRSHA59
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmlesfQACgkQFMQFyXGS
NVP6lRAA1FbfNRFh0HZvv/yYxGIhsSZH5XTLD9r5ZOgJvP71WNpFbPtXhkE69HHw
Pi66f8IAInNvrnMhs3tI29A53DSFen38o5/H52mmNRtAAl7Iiq1uLQ++OjtpIqaD
i8eQs6Y1iVe8A2JpkNhTNN2WdfZVS0yy+jUot5rnV7SHSSFyriSoLX4fdZnlhTWf
VwoVjFvUt/+Yi2JqsgAcLUtaQlwqBnwbZtiwdlVvst/i5+bbLOvM5+Jj47qKzRtF
LvI0VYVbdADczfBFMxq/tt6Glw15hPn8x9290APqzi2a8+vYkLuPApTGlsVyWimo
CrOXQTWesPSAlDHBBr76rmpCGmVXKFbUTct0Xa7T8g2ylLEf1cyo4iviCQFQosyW
7qdzFsQnOcEkWsT3w89xAVyKAbf98tZrOePQkAFNpgHBP5qfi4z0abfeTwRZV9KN
nffdxGaK6RJ+l/dLSizb2/DNVVrkjufkOdfBjaMS8gh/r0H1R/V+aXN8c4hIkJgX
kNVYjybi+ESfYNpDWLHvepl07bm9oENF3hxlIKz3rQ7IUIP82gOlC6segxaT2NeF
ogHrS5H56ucnsXOe62nXYAQEYaQ6P3RTm348hpX9PTECkF16Yl005owq7gcJPwHD
/D1OE8FOHNLLqaOn19GWKlFDOU2wFZOx1A6a4RJmvO4bksqPQsY=
=/49H
-----END PGP SIGNATURE-----

--ARKK7rLmKdRSHA59--
