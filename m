X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4605" "Thursday" "3" "June" "2021" "16:09:38" "+0200" "Cedric Buissart" "cbuissar@redhat.com" nil "110" "[oss-security] CVE-2021-3560 polkit: local privilege escalation using polkit_system_bus_name_get_creds_sync()" nil nil nil "6" nil nil (number mark "U       cbuissar@red Jun  3  110/4605  " thread-indent "\"[oss-security] CVE-2021-3560 polkit: local privilege escalation using polkit_system_bus_name_get_creds_sync()\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3560 polkit: local privilege escalation using polkit_system_bus_name_get_creds_sync()" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23880 invoked by uid 550); 3 Jun 2021 14:09:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23862 invoked from network); 3 Jun 2021 14:09:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622729387;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=aKceAqbnOg0OTQbxTp/JTeCWHSexwVpkcG5TcXNG8h8=;
	b=fFUlpWbLgVrUSjt+op2WpWMtlNU9wVlfXq6DzUAQgmeKfutCZzWCbCA8wkHuXmZ9euTyZk
	zNSf1dAgnpEaWt0KK73u4QIClXAl7+p/9oU5rxI/fSntj2lb5evtFut9OHNfApomV84YcB
	WF/mwnQQUeECpLckOmtirBChLjeYCvo=
X-MC-Unique: n1gFtVYGMUe2Oa0e9oHsWA-1
Date: Thu, 3 Jun 2021 16:09:38 +0200
From: Cedric Buissart <cbuissar@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <YLjioqSgPqiOuhsk@cbuissar-ltop.lan>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=cbuissar@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/PGBFKMMBcRIVGUz"
Content-Disposition: inline
Subject: [oss-security] CVE-2021-3560 polkit: local privilege escalation using
 polkit_system_bus_name_get_creds_sync()

--/PGBFKMMBcRIVGUz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello all,

This is to report a vulnerability in the `polkit` component
(https://gitlab.freedesktop.org/polkit/polkit/). This vulnerability is
rated Important by Red Hat

polkit is a toolkit for defining and handling authorizations.  It is
used for allowing unprivileged processes to speak to privileged
processes.

The vulnerability can be reliably used by an unprivileged local attacker
to bypass authorization and escalate permissions up to the root user.

Red Hat proposes a disclosure on Thursday June 3rd (2021/06/03), around
7:00 AM UTC

 =3D=3D issue description =3D=3D

The function `polkit_system_bus_name_get_creds_sync` is used to get the
uid and pid of the process requesting the action. It does this by
sending the unique bus name of the requesting process, which is
typically something like ":1.96", to `dbus-daemon`. These unique names
are assigned and managed by `dbus-daemon` and cannot be forged, so this
is a good way to check the privileges of the requesting process.

The vulnerability happens when the requesting process disconnects from
`dbus-daemon` just before the call to
`polkit_system_bus_name_get_creds_sync` starts. In this scenario, the
unique bus name is no longer valid, so `dbus-daemon` sends back an error
reply. This error case is handled in
`polkit_system_bus_name_get_creds_sync` by setting the value of the
`error` parameter, but it still returns `TRUE`, rather than `FALSE`.
This behavior means that all callers of
`polkit_system_bus_name_get_creds_sync` need to carefully check whether
an error was set. If the calling function forgets to check for errors
then it will think that the uid of the requesting process is 0 (because
the `AsyncGetBusNameCredsData` struct is zero initialized). In other
words, it will think that the action was requested by a root process,
and will therefore allow it.

Most of the callers of `polkit_system_bus_name_get_creds_sync` check the
error value correctly, and are therefore not vulnerable. But the error
value is not checked in the following call path:

```
0 in polkit_system_bus_name_get_creds_sync of polkitsystembusname.c:393
1 in polkit_system_bus_name_get_user_sync of polkitsystembusname.c:511
2 in polkit_backend_session_monitor_get_user_for_subject=3D20
  of polkitbackendsessionmonitor-systemd.c:303
3 in check_authorization_sync of polkitbackendinteractiveauthority.c:1113
4 in check_authorization_sync of polkitbackendinteractiveauthority.c:1223
5 in polkit_backend_interactive_authority_check_authorization=3D20
  of polkitbackendinteractiveauthority.c:971
6 in server_handle_check_authorization of polkitbackendauthority.c:795
7 in server_handle_method_call of polkitbackendauthority.c:1274
```

 =3D=3D Analysis =3D=3D

It is believed that the vulnerability was introduced in polkit 0.113,
via https://gitlab.freedesktop.org/polkit/polkit/-/commit/bfa5036.
However, some Debian based distros (e.g.: Ubuntu 20.04), based on 0.105,
appear to also be vulnerable, as the commit was backported.

 =3D=3D Misc and summary =3D=3D

- CVE ID & Title: CVE-2021-3560 polkit: local privilege escalation using
  polkit_system_bus_name_get_creds_sync()
- Disclosure date/time : Thursday June 3rd (2021/06/03), ~ 7:00 AM UTC
- Upstream fix:=20
  https://gitlab.freedesktop.org/polkit/polkit/-/commit/a04d13a
- Red Hat's current CVSS Score: 7.8 -
  AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H
- Original report:
  https://gitlab.freedesktop.org/polkit/polkit/-/issues/140
- Vulnerable versions: from 0.113 until 0.118, but some distributions
  may have backported the vulnerability.
- Fixed version : 0.119 (to be released)
- Original reporter of the vulnerability :
  Kevin Backhouse (GitHub Security Lab)

Red Hat & upstream would like to thank Kevin Backhouse (GitHub Security
Lab) for the detailed report & analysis of the flaw.

--
Cedric Buissart
Red Hat Product Security

--/PGBFKMMBcRIVGUz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQFIBAEBCgAyFiEE0A/L2aoNemwB/pdsIhKxi9oruQgFAmC44qEUHGNidWlzc2Fy
QHJlZGhhdC5jb20ACgkQIhKxi9oruQjpEwf8CP28SOHOoeu2XK5xPWOqCo+A2fFA
lv/IqBsbVWflXA2QKWObNRKl/jtr+kVQYKgXrJgoaicpfRgMZ9xur1BYaYkRGoGn
0QqxAW7Gk6xDiuCuSft/Dg1UFXrMaGfY61lOkB/DEPaT9y4F5rQKvqAr8IQykzOD
UkJ3L6534oyhq+23lp0bA95v0P3yeXYovkDYwLn6sYOw1/h9UN9SSYRvuRQbKSsh
Yqeuw03Z7TvvD08ufXxsnHa64iOL+/Vp/9sVXSNllfLpMIyzy90kx2BKK+v1GA26
xmBnVYOQBqrdJmCdhNPCEx4QO78vQhixkL/6qkoEOoAlFmSMBSkYSmGaJw==
=y2YK
-----END PGP SIGNATURE-----

--/PGBFKMMBcRIVGUz--

