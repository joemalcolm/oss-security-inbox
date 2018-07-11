X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5816" "Wednesday" "11" "July" "2018" "10:21:56" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20180711082156.GA8145@f195.suse.de>" "140" "[oss-security] polkit: CVE-2018-1116: polkitd trusting client-supplied UID allows spoofed authentication dialogs" nil nil nil "7" "2018071108:21:56" "[oss-security] polkit: CVE-2018-1116: polkitd trusting client-supplied UID allows spoofed authentication dialogs" (number mark "U       mgerstner@su Jul 11  140/5816  " thread-indent "\"[oss-security] polkit: CVE-2018-1116: polkitd trusting client-supplied UID allows spoofed authentication dialogs\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9227 invoked by uid 550); 11 Jul 2018 08:22:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8179 invoked from network); 11 Jul 2018 08:22:09 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Wed, 11 Jul 2018 10:21:56 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20180711082156.GA8145@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gBBFr7Ir9EOA20Yy"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: [oss-security] polkit: CVE-2018-1116: polkitd trusting client-supplied UID allows
 spoofed authentication dialogs

--gBBFr7Ir9EOA20Yy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

during a code reviewing related to polkit
<https://www.freedesktop.org/wiki/Software/polkit/> I found a spoofed
authentication vulnerability in the implementation of the polkitd
daemon. It allows a local attacker to trigger authentication dialogs for
other users' processes. This way the attacker can obtain certain
information about the polkit rules configuration of other users, confuse
other users or DoS other users by infinitely triggering authentication
dialogs.

Basically the issue is that an attacker is able to specify
arbitrary target process UIDs when talking to polkitd via D-Bus like
this:

$ gdbus call --system --dest org.freedesktop.PolicyKit1 \
	--object-path /org/freedesktop/PolicyKit1/Authority \
	--method org.freedesktop.PolicyKit1.Authority.CheckAuthorization \
	'("unix-process", {"pid": <uint32 ${PID}>, "start-time": <uint64 0>, "uid"=
: <${UID}>})' \
	org.freedesktop.timedate1.set-time '[]' 1 ''

Where ${PID} needs to be the process ID of the target process and ${UID}
the user ID of the calling process i.e. `id -u`.

Upstream just released version 0.115 of polkit that addresses this issue
by way of commit bc7ffad53643a9c80231fc41f5582d6a8931c32c. The issue was
introduced with a fix for CVE-2013-4288 in polkit version 0.112.

Further below you can find the upstream commit message with a more
detailed explanation of the issue and its fix. I want to thank the
upstream developers for the constructive communication and quick
handling of the issue.

Best regards

Matthias

Timeline:

2018-06-21: I discovered and analyzed the issue
2018-06-22: I reported the issue privately to upstream via
    dbus-security@lists.freedesktop.org. In the following days upstream
    devised a patch that was discussed and reviewed on the mailing list.
    Publication has been scheduled for 2018-07-10 together with the
    release of the fixed polkit version.
2018-07-10: The upstream release was published as scheduled.

References:

- Upstream Release Notice: https://lists.freedesktop.org/archives/polkit-de=
vel/2018-July/000583.html
- Upstream Fix: https://cgit.freedesktop.org/polkit/commit/?id=3Dbc7ffad536=
43a9c80231fc41f5582d6a8931c32c
- SUSE Bug for the issue: https://bugzilla.suse.com/show_bug.cgi?id=3D10990=
31

Upstream Commit Message:

     Fix CVE-2018-1116: Trusting client-supplied UID
=20=20=20=20=20=20
     As part of CVE-2013-4288, the D-Bus clients were allowed (and
     encouraged) to submit the UID of the subject of authorization checks
     to avoid races against UID changes (notably using executables
     set-UID to root).
=20=20=20=20=20
     However, that also allowed any client to submit an arbitrary UID, and
     that could be used to bypass "can only ask about / affect the same UID"
     checks in CheckAuthorization / RegisterAuthenticationAgent /
     UnregisterAuthenticationAgent.  This allowed an attacker:
=20=20=20=20=20
     - With CheckAuthorization, to cause the registered authentication
       agent in victim's session to pop up a dialog, or to determine whether
       the victim currently has a temporary authorization to perform an
       operation.
=20=20=20=20=20
       (In principle, the attacker can also determine whether JavaScript
       rules allow the victim process to perform an operation; however,
       usually rules base their decisions on information determined from
       the supplied UID, so the attacker usually won't learn anything new.)
=20=20=20=20=20
     - With RegisterAuthenticationAgent, to prevent the victim's
       authentication agent to work (for a specific victim process),
       or to learn about which operations requiring authorization
       the victim is attempting.
=20=20=20=20=20
     To fix this, expose internal _polkit_unix_process_get_owner() /
     obsolete polkit_unix_process_get_owner() as a private
     polkit_unix_process_get_racy_uid__() (being more explicit about the
     dangers on relying on it), and use it in
     polkit_backend_session_monitor_get_user_for_subject() to return
     a boolean indicating whether the subject UID may be caller-chosen.
=20=20=20=20=20
     Then, in the permission checks that require the subject to be
     equal to the caller, fail on caller-chosen UIDs (and continue
     through the pre-existing code paths which allow root, or root-designat=
ed
     server processes, to ask about arbitrary subjects.)
=20=20=20=20=20
     Signed-off-by: Miloslav Trma=C4=8D <mitr@redhat.com>


--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Telefon: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Linux GmbH
GF: Felix Imend=C3=B6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG Nuernberg)


--gBBFr7Ir9EOA20Yy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAltFviQACgkQFMQFyXGS
NVPRCxAAjpc3YNgRd/9c3B4wxbJDlWxcmLhtkKcsVDP4ukwAzNsuBmLqtOBvdrjC
O0F1bLBUFM6yPcmPwHDPqrSswlbfB9yw3178SDppmMF/RZuMkcyBn67FtwFqFeH8
sBqRz/ernV5Xx7MwZikA3WZwUYHf5C8WXnEGLOdADKtKehGjfjFG1ka2xvJa0Lro
HyC3m94h6HjxJ2M0lyT8mHsdUpd0eC8tE1EZG3gE2/eQL6Nzcif9qzyWB+W6ScVb
XYncvNW6Db3sL8nQRrxAXVFFjKL6IOWgGbQ74hoeWyd3MlBbt96g8mRPALpvXm5T
2NnrTRjNpBV9HhSlGqo8HylSmTl/gpaQdBCXf3epjXseAqQem3vjjXnI7d9V1Vi2
YQqBIZu+qhezTtmqm3NuoGPGi5X5tcGppuDm9UoTeELWqL7jGdkxMDJX35bPbzO2
CuOrs7r/vpSW4C5/Y7nl7Pg41L2HqA72/SRh0goX3DMnjAQOlXdPqhkKXWGDAfWW
wVdLVQgI5VxvsEKsduBxKnpkFj7aOuwH6YL9zOCD238sApssV3foX5bU0kwamfob
t8VLlnpGjFXSWnLNZa9/LjAJgNyrFatuU1fP8i3M0G+3NbWEWXLhiSg6IVRqtesX
LN348msJkr5vAMeahk79WqGH7eK8EpZColLM3Isc2SMEO+rM1qo=
=I088
-----END PGP SIGNATURE-----

--gBBFr7Ir9EOA20Yy--
