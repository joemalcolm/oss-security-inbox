Received: (qmail 30637 invoked by uid 550); 9 Jan 2026 18:17:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30585 invoked from network); 9 Jan 2026 18:17:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1767982615; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=T9XZy5U4OOx5h7sLGLwzPsjU7LEQ2qHIviXTtJNelRo=;
	b=bZZXiaUVGKsedeZi5f9jsniOjVZwBOLLRnYWm6XSjaSKo0HLjrJmXRsRkSgRfSFL9Kae0t
	8iltur5fKMAqDj/mN/b0WQ60Em36mOiIc/aKZJsDcf6AclDKynrIDcdz5RxFMtAr8HwbGL
	Yc2pC0nIZXLttVRlbN6XeP95UR8Vc94=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1767982615;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=T9XZy5U4OOx5h7sLGLwzPsjU7LEQ2qHIviXTtJNelRo=;
	b=LAK9ektwnOkXYiywe3YzF0DuP0WqH6LdcvGwqJHvhXidOzfK2XaHVaCJHjaINK3GsqgkOW
	9bMb0vYKL7mTT7BA==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1767982614; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=T9XZy5U4OOx5h7sLGLwzPsjU7LEQ2qHIviXTtJNelRo=;
	b=Isz3ckmKKxIzyX+/bKcDDXxz2e+BjQoKkYehsiEkhOtIVJ7aIgmMaFIah6emBo94rlO6b1
	j0gwuuRqr4zJm5HFguW0hVQdhfYfAyGqHUJK8mBAjpb/bQHRWX+HvXe4DGf+lcVVam/9Xl
	QjfA+IMLfzMXUGFQ1EB3QNNIfOhww/g=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1767982614;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=T9XZy5U4OOx5h7sLGLwzPsjU7LEQ2qHIviXTtJNelRo=;
	b=G3jnXfg3AbqUSCCT0lk1ZPxrLPe8bhrGcaCrur1Fl6+8ZQkD5wrqf+HCn8ta/UaNFH5+iz
	SnK8o49ZSpq+XYDA==
Date: Fri, 9 Jan 2026 19:16:52 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <aWFGFI5KAD4IncYN@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7yog/BxVje4qH3eH"
Content-Disposition: inline
X-Spam-Score: -6.40
X-Spam-Level: 
X-Spam-Flag: NO
Subject: [oss-security] InputPlumber: Lack of D-Bus Authorization and Input Verification
 allows UI Input Injection and Denial-of-Service (CVE-2025-66005,
 CVE-2025-14338)

--7yog/BxVje4qH3eH
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 9 Jan 2026 19:16:52 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: InputPlumber: Lack of D-Bus Authorization and Input Verification
 allows UI Input Injection and Denial-of-Service (CVE-2025-66005,
 CVE-2025-14338)

Hello list,

please find below a report about security issues in InputPlumber [1]. We
also offer a rendered HTML version of this report on our blog [2].

Summary: InputPlumber is a utility for combining Linux input devices
into virtual input devices. It includes a D-Bus daemon offering an
interface to all users in the system. A lack of D-Bus client
authorization in versions before v0.69.0 allows arbitrary local users to
inject key presses into active sessions or to perform local
Denial-of-Service attacks against InputPlumber.

1) Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

InputPlumber [1] is a utility for combining Linux input devices into
virtual input devices. It is mostly used in the context of Linux gaming
and is part of SteamOS [3].

An openSUSE community member packaged InputPlumber which required a
review [4] by the SUSE security team, as it contains a D-Bus system
service. The first version of InputPlumber we reviewed was completely
lacking client authentication, causing us to reject it. A follow-up
version contained Polkit authentication, which turned out to be lacking
in multiple regards. At this point we approached upstream with a
detailed report and established coordinated disclosure. Starting with
version v0.69.0 [5] of InputPlumber most (but not all) of the issues in
this report have been addressed. SteamOS also published new images [6]
for version 3.7.20 containing the fixes.

This report is based on InputPlumber release v0.67.0 [7]. The next
section provides an overview of InputPlumber's D-Bus service. Section 3
looks into the security issues in detail. Section 4 discusses the fixes
we suggested to upstream. Section 5 looks into the upstream bugfixes to
address the issues and aspects that remain unfixed.  Section 6 covers
the CVE assignments we did for the issues we found. Section 7 provides a
summary of the coordinated disclosure process we followed for this
report.

2) Overview of the D-Bus Service
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

InputPlumber is implemented in Rust and the size of the code base is
surprisingly high for this type of project, adding up to about 50,000
lines of code overall (not counting vendor code) and about 3,000 lines
dedicated to the D-Bus API specifically.

The InputPlumber D-Bus service runs with full root privileges, offering
the "org.shadowblip.InputManager" interface [8] on the D-Bus system bus.
Additionally various interfaces representing Linux input devices are
provided by the daemon, like a keyboard interface [9]. In summary the
service provides around 90 different D-Bus properties and about 10
different interfaces on various objects exported by it. The Polkit
policy [10] lists over 100 different actions, controlling every aspect
of the D-Bus API including read/write access to individual properties.

3) Security Issues
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

3.1) Lack of Authentication / Polkit Authentication Bypass
----------------------------------------------------------

Initially we looked into InputPlumber version v0.62.2 [11]. In this
version there is no Polkit authorization at all for the D-Bus
interfaces. There are also no restrictions in the configuration of the
D-Bus service, allowing all users in the system to connect to it, even
low privilege user accounts like `nobody`.

We thought about reaching out to upstream already at this point, when we
noticed that in InputPlumber version v0.63.0 [12] (which was meanwhile
published on GitHub) Polkit authentication had been added via commit
0a80f3d85 [13]. Thus we asked our community maintainer to update the
package to at least that version for us to have another look.

Due to other priorities we only got around to taking a fresh look at the
package at a later time, when the package had already been updated to
version v0.67.0 [7], on which this report is based.

Looking into this version we first discovered that the Polkit
authentication was still not effective in the package build provided to
us. The reason for this was that Polkit support was only a compile-time
feature on Rust Cargo configuration level - which was disabled by
default [14]. We believe that in this version there is also no canonical
way to enable the feature when using the Makefile [15] found in the
repository. For this reason we created our own build of InputPlumber and
applied a patch to hard-enable the Polkit feature for testing.

In this custom package build of InputPlumber the Polkit authentication
triggered as expected. While looking into the implementation of the
Polkit authentication wrapper [16], however, we noticed that the Polkit
authentication logic uses the "unix-process" Polkit subject in an unsafe
way. It retrieves the caller's PID from the D-Bus connection and passes
this information on to the Polkit daemon. This suffers from a race
condition, because the client can attempt to have its PID replaced by a
privileged process by the time `polkitd` gets around to actually look at
the credentials of the process.

This is a well-known issue when using the "unix-process" Polkit subject
which was assigned CVE-2013-4288 [17] in the past. For this reason the
subject has been marked as deprecated in Polkit. The "unix-process"
subject is seeing new use [18] these days, however, when combined with
the use of Linux PID file descriptors, which are not affected by the
race condition.

In summary none of the versions of InputPlumber we looked into provided
sufficient authentication, even if integrators would have managed to
actually enable the Polkit layer in versions v0.63.0 and later. Thus all
InputPlumber D-Bus methods can be considered accessible by all users in
the system without authentication.

3.2) D-Bus Methods Allowing Privilege Escalation
------------------------------------------------

Considering the unprivileged access to the D-Bus methods provided by
InputPlumber, the following two methods quickly caught our attention as
being problematic:

### CreateCompositeDevice(in  s config_path)

This method [19] parses the provided input path as YAML to create a
CompositeDevice configuration and suffers from the following issues:

- The method allows to perform file existence tests, by passing paths
  usually not accessible to the caller.
- The method allows for a local Denial-of-Service (e.g. by passing
  `/dev/zero` as input file, leading to memory exhaustion in
  InputPlumber).
- The method allows for an information leak, e.g. from `/root/.bash_history=
`:
  ```
  user $ gdbus call -y -d org.shadowblip.InputPlumber -o /org/shadowblip/In=
putPlumber/Manager \
      -m org.shadowblip.InputManager.CreateCompositeDevice /root/.bash_hist=
ory
  Error: GDBus.Error:org.freedesktop.DBus.Error.Failed: Unable to deseriali=
ze: invalid type: \
      string "cd /etc/polkit-1/rules.d/", expected struct CompositeDeviceCo=
nfig at line 2 column 1
  ```
  The string "cd /etc/polkit-1/rules.d" is an entry from root's history file
  in this case.

### CreateTargetDevice(in s kind)

This method [20] allows to create a virtual keyboard input device like
this:

    user $ gdbus call -y -d org.shadowblip.InputPlumber -o /org/shadowblip/=
InputPlumber/Manager \
       -m org.shadowblip.InputManager.CreateTargetDevice keyboard

Once the virtual keyboard has been created, key presses can be injected
into the active user session (login terminal or graphical desktop) like
this:

    user $ gdbus call -y -d org.shadowblip.InputPlumber \
        -o /org/shadowblip/InputPlumber/devices/target/keyboard0 \
        -m org.shadowblip.Input.Keyboard.SendKey KEY_R true

All supported key symbols are found in `keyboard.rs` [21]. Using this
ability, any user in the system can inject input to an active desktop
session or the active login terminal screen, possibly leading to
arbitrary code execution in the context of the currently logged in user,
if any.

4) Suggested Fixes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We suggested the following action items to upstream to improve the
security of the InputPlumber D-Bus API:

- Use of the "system bus name" Polkit subject to fix the authentication
  code.
- Enabling of Polkit authorization by default in the build process.
- Passing of file descriptors instead of path names to D-Bus methods.
  This way the complexity of safely accessing client-provided paths is
  avoided and various attack scenarios in this area are no longer
  relevant.
- Addition of documentation pointing out that unauthorized access to the
  D-Bus service has security implications.
- Addition of hardening to the `inputplumber` systemd service. By using
  settings like `ProtectSystem=3Dfull` the service can be tightened to
  avoid any unexpected side effects when things go wrong at the first
  line of defense.

5) Upstream Bugfixes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Upstream mostly followed our suggestions and fixed the issues as
follows:

- in commit 4db3b20 [22] the Polkit subject used for authentication has
  been switched to "system bus name", therefore fixing the
  Polkit authentication bypass.
- in commit f3854be [23] the "Polkit" Cargo feature is enabled by
  default.
- in commit 79f0745 [24] systemd hardening is applied to the
  InputPlumber service.

All of these fixes are contained in InputPlumber version v0.69.0 [5] and
later.

Upstream initially wanted to avoid breaking the D-Bus API by switching
to file descriptors instead of path names, as we suggested. We strongly
recommended to do this, however, to avoid various issues that can occur
when clients pass malicious file paths. An upstream developer then
created a pull request [25] which introduces file descriptors in the
API. We provided feedback that this is going in the right direction,
but suggested to also perform checks on the file descriptors passed by
clients to make sure they refer to regular files and have no unusual
open flags like `O_PATH` set.

At the time of publication of this report we noticed that the
improvements of the D-Bus API to use file descriptors have not been
merged yet and are not available in a release. Thus some aspects of the
issues described in this report remain unaddressed, although they are
now at least protected by proper Polkit authentication. Sensitive
methods like `CreateCompositeDevice` also require admin privileges to be
called [26], thus these are mostly defense-in-depth issues, or only
relevant when integrators or admins relax Polkit authentication
requirements.

6) CVE Assignment
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In agreement with upstream we performed the following CVE assignments
corresponding to this report:

- CVE-2025-66005: lack of authorization of the InputManager D-Bus
  interface in InputPlumber versions before v0.63.0 can lead to local
  Denial-of-Service, information leak or even privilege escalation in
  the context of the currently active user session.

- CVE-2025-14338: Polkit authentication disabled by default and a race
  condition in the Polkit authorization check in versions before v0.69.0
  can lead to the same issues as in CVE-2025-66005.

7) Coordinated Disclosure
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We informed upstream about the security issues on 2025-11-25 and offered
coordinated disclosure. Upstream quickly confirmed the issues and agreed
to follow coordinated disclosure. The developers discussed bugfixes with
us, which they provided in public GitHub pull requests. This way the
information about the issues was not fully private anymore, but we
agreed to keep the full report private for a longer time, until new
SteamOS images would be published, containing a fixed InputPlumber.

We found out only at the time of publication that not all aspects of the
issues have been addressed in the bugfix release, as outlined at the end
of section 5).

We want to thank the InputPlumber developers for their cooperation
regarding this report.

8) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2025-11-21: We contacted one of the developers of InputPlumber, asking for =
the proper security contact for the project.
2025-11-21: We got a swift reply and learned that we reached the correct pe=
rson for security reports already.
2025-11-25: We forwarded a detailed report outlining the issues in InputPlu=
mber to upstream, offering coordinated disclosure
2025-11-25: Upstream confirmed the issues and opted for coordinated disclos=
ure.
2025-12-08: Upstream pointed us to a couple of public pull requests which s=
hould address the issues and asked us to review them.
2025-12-10: We provided feedback on the pull requests. The D-Bus API still =
used client-controlled paths at this point, and we suggested to turn them i=
nto file descriptors. We also pointed out that the issues were no longer fu=
lly private in light of the public pull requests, but suggested to keep the=
 full report private for longer until an agreed upon date.
2025-12-10: We assigned CVEs for the issues and communicated them to upstre=
am.
2025-12-12: Upstream informed us that they wanted to keep the original D-Bu=
s API stable, but agreed to add an additional fix to use file descriptors a=
nyway.
2025-12-16: We asked upstream whether they were able to agree on a general =
publication date for the report by now.
2025-12-22: Upstream pointed us to another public GitHub pull request [25] =
introducing file descriptors in the D-Bus API.
2025-12-22: Upstream informed us that the publication date still needed fur=
ther internal discussions and that they would get back to us.
2025-12-23: We provided feedback to upstream about the additional pull requ=
est. We generally agreed with the change but suggested to also check file d=
escriptor type and flags on the service side, to avoid unexpected file desc=
riptors being passed by clients.
2025-12-27: Upstream informed us that Valve was planning to publish new Ste=
amOS images containing the InputPlumber fixes on January 9, which was agree=
d upon for general publication date of the full report.
2025-01-09: Upstream informed us about publication of the new SteamOS image=
s [6], thanking us for our support.
2025-01-09: Publication of this report.

9) References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://github.com/ShadowBlip/InputPlumber
[2]: https://security.opensuse.org/2026/01/09/inputplumber-lack-of-dbus-aut=
h.html
[3]: https://store.steampowered.com/steamos
[4]: https://bugzilla.suse.com/show_bug.cgi?id=3D1249149
[5]: https://github.com/ShadowBlip/InputPlumber/releases/tag/v0.69.0
[6]: https://steamcommunity.com/games/1675200/announcements/detail/50059494=
7381003216
[7]: https://github.com/ShadowBlip/InputPlumber/releases/tag/v0.67.0
[8]: https://github.com/ShadowBlip/InputPlumber/blob/v0.67.0/src/dbus/inter=
face/manager.rs#L38
[9]: https://github.com/ShadowBlip/InputPlumber/blob/v0.67.0/src/dbus/inter=
face/target/keyboard.rs#L27
[10]: https://github.com/ShadowBlip/InputPlumber/blob/v0.67.0/rootfs/usr/sh=
are/polkit-1/actions/org.shadowblip.InputPlumber.policy
[11]: https://github.com/ShadowBlip/InputPlumber/releases/tag/v0.62.2
[12]: https://github.com/ShadowBlip/InputPlumber/releases/tag/v0.63.0
[13]: https://github.com/ShadowBlip/InputPlumber/commit/0a80f3d85741195af3d=
5501beacd363933c56b1b
[14]: https://github.com/ShadowBlip/InputPlumber/commit/8a201ec27e898ca0786=
8ba9adc27191fca030969
[15]: https://github.com/ShadowBlip/InputPlumber/blob/v0.67.0/Makefile
[16]: https://github.com/ShadowBlip/InputPlumber/blob/413c37c85e89d04fffcf5=
3bd62312256e7324a86/src/dbus/polkit.rs#L31
[17]: https://nvd.nist.gov/vuln/detail/CVE-2013-4288
[18]: https://github.com/polkit-org/polkit/commit/9295e289cdb1b6cf2747ecf07=
054230e15edb385
[19]: https://github.com/ShadowBlip/InputPlumber/blob/v0.67.0/src/dbus/inte=
rface/manager.rs#L141
[20]: https://github.com/ShadowBlip/InputPlumber/blob/v0.67.0/src/dbus/inte=
rface/manager.rs#L165
[21]: https://github.com/ShadowBlip/InputPlumber/blob/v0.67.0/src/dbus/inte=
rface/target/keyboard.rs#L64
[22]: https://github.com/ShadowBlip/InputPlumber/commit/4db3b20ad9f5f21a7cb=
c54a9144443c9c4899249
[23]: https://github.com/ShadowBlip/InputPlumber/commit/f3854be20099cff564a=
a9699632f71074f5c96ee
[24]: https://github.com/ShadowBlip/InputPlumber/commit/79f0745b61b588a0ff1=
d29c8f45d05054ea5f138
[25]: https://github.com/ShadowBlip/InputPlumber/pull/477
[26]: https://github.com/ShadowBlip/InputPlumber/blob/v0.67.0/rootfs/usr/sh=
are/polkit-1/actions/org.shadowblip.InputPlumber.policy#L206

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

--7yog/BxVje4qH3eH
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmlhRhQACgkQFMQFyXGS
NVMaWBAAgzlMIj12dfzCsb2zV2WwDWRgZ+mElAdf4hB2m/csOJJaWPzd2ydm7HZO
nZXCl9Dq9sZzetJwrByMkERmJzgSsy5qmY7zxKZFCFtOTvmcFRYlNBNEwwJgb3Cx
HjZQiq5IDljjjvIk1aN9lHC65YYRx+jaL4+i5gSiUrq5lFlQwFqbjodOZvlaDzFU
LTbCVGnh5o6pZInNRGuwwVaV3haDDGMXGbZW+3aRxX2E8EGx/EwhrIGbWFv33cSE
HXQrXLaU6s/aPUQdndLgB25/QMBQh0w9y0kvpa7y+WGYYC4+vWKPTUUnGYu/VWhf
LNAvoh2t9hnU4AF0uiTFu2OBZyoCc38P3sxQMIbTrYA+rd60zlkKSfXR8XWklrd8
qFRk8lolnqQiys+ylDmtcHRJVt2sUvorq4oP30ACnfmRkHFeY2rH0oLei+67xpBK
aMJ+Pq/J0hc/IFzGvnhDjgjRd8N2DSMjkyUZnkg7dUEBQQ/qNsZgoh7UOlrRRKxE
hmUys8RyMAoh/wEC7aNq5S4eGLem8sZ/FK8KhphaSR8SxKT/LiBskQmZsnqTIBhh
wXqv4ZxsznP/s6zFuYLXiHYUBhFkxzor9+YojO8KFIrvXJz2WlT5JvSz4c1+GFe8
ouDm9NNH6uuGEmbUoJN1ZCrDOToO9Emb3szsDmGBW6ME9Y5i1l8=
=SBZN
-----END PGP SIGNATURE-----

--7yog/BxVje4qH3eH--
