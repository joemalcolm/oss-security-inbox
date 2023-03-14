Received: (qmail 13794 invoked by uid 550); 14 Mar 2023 11:41:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13766 invoked from network); 14 Mar 2023 11:41:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1678794082; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=WHAG7n6Ke93dstuujnOdGdwmORx6qPJsxaGHCuUstpE=;
	b=VNqGZsRjpI4XyHXGgaon7lnmjn0xg8c3N1k/tvFpwqPGrcVuRU3F5Ck97mxoEnxjm7yG7y
	wqH/689N3B0Lsti6FmsGUvC9RjKS8qLME/mAT1YJ+DZTV2cp7V8HE/kIVUTU9TQJJBAx82
	fgLoWMDBS8+t+g3lO64aZpY+y/4AxPw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1678794082;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=WHAG7n6Ke93dstuujnOdGdwmORx6qPJsxaGHCuUstpE=;
	b=2IWkrOcsdOF1y49r0YbeGuMpPfjRV99G2WNpBIBlsB62XgS5Ym/VkCg1EIoCMSz0pkPDZT
	3Suff9teLqEENhDg==
Date: Tue, 14 Mar 2023 12:41:21 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <ZBBdYWmJn07r/UgI@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dl7JUxryj4bq2A+o"
Content-Disposition: inline
Subject: [oss-security] Security issue in Hotspot elevate_perf_privileges.sh (CVE-2023-28144)

--dl7JUxryj4bq2A+o
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Mar 2023 12:41:21 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Security issue in Hotspot elevate_perf_privileges.sh (CVE-2023-28144)

Hello list,

this report is about a possible security vulnerability I found in the Hotsp=
ot
[1] project.

An openSUSE packager for hotspot requested a review of a Hotspot update to
version 1.4.1. This version contained a newly added D-Bus helper and Polkit
authentication. During the review I found a vulnerability in the helper scr=
ipt
`elevate_perf_privileges.sh` that is likely not exploitable by default, but
could easily become a local root exploit when Polkit configuration is chang=
ed
or an alternative authentication mechanism with weak authentication
requirements is used.

[1]: https://github.com/KDAB/hotspot.git
[2]: https://bugzilla.suse.com/show_bug.cgi?id=3D1208808

Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Hotspot is a GUI application for doing performance profiling anylsis
based on Linux performance counters. This report is about the v1.4.1 version
tag in the upstream repository.

The Issue
=3D=3D=3D=3D=3D=3D=3D=3D=3D

Hotspot temporarily changes Linux Kernel sysctl settings and permissions of
the `debugfs` and `tracefs` file systems to allow running the GUI applicati=
on
as unprivileged users. The issue is related to privilege escalation logic
which is carried out by the `elevate_perf_privileges.sh` script. This script
is invoked as root via a range of potential mechanisms like pkexec, kdesu o=
r a
D-Bus based KDE kauth authentication helper. The mechanism is selected duri=
ng
runtime with a prioritization of kauth > pkexec > kdesudo > kdesu.

The script receives the path to a temporary file which is by default safely
created in /tmp via the `QTemporaryFile` class in "src/perfrecord.cpp:142".
The script contains the following logic during early startup:

```sh
    if [ ! -z "$1" ]; then
        olduser=3D$(stat -c '%u' "$1")
        chown "$(whoami)" "$1"
        echo "rewriting to $1"
        # redirect output to file, to enable parsing of output even when
        # the graphical sudo helper like kdesudo isn't forwarding the text =
properly
        $0 2>&1 | tee -a "$1"
        chown "$olduser" "$1"
        exit
    fi
```

The two `chown` invocations on the temporary file result in a temporary cha=
nge
of the ownership of the temporary file to root, which is originally owned by
the unprivileged user. It changes ownership of the provided path first to
`root`, then reexecutes itself, then changes ownership back to the original
user.

This offers the following attack vectors:

- giving ownership of an arbitrary file to root
- giving ownership of an arbitrary file to the unprivileged user

The script accepts arbitrary paths and doesn't check where the file is loca=
ted
and what its ownership is. Thus the path can also be a file in any other
directory. Therefore even without having to win a race condition or using a
symlink attack, an attacker can simply specify a path to an already existing
file owned by root e.g. /etc/shadow, which will in the end be owned by the
unprivileged user.

It can be argued that this script can only be invoked as root if the root
password has been supplied to kdesu, pkexec or the Kauth framework and thus
requires root privileges in the first place. Since the Polkit authentication
framework is likely used though, there is a certain chance that users or
integrators want to get rid of the "annoying" authentication dialog and cha=
nge
the Polkit policy to something like "yes" for active users to make the
elevation work out of the box. In this case all locally logged in users cou=
ld
trigger the exploit without authenticating as root.

Potential Fix
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

I recommended to upstream to replace the currently overly complex privilege
escalation logic, that potentially uses a range of alternate privilege
escalation mechanisms, by a single clean approach like using `pkexec`. Towa=
rds
the helper script subprocess Pipes should be used for consuming the output
instead of passing a temporary file path to it. This way the problematic
`chown` calls will no longer be needed.

At the moment no proper is available and upstream will require more time to
address the issue. Using Polkit and the default upstream Polkit policy there
should not be immediate danger, but users need to be aware that relaxing the
authentication requirements in any way gives way to the local root exploit.

Upstream added a commit [3] that allows to "opt-in" the risky authentication
feature during build time.

[3]: https://github.com/KDAB/hotspot/commit/65a246ce9196462081483fd07d97678=
dcfe36b9c

Further Hardening
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The privileged operations that the script currently performs are the
following:

    sysctl -wq kernel.kptr_restrict=3D0 kernel.perf_event_paranoid=3D-1
    mount -o remount,mode=3D755 /sys/kernel/debug
    mount -o remount,mode=3D755 /sys/kernel/debug/tracing

Granting world read access to the debug and tracing file systems is a
bit coarse grained. Sadly these kernel file systems don't support ACL
entries. If that would be possible then temporarily adding a dedicated ACL =
for
the unprivileged user would have been a viable approach.

I recommended to upstream to investigate the option to use a dedicated hots=
pot
group that is granted access to the file systems. Furthermore there might b=
e a
possibility to use the capability `CAP_PERFMON` in conjunction with the low=
er
level `perf` tool to obtain the necessary privileges.

Affectedness and CVE Assignment
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

The problematic use of `chown` in the helper script has been introduced in =
the
upstream commit 3b4682565f0e53f903f3ad0f3f2c0f236d382efb [4] and has been
present since release v1.3.0.

I decided to request a CVE for this issue even though it is likely not
exploitable by default, because of the simplicity of exploiting it and the
complexity of the overall privilege escalation logic in Hotspot. Mitre
assigned CVE-2023-28144 for the issue.

[4]: https://github.com/KDAB/hotspot/commit/3b4682565f0e53f903f3ad0f3f2c0f2=
36d382efb

Timeline
=3D=3D=3D=3D=3D=3D=3D=3D

2023-03-09: I contacted the main upstream author about the vulnerability,
            offering coordinated disclosure.
2023-03-10: The upstream author agreed to publishing the issue without
            embargo time, because there will be no proper fix available in
            the short term. Users should be made aware of the issue right n=
ow.

            We discussed various security aspects of the current code and
            potential remedies and improvements.
2023-03-13: I received the CVE from Mitre and started publishing the availa=
ble
            information.

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
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moer=
man

--dl7JUxryj4bq2A+o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmQQXWEACgkQFMQFyXGS
NVOdAw//eOJ4xq3bAeYRblzHH0pMUT3DumZmFjIJbG83Ljvq2vcanBzxV6tjaMFc
zC3xMtVowVQiCMV3a39S3YcFjUZz9FNvHPP3xnNsYfIiRRCtZTvAT0mFe4DHYUhj
LlUsPW6e9MX1JbtErGiWWqhPp09YdB5EwE+D93r3HkNizZV5A8QGudfmHZ415plr
GWr5E7MirJ9UzkYQwQdMgWZgqe5KN3nm/0dwGs/1yoVuNC52ITCTS/MpbGji7lz1
Q4+iO27ATe4gay6XQ50mBdVZAqMrIaTG3YgncFwz6A1VHFbRi3zCrxZ9cNAUSpM8
lxU+ZpWe/gQBx8R4OvBD4gNufkWdgGxTZ7gxsAA0fzFQcjH01duNeM3Ayu522hw2
B36O1J6KFsZX0H5O01NPwycu6gySv6b7CIq2s74dOtFj1HeRzsidYtzamFCZ7u8h
0G7RrazgEdHUrlrWBBtzTmbEvgLpbcr8Up/He0vXoXCG7yd7I+/RhdKmtnuUJGk5
MwvusnSdQZwYjZn5fOE/XCXCnbK8Ce9AyO5AgYKKPF6gVNmkwjLf3IQjtgZs0u2u
PllGTGnz0A33BAupUXA9bvi793WE18Pl578oObyV0/5vmGHIUcFI60LBCjt+kGc2
hQ+VjjvVYesvnbcWZQT7+hsEKzJsJDOLEW1ezY2AObDcullF9Dg=
=320h
-----END PGP SIGNATURE-----

--dl7JUxryj4bq2A+o--
