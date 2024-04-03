Received: (qmail 5800 invoked by uid 550); 3 Apr 2024 13:40:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5782 invoked from network); 3 Apr 2024 13:40:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1712151636; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=Ld6dkV5aTUGpKCXFa45ZvsHwB5o2p5LS86aYSitoraA=;
	b=dHvPNX/KSKEMveO3WhEr5gIoOOQykOjK4fQPmUJu08vpS3FbRjcgl5DlyKj+CI1O6y5t1h
	lXkRkSXACUfb3cL3SwM2y+jTFNAMolDUfuoLBEwdexd7MEcpHrtlsgohwzqNfPG4OKlYKd
	KF4oafmCq/dpk6/yUMt63eUuM+WhfD4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1712151636;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=Ld6dkV5aTUGpKCXFa45ZvsHwB5o2p5LS86aYSitoraA=;
	b=N0ntWYInFEyZKjwYq0dIJv0rWlDe3alkSftT+mbKKeB4NvwzHYlWGmlyNsni5Dklvk/mzt
	41+BRFp+Wgnq1HBQ==
Authentication-Results: smtp-out2.suse.de;
	none
Date: Wed, 3 Apr 2024 15:40:35 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Zg1cU_523b77PveB@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bK5m5smSsEl24Vm6"
Content-Disposition: inline
Subject: [oss-security] dnf5daemon-server: Incomplete fix of CVE-2024-1929 (CVE-2024-2746)

--bK5m5smSsEl24Vm6
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 3 Apr 2024 15:40:35 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: dnf5daemon-server: Incomplete fix of CVE-2024-1929 (CVE-2024-2746)

Hello list,

CVE-2024-1929 that we previously reported [1] for the dnf5 D-Bus component =
has
not been completely fixed. This post deals with the remaining issue we
discovered.

We offer this report also as a rendered HTML version on our blog [8].

Unsafe Configuration Item "reposdir" in Whitelist
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The problem with CVE-2024-1929 was that the dnf5 D-Bus daemon accepted
arbitrary configuration parameters from unprivileged users, which allowed a
local root exploit by tricking the daemon into loading a user controlled
"plugin". All of this happened before Polkit authentication was even starte=
d.

The original bugfix [2] consists of a whitelist of configuration items, that
unprivileged users are allowed to override, when using the dnf5 D-Bus
interface. While checking each of the whitelisted items, we found that the
setting "reposdir" allows to specify the path to an arbitrary directory, in
which repository configuration files (`*.repo`) will be processed [3] by the
privileged dnf5 daemon.

The dnf5 library code does not check whether non-root users control the
directory in question. The code does check [4] for file type and filename
extension of contained files; it follows symlinks and is subject to a race
condition, however:

```
    std::filesystem::directory_iterator di(dir_path, ec);
    std::vector<std::filesystem::path> paths;

    for (auto & dentry : di) {
        auto & path =3D dentry.path();
        if (dentry.is_regular_file() && path.extension() =3D=3D ".repo") {
            paths.push_back(path);
        }
    }

    std::sort(paths.begin(), paths.end());

    for (auto & path : paths) {
        create_repos_from_file(path);
    }
```

By the time the (checked) path is passed to `create_repos_from_file()`, the
user controlling the directory can replace it with an arbitrary other file =
or
symlink, thereby tricking the library to operate on arbitrary file types and
file paths.

On one hand, this poses a Denial-of-Service attack vector by making the dae=
mon
operate on a blocking file (e.g. named FIFO special file) or a very large f=
ile
that causes an out-of-memory situation (e.g. /dev/zero). On the other hand,
this can be used to let the daemon process privileged files like /etc/shado=
w.
The file in question is parsed as an INI file. Error diagnostics resulting =
from
parsing privileged files could cause information leaks, if these diagnostics
are accessible to unprivileged users. In the case of libdnf5, no such user
accessible diagnostics should exist, though.

Even more interestingly, a local attacker can place a valid repository
configuration file in this directory. This configuration file allows to spe=
cify
a plethora of additional configuration options [5]. This makes various
additional code paths in libdnf5 accessible to the attacker. This, and the
possibility to configure arbitrary repositories, could very well allow furt=
her
privilege escalation, although we did not investigate more deeply if and how
this would be possible.

This follow-up issue confirms the sentiment expressed in our original repor=
t,
that one has to be extremely careful about feeding untrusted input into the
libdnf5 library, which is not designed to run in mixed security scope setup=
s.

Bugfix and CVE Assignment
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The bugfix [6] simply consists of the removal of the "reposdir" entry from =
the
whitelist of configuration items. Upstream release 5.1.17 [7] contains the
bugfix. The Red Hat security team assigned CVE-2024-2746 to track this
incomplete fix of CVE-2024-1929.

4) Discovery Process
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We noticed the incomplete fix only at a late time, when our openSUSE dnf5
package maintainer asked for the inclusion of the fixed package into openSU=
SE
Tumbleweed. It is unfortunate that this happened too late to prevent an
incomplete fix for CVE-2024-1929, and thus made a follow-up CVE assignment =
and
coordinated release process necessary.

Since the original issues had been handled as part of a coordinated disclos=
ure
process, there should have been a review of the proposed patches before
publication. Due to the circumstances of an early publication of the fixes,
outside of the coordinated release process, there never was a defined point=
 in
time for us to actually review them. We aim to avoid such situations in the
future by being more careful about reviewing patches, especially when no
straightforward coordinated release process can be established with upstrea=
m.

5) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

|2024-03-11|We reported the issue to secalert@redhat.com.|
|2024-03-13|The discussion for the issue was moved to a new group of contac=
ts involving the dnf5 developers.|
|2024-03-20|One of the dnf5 developers confirmed the issue and suggested dr=
opping "reposdir" from the whitelist.|
|2024-03-20|Red Hat security assigned CVE-2024-2746 for the follow-up issue=
.|
|2024-03-26|Discussions about the coordinated release date took place, 2024=
-04-02 has been mentioned.|
|2024-04-02|Red Hat security informed us that they actually had 2024-04-03 =
in mind.|
|2024-04-03|Upstream published release 5.1.17 containing the bugfix.|

6) References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://www.openwall.com/lists/oss-security/2024/03/04/2
[2]: https://github.com/rpm-software-management/dnf5/commit/6e51bf2f0d585ab=
661806076c1e428c6482ddf86
[3]: https://github.com/rpm-software-management/dnf5/blob/5.1.16/libdnf5/re=
po/repo_sack.cpp#L597
[4]: https://github.com/rpm-software-management/dnf5/blob/5.1.16/libdnf5/re=
po/repo_sack.cpp#L584
[5]: https://github.com/rpm-software-management/dnf5/blob/5.1.16/libdnf5/re=
po/config_repo.cpp#L96
[6]: https://github.com/rpm-software-management/dnf5/commit/07c5770482605ca=
78aaed41f7224d141c5980de4
[7]: https://github.com/rpm-software-management/dnf5/releases/tag/5.1.17
[8]: https://security.opensuse.org/2024/04/03/dnf5daemon-resposdir-followup=
.html=20

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich

--bK5m5smSsEl24Vm6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmYNXFMACgkQFMQFyXGS
NVOSvBAAwih94UcYO5A3v1XSpwHTvsfJ1TeCYhJB+KELW79ygGvuWCmfdLR7sI6I
/8iUX0yF7eKKdNcesKQZUucYS2Okl01HrLs02YEk5C9XGOQUVgr9Lme+/u3gmqca
wGHZ2PIF4/PlNJs4phdHOqgzyuvfEIYlW0RC2fCg+9uWoXGoyVMjlDcCW6m4k6RE
qYuztzZmpAD6YKuoyXzNKIazGMSzdgTTB+qVyTIVpJvmXxHIVda8Q113T5NZ3UUF
5bnGjQPUFrbuEH1gUIo0W89OGsJafFg0PluGgQ1DcG2E4DYyZk6NfGI4L/tZdYRv
Z3dZ6BxIAv1mpK1EM/dQ4r1Jq24ccf7QVhs6S1i7v+00WVTizfWZ2ooCyg5VgWkx
KbZjvdeND47JXbjAG8JR5qvONamDwusiMySPuKbEBmRPg4Y55t97d2cjscoya2rC
0bC6Flpeyyg0lAel302N19yGrFLJqEao5QuFkyGaeNDmgcA4x1eIA5yzBab9+jTG
w4L1MnOp8MYMCxn82k/RqWaZcnM/3w9DUfx069us+ZYUaEQ2pfVK89a7gq9ur4a5
kqpIGzhNN/UVIxCwNAQytqC7D+sfqkEg2/JapESdqKmFegY24qNrXeMfYJsjcViS
4gDl16h8ApzpIQP127x2w/yQhOwzvOzMaMSet5pLxAWZMovFeQQ=
=F4kL
-----END PGP SIGNATURE-----

--bK5m5smSsEl24Vm6--
