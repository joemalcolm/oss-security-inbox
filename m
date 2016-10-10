X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5309" "Monday" "10" "October" "2016" "13:15:18" "+0100" "Simon McVittie" "smcv@debian.org" "<20161010121518.tnvomatyp65fwoyz@perpetual.pseudorandom.co.uk>" "134" "[oss-security] fd.o #98157: dbus format string vulnerability fixed in 1.10.12" nil nil nil "10" "2016101012:15:18" "[oss-security] fd.o #98157: dbus format string vulnerability fixed in 1.10.12" (number mark "U       smcv@debian. Oct 10  134/5309  " thread-indent "\"[oss-security] fd.o #98157: dbus format string vulnerability fixed in 1.10.12\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5760 invoked by uid 550); 10 Oct 2016 12:15:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5738 invoked from network); 10 Oct 2016 12:15:46 -0000
Date: Mon, 10 Oct 2016 13:15:18 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20161010121518.tnvomatyp65fwoyz@perpetual.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bbjuk3kosv3gepa4"
Content-Disposition: inline
User-Agent: NeoMutt/20160916 (1.7.0)
Subject: [oss-security] fd.o #98157: dbus format string vulnerability fixed in 1.10.12

--bbjuk3kosv3gepa4
Content-Type: multipart/mixed; boundary="dpkg5q4lqmk26up5"
Content-Disposition: inline


--dpkg5q4lqmk26up5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Bug tracked as: https://bugs.freedesktop.org/show_bug.cgi?id=3D98157
Versions affected: dbus >=3D 1.4.0
Mitigated in: dbus >=3D 1.9.10, 1.8.x >=3D 1.8.16, 1.6.x >=3D 1.6.30
Fixed in: dbus >=3D 1.11.6, 1.10.x >=3D 1.10.12, 1.8.x >=3D 1.8.22
Exploitable by: local users
Impact: unknown, possibly arbitrary code execution
Reporter: Simon McVittie, Collabora Ltd.

D-Bus <http://www.freedesktop.org/wiki/Software/dbus/> is an
asynchronous inter-process communication system, commonly used
for system services or within a desktop session on Linux and other
operating systems.

A format string vulnerability in the reference bus implementation,
dbus-daemon, could potentially allow local users to cause arbitrary
code execution or denial of service.

In versions of dbus-daemon that are also vulnerable to CVE-2015-0245,
this format string vulnerability is available to all local users.
These versions should be patched or updated immediately.

In versions of dbus-daemon where CVE-2015-0245 was already fixed, this
is not believed to be exploitable in practice, because the relevant
message is ignored unless it comes from the owner of the bus name
org.freedesktop.systemd1. On the system bus, this bus name is only
allowed to be owned by uid 0; it is intended to be owned by systemd,
and no mechanism is currently known by which an attacker who does not
already have root privileges could induce systemd to send messages
that would trigger the format string vulnerability.

Patching or updating dbus-daemon is strongly recommended. A minimal
patch is attached to this advisory.

Please reference fd.o #98157 or
<https://bugs.freedesktop.org/show_bug.cgi?id=3D98157> in any notices
that refer to this vulnerability.

Regards,
    S
--=20
Simon McVittie
Collabora Ltd. <https://www.collabora.com/> / Debian <https://www.debian.or=
g/>

--dpkg5q4lqmk26up5
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="0001-dbus_activation_systemd_failure-do-not-use-non-liter.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 91ec6a05612492b845c8cbde3ad42b29569fe7af Mon Sep 17 00:00:00 2001
From: Simon McVittie <simon.mcvittie@collabora.co.uk>
Date: Fri, 7 Oct 2016 19:13:01 +0100
Subject: [PATCH] dbus_activation_systemd_failure: do not use non-literal
 format string

In principle this could lead to arbitrary memory overwrite via
a format string attack in the message received from systemd,
resulting in arbitrary code execution.

This is not believed to be an exploitable security vulnerability on the
system bus in practice: it can only be exploited by the owner of the
org.freedesktop.systemd1 bus name, which is restricted to uid 0, so
if systemd is attacker-controlled then the system is already doomed.
Similarly, if a systemd system unit mentioned in the activation failure
message has an attacker-controlled name, then the attacker likely already
has sufficient access to execute arbitrary code as root in any case.

However, prior to dbus 1.8.16 and 1.9.10, due to a missing check for
systemd's identity, unprivileged processes could forge activation
failure messages which would have gone through this code path.
We thought at the time that this was a denial of service vulnerability
(CVE-2015-0245); this bug means that it was in fact potentially an
arbitrary code execution vulnerability.

Bug found using -Wsuggest-attribute=3Dformat and -Wformat-security.

Signed-off-by: Simon McVittie <simon.mcvittie@collabora.co.uk>
Reviewed-by: Colin Walters <walters@verbum.org>
Bug: https://bugs.freedesktop.org/show_bug.cgi?id=3D98157
---
 bus/activation.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/bus/activation.c b/bus/activation.c
index 2c5ef9d..1e59190 100644
--- a/bus/activation.c
+++ b/bus/activation.c
@@ -2222,7 +2222,7 @@ dbus_activation_systemd_failure (BusActivation *activ=
ation,
                              DBUS_TYPE_STRING, &code,
                              DBUS_TYPE_STRING, &str,
                              DBUS_TYPE_INVALID))
-    dbus_set_error(&error, code, str);
+    dbus_set_error (&error, code, "%s", str);
=20
=20
   if (unit)
--=20
2.9.3


--dpkg5q4lqmk26up5--

--bbjuk3kosv3gepa4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAABCAAGBQJX+4ZWAAoJEE3o/ypjx8yQ/8gP/0+yAil/29e84Aaa7mYQOOXC
ZiOpir9zGznNG+0VDAMy5+y0GLsX35yiR1ypZ5VIwBcfEQtqfbJgWQ2AZb//PSdy
Sm0+WORSQlQ2ttG2ryyE8iYl6ckq3v5Ob1ZgsAD64aY+t99xKPNK+ypn4sRFhI22
CJQnuJ4X6WFsmKG9YH/Rep4CKr6GiUURoz8GdgGNblhcQ14cCIrgH45RtsJSVn5M
28197QZwZJx1YwMHo3eZ6S5UoOmbijhc3vb8CpxQNPQaSYZOc7lggLnCETG2vp3P
Gut3f+8Td/I3lMxQsakmoDC5yIhbVY8hGlvzpHkMzBn7i3rfHfqz3KJON5VASgRw
jPPH/KdDHreGwRReDm7HZZIsKZrZNLwJkXHWflf29uVzdAOtowcffVzTvd6Be+eC
HKvwXyyyNripqDsuWebwG7z6Y+ughGPR+TCbZAzRVUl3wHJ/rErJqH1myJCdTFQq
h/1+3LoPLgI3Knx9zmKK4icpMjCwc6iq26jNnaYyuhgnP2F2Yt1y/++umWarHSwK
WRY6GGo4+a/mr/dYvF6plXWSfuB9NRS2HzCaOKdg5Mp2ZUvSphM5S3fjASV9ns6m
c3vbo/YF2NXE5w1tBdadgxarz8sf/L1RzZPLunjOOsQJNNygm2kKMZCqENbOLSj/
GOEfs0tUNYaaoJhnRQ5j
=QKw5
-----END PGP SIGNATURE-----

--bbjuk3kosv3gepa4--
