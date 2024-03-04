Received: (qmail 7476 invoked by uid 550); 4 Mar 2024 15:39:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7442 invoked from network); 4 Mar 2024 15:39:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1709566993; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=GLas6QfzIIzrhG+UMJ88qLPHyVcTPewP9FU0SJWX3QE=;
	b=bfTUbqdJg4Zk2RSVTwfsl0vvKXR2ViNq9kpvDCf/KIAC5P/umga3aBZKW6ui/bCgbrwHKT
	Nse2UCHUvVrKMyf+1CY4AutSXXwxLPGOjHHsr042UjB3GEPEkxNVCIYFXDiBVFQP4zmFwZ
	zwM2uGlzcd735PYgfePeT048pE5yEP4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1709566993;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=GLas6QfzIIzrhG+UMJ88qLPHyVcTPewP9FU0SJWX3QE=;
	b=E5c0ixbz08JwnPXpfWMrsEpGBPPHJYCKexRFrjC8IB/USTzDfeoA7JaeDpmg4DTlSfXCIB
	YzZXUxg69rde9lDw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1709566993; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=GLas6QfzIIzrhG+UMJ88qLPHyVcTPewP9FU0SJWX3QE=;
	b=bfTUbqdJg4Zk2RSVTwfsl0vvKXR2ViNq9kpvDCf/KIAC5P/umga3aBZKW6ui/bCgbrwHKT
	Nse2UCHUvVrKMyf+1CY4AutSXXwxLPGOjHHsr042UjB3GEPEkxNVCIYFXDiBVFQP4zmFwZ
	zwM2uGlzcd735PYgfePeT048pE5yEP4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1709566993;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=GLas6QfzIIzrhG+UMJ88qLPHyVcTPewP9FU0SJWX3QE=;
	b=E5c0ixbz08JwnPXpfWMrsEpGBPPHJYCKexRFrjC8IB/USTzDfeoA7JaeDpmg4DTlSfXCIB
	YzZXUxg69rde9lDw==
Date: Mon, 4 Mar 2024 16:43:09 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <ZeXsED9G_3yMNIui@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EwBSvusz85Md+vwn"
Content-Disposition: inline
Authentication-Results: smtp-out1.suse.de;
	none
Subject: [oss-security] dnf5daemon-server: Local root Exploit and Local Denial-of-Service in
 dnf5 D-Bus Components (CVE-2024-1929, CVE-2024-1930)

--EwBSvusz85Md+vwn
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="6YUqtwk0AKkwM5+r"
Content-Disposition: inline
Date: Mon, 4 Mar 2024 16:43:09 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: dnf5daemon-server: Local root Exploit and Local Denial-of-Service in
 dnf5 D-Bus Components (CVE-2024-1929, CVE-2024-1930)


--6YUqtwk0AKkwM5+r
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

please find below a report about a local root exploit and other issues
in dnf5daemon-server. We also offer a rendered HTML version of the
report on our blog [1].

1) Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The dnf5daemon-server [2] component offers a collection of D-Bus
interfaces to interact with the dnf5 package manager on the system. An
openSUSE community packager wanted to add the additional D-Bus component to
the openSUSE Tumbleweed distribution. New D-Bus system services require a
review by the SUSE security team. In the course of this review I found the
issues described in this report.

The version of dnf5 I reviewed for this is 5.1.9 [3], and any source
code references below are based on the corresponding version tag in the
upstream Git repository.

2) D-Bus Interface Design
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The dnf5daemon-server offers a main interface "org.rpm.dnf.v0.SessionManage=
r"
on which clients can create a new session, which results in a new dynamical=
ly
allocated D-Bus object being registered on the bus. This session object
provides a set of additional D-Bus interfaces for modifying package manager
configuration, for installing or removing packages or for inspecting metada=
ta
about packages and repositories on the system.

The dnf5daemon-server is running as root and can be autostarted via the D-B=
us
system bus if it is not already running. Any other users with access to the
D-Bus system bus may talk to it.

For certain privileged operations the D-Bus service implements Polkit
authentication. Only three operations are protected by Polkit:

- `org.rpm.dnf.v0.rpm.RepoConf.write`
- `org.rpm.dnf.v0.rpm.execute_transaction`
- `org.rpm.dnf.v0.rpm.Repo.confirm_key`

These relate to changing the repository configuration, executing transactio=
ns
or importing new trusted signing keys. Transactions cover all kinds of chan=
ges
introduced through the package manager.

All of these operations require `auth_admin` privileges on Polkit level. The
integration of the Polkit authorization logic is correct as far as I can te=
ll.

The per-session D-Bus interface provided by dnf5daemon-server is rather lar=
ge
and many calls take additional key/value maps to tune the behaviour of the
package manager logic contained in libdnf5. In summary, the libdnf5 library=
 is
attached very closely to the D-Bus system bus via dnf5daemon-server.

3) Local Root Exploit via Configuration Dictionary (CVE-2024-1929)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

While the privileged operations mentioned above are correctly protected by
Polkit, there are issues with the D-Bus interface long before Polkit is even
invoked.

The `org.rpm.dnf.v0.SessionManager.open_session` method takes a key/value m=
ap
of configuration entries. A sub-entry in this map, placed under the "config"
key, is another key/value map. The configuration values found in it will be
forwarded as configuration overrides to the `libdnf5::Base` configuration. =
The
spot where this happens is found in `session.cpp:63` [4].

Practically all libdnf5 configuration aspects can be influenced here, as ca=
n be
seen in the ConfigMain class in `config_main.hpp` [5].
Already when opening the session via D-Bus, the libdnf5 will be initialized
using these override configuration values. There is no sanity checking of t=
he
content of this "config" map, which is untrusted data.

There are surely a lot of different ways to exploit this possibility to
influence the libdnf5 configuration. The simplest approach to get full root
privileges I found is to trick the library into loading a plug-in shared
library under control of the unprivileged user.

To do this, the "pluginpath" and "pluginconfpath" configuration entries nee=
d to
be supplied and need to point to a user-controlled path. There the
unprivileged user can place a configuration file that in turn points toward=
s a
user controlled shared library. The library will then `dlopen()` this user
controlled shared library, which will lead to full code execution in the
context of the root user.

3.1) Proof of Concept
---------------------

The tarball attached to this email contains a proof of concept that I
wrote, which shows this vulnerability in action. I successfully tested
this exploit also on Fedora 39 using dnf5daemon-server version 5.1.10.
The only precondition for this exploit is that the dnf5daemon-server
package is installed on the system. Any local user, even `nobody`, can
obtain root privileges this way.

3.2) Bugfix
-----------

To fix this, I suggested to enforce a whitelist of configuration parameters
that are allowed to be overridden. Only a very small subset of values should
be allowed for unprivileged clients.

In upstream commit e51bf2f0d [6] such a whitelist enforcement has been
implemented for dnf5daemon-server.

3.3) CVE Assignment
-------------------

Red Hat Product Security assigned CVE-2024-1929 for this issue.

4) No Limit on Number of Open Sessions / Bad Session Close Behaviour (CVE-2=
024-1930)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

There is no limit on how many sessions D-Bus clients may create using the
`open_session()` D-Bus method. In my tests I was able to quickly create abo=
ut
4,500 sessions and keep them open. For each session a thread is created in
dnf5daemon-server. This spends a couple of hundred megabytes of memory in t=
he
process. Further connections will become impossible, likely because no more
threads can be spawned by the D-Bus service.

In some cases I even managed to cause the D-Bus service to `abort()` as a
result of hitting resource limits. If the service continues running and the
client disconnects, then the cleanup code found in
`SessionManager::on_name_owner_changed()` runs for each session that has be=
en
created. Each Session holds a `ThreadsManager`, where the thread associated
with each session originates from. It is a thread that is busy-waiting to j=
oin
other threads, the code for this is found in `threads_manager.cpp:33`
[7]. Since there is a sleep of one second in this thread's loop it takes
about ~4,500 seconds for all the threads from the 4,500 sessions to be
joined one by one. The service will be unreachable for more than an
hour.

4.1) Bugfix
-----------

To fix this, I suggested to limit the number of sessions for each unprivile=
ged
user in the system to a sensible value. Also the busy-wait loop in
`ThreadsManager` seems ill-devised. Maybe using a condition variable to inf=
orm
the cleanup thread of new work would be more efficient. Having a dedicated
`ThreadsManager` and join-thread for each session seems a bit overkill, too.

In upstream commit c090ffeb79 [8] the maximum number of sessions is
limited to three sessions. The problematic thread joining behaviour has
not been addressed as of now.

4.2) CVE Assignment
-------------------

Red Hat Product Security assigned CVE-2024-1930 for this issue.

5) Untrusted `locale` Setting for each Session
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Another part of the per-session setup is the use of an untrusted `locale`
setting in `session.cpp:54` [9]. This string is passed
to the C library's `newlocale()` function in `threads_manager.cpp:92`
[10]. A danger here is that arbitrary user controlled files or symlinks
could be processed by the C library, which could lead to various issues
like information leaks, denial of service or even code execution. I
looked into the GNU glibc implementation of `newlocale()`, and luckily
it already implements a very careful locale lookup algorithm, that
prevents that arbitrary paths are accessed if crafted `locale` strings
are passed to it. This outcome might change if a different C library is
used.

Whether anything bad could happen, apart from file system issues, when exot=
ic
locales are selected for a thread running in dnf5daemon-server is another
question that I did not investigate more closely.

For hardening purposes I suggested that dnf5daemon-server performs a sanity
check of the `locale` string to prevent a string that contains e.g. a slash
character `/` from being used. I don't know of any upstream commits that
address this yet, but upstream stated that they intend to work on this in t=
he
future.

6) dnfdaemon-client Demands Full Root
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Although the D-Bus service implements Polkit for privileged operations, the
dnf5daemon-client refuses to perform privileged operations for non-root use=
rs.
For example:

    user$ dnf5daemon-client distro-sync
    This command has to be run with superuser privileges (under the root us=
er on most systems).

The code for this is found in various sub-command implementations:

    $ grep -r 'throw UnprivilegedUserError' -C 1
    dnf5daemon-client/commands/downgrade/downgrade.cpp-    if (!libdnf5::ut=
ils::am_i_root()) {
    dnf5daemon-client/commands/downgrade/downgrade.cpp:        throw Unpriv=
ilegedUserError();
    dnf5daemon-client/commands/downgrade/downgrade.cpp-    }
    --
    dnf5daemon-client/commands/distro-sync/distro-sync.cpp-    if (!libdnf5=
::utils::am_i_root()) {
    dnf5daemon-client/commands/distro-sync/distro-sync.cpp:        throw Un=
privilegedUserError();
    dnf5daemon-client/commands/distro-sync/distro-sync.cpp-    }
    --
    dnf5daemon-client/commands/install/install.cpp-    if (!libdnf5::utils:=
:am_i_root()) {
    dnf5daemon-client/commands/install/install.cpp:        throw Unprivileg=
edUserError();
    dnf5daemon-client/commands/install/install.cpp-    }
    --
    dnf5daemon-client/commands/remove/remove.cpp-    if (!libdnf5::utils::a=
m_i_root()) {
    dnf5daemon-client/commands/remove/remove.cpp:        throw Unprivileged=
UserError();
    dnf5daemon-client/commands/remove/remove.cpp-    }
    --
    dnf5daemon-client/commands/upgrade/upgrade.cpp-    if (!libdnf5::utils:=
:am_i_root()) {
    dnf5daemon-client/commands/upgrade/upgrade.cpp:        throw Unprivileg=
edUserError();
    dnf5daemon-client/commands/upgrade/upgrade.cpp-    }
    --
    dnf5daemon-client/commands/reinstall/reinstall.cpp-    if (!libdnf5::ut=
ils::am_i_root()) {
    dnf5daemon-client/commands/reinstall/reinstall.cpp:        throw Unpriv=
ilegedUserError();
    dnf5daemon-client/commands/reinstall/reinstall.cpp-    }

It doesn't make sense that the client forces users to run as root (and ther=
eby
increase the attack surface by running also the client code as root) when t=
he
service could authenticate the user via Polkit.

I suggested to drop this root-check code in the client, and rely on the
authentication logic in the service side code. If authentication fails, then
the client code can still hint at the possibility to run the program as roo=
t.
I am not aware on any upstream commits that address this yet, but upstream
stated that they intend to work on this in the future.

7) General Review Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In summary my impression is that the libdnf5 library is too closely connect=
ed
to the D-Bus system bus. The library itself is unaware of the fact that it =
is
running with partially untrusted input. The dnf5daemon-server code needs to
carefully filter untrusted input before it is passed to the generic library
code.

8) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2024-01-10: I reported the findings to secalert@redhat.com offering coordin=
ated disclosure.
2024-01-16: We received a reply that the issue would affect Fedora only and=
 it was suggested that I create a bug in their Bugzilla for direct communic=
ation with the dnf5 developers.
2024-01-18: I created a private Bugzilla bug [11] as suggested.
2024-01-24: The bug did not receive any attention, so I asked Red Hat Produ=
ct Security once more about the procedures going forward, as the offer for =
coordinated disclosure has not been accepted or denied yet.
2024-01-25: We received a reply that bugfixes are being worked on, but they=
 would likely need the full 90 days maximum embargo period for publishing u=
pdates.
2024-02-26: From the openSUSE packager for dnf5 I learned that a bugfix [6]=
 for issue 3) was already public. So I contacted Red Hat Product Security o=
nce more to learn about the publication status of the issues.
2024-02-27: We received a reply with the two CVE assignments mentioned in t=
his report and have been asked what our wishes are regarding a publication =
date.

9) References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://security.opensuse.org/2024/03/04/dnf5daemon-server-local-root.=
html
[2]: https://github.com/rpm-software-management/dnf5
[3]: https://github.com/rpm-software-management/dnf5/releases/tag/5.1.9=20
[4]: https://github.com/rpm-software-management/dnf5/blob/5.1.9/dnf5daemon-=
server/session.cpp#L63
[5]: https://github.com/rpm-software-management/dnf5/blob/5.1.9/include/lib=
dnf5/conf/config_main.hpp
[6]: https://github.com/rpm-software-management/dnf5/commit/6e51bf2f0d585ab=
661806076c1e428c6482ddf86
[7]: https://github.com/rpm-software-management/dnf5/blob/5.1.9/dnf5daemon-=
server/threads_manager.cpp#L33
[8]: https://github.com/rpm-software-management/dnf5/commit/c090ffeb79da57b=
88d51da6ee76f02f6512c7d91
[9]: https://github.com/rpm-software-management/dnf5/blob/5.1.9/dnf5daemon-=
server/session.cpp#L54
[10]: https://github.com/rpm-software-management/dnf5/blob/5.1.9/dnf5daemon=
-server/threads_manager.cpp#L92
[11]: https://bugzilla.redhat.com/show_bug.cgi?id=3D2258969

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich

--6YUqtwk0AKkwM5+r
Content-Type: application/gzip
Content-Disposition: attachment; filename="dnf5daemon-server.tar.gz"
Content-Transfer-Encoding: base64

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

--6YUqtwk0AKkwM5+r--

--EwBSvusz85Md+vwn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmXl7A0ACgkQFMQFyXGS
NVNGOxAAs9rJOO6jKFTIpKo+NQJPnA+nudCoerypjL+NPNG002HKzzRKolLxGCrF
HHF3L+fZdj/hML8zuqdVX7xNioiqiOqNwqXtFOIlDuL9gR/FixH3RWTzSqLMituI
wkWDThKQK2kmr0CXqbaDRjWCj5JDNKKIB0iseyhk8pCTY1cKOmEhkCSWswIdGoiw
Re34H59ktOjZ0dpg6JVNMTfvsrBFwttjRXY5jEE4GAY0SXyKroUkW/3274C6fOYk
soNTIL8gCsX4D7kdyY4G0X5TaDxRD4JprUuZc2ytV6QtbX2DJbHzDa3a0KeoDeL2
1oOjpWBEoiAnYcKS7h/g1I/yC52CaStqAw8eD8UHq23c6pzIlbOo+7NT7jhWXsGO
nIg4pQr3UDsaG4rEEq2V1Gj0EKYjDBMR8suXdRMD0uCTDuUqUVHmTNtITMdP058Y
RM+5rZR9RMWT2VzKf4NfXUTFAL+18jKH4pvudQP+JiYvbc2pS3qPNoPITcCFHCFQ
R3rVwZs/UB3f6NfIdEdB0t0MSsTi5qaX+GkVoKFQWy3R8dOtZ6dPMALTxEFuRovY
QTOIA3bkfArsiHOW0mcUE1x0t1kmK2aMy44K8qggb76A8l4FFyD94yHvEqh1zrQv
kxg0w0JrdIP3vejksUslxpGVy/JafJC7sbmvef5uMjuUCC/FKs0=
=Cdcu
-----END PGP SIGNATURE-----

--EwBSvusz85Md+vwn--
