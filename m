X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/12/5
Message-ID: <avYN2Tt-gx1Y2ICL@definition.pseudorandom.co.uk>
Date: Thu, 12 Nov 2026 19:04:57 +0000
From: Simon McVittie <smcv@...ian.org>
To: oss-security@...ts.openwall.com
Cc: dbus@...ts.freedesktop.org
Subject: dbus: multiple denial-of-service issues
Content-Type: text/plain; charset=utf-8

Today's dbus 1.16.4 release includes fixes for several denial-of-service
issues. Another local denial of service, dbus#589 (see below), is known
and not yet fixed.

CVE IDs have been requested from Red Hat's CNA, please do not allocate
other CVE IDs for these issues. The upstream issue reports linked below
will be updated if CVE IDs are allocated.

All reasonably recent versions of dbus are affected. Some of these issues
do not affect very old versions, but those versions are no longer
supported and are susceptible to unrelated unfixed vulnerabilities.

The new file SECURITY.md attempts to describe the scope of what is and
is not security-supported. In particular, it now formalizes that the dbus
maintainers do not consider it to be realistic for `dbus-daemon --system`
to prevent denial of service via resource exhaustion by a local attacker.

Other implementations of the D-Bus protocol (including client libraries
such as GDBus and sd-bus, and message buses such as dbus-broker) are
maintained by different teams and are not covered by this advisory.

-----

Denial-of-service issues that remain open, help would be appreciated:

dbus#589, RHEL-239602, CVE ID pending if not rejected as out-of-scope:
If an activatable system service is slow to start or does not remain
running after it is started, then an unprivileged local attacker could
exhaust the arbitrary limit on the number of pending activation
attempts (which is, itself, an attempt to prevent denial of service by
memory exhaustion), causing subsequent activation attempts to fail.
Thanks to AISLE in partnership with Red Hat.
https://gitlab.freedesktop.org/dbus/dbus/-/work_items/589

-----

Denial-of-service issues fixed in 1.16.4:

dbus#576, CVE-2026-120749:
If a privileged user was running a monitor such as `dbus-monitor --system`
or `busctl monitor --system`, then an unprivileged local attacker could make
`dbus-daemon --system` crash by arranging for delivery of a a broadcast
signal to fail, as a result of an incomplete fix for CVE-2023-34969.
Thanks to Ma Penghui, KylinSoft Corporation.
https://gitlab.freedesktop.org/dbus/dbus/-/work_items/576

dbus#587, RHEL-239613, CVE ID pending:
A local attacker can connect a socket to a libdbus-based server such as
`dbus-daemon --system`, then shut down the reading side of the socket with
shutdown() to trigger an EPIPE error in the server. The server repeatedly
retries reading from the attacker's socket, resulting in a busy-loop
(up to 100% load on one CPU core) until the attacker is disconnected.
Thanks to AISLE in partnership with Red Hat.
https://gitlab.freedesktop.org/dbus/dbus/-/work_items/587

dbus#584, RHEL-239610, CVE ID pending:
A local attacker connecting to a libdbus-based server such as
`dbus-daemon --system` on certain non-Linux platforms can cause a crash
by creating enough connections that their file descriptor numbers exceed
FD_SETSIZE.
- macOS and other Darwin-based Apple platforms are vulnerable.
- Interix, also known as Windows Services for Unix, Subsystem for Unix-based
   Applications (SUA) or OpenNT, is vulnerable. Note that as far as we
   know, this platform is no longer supported by its vendor.
- Unix platforms that do not implement poll() are vulnerable, if any
   such platform is still in use.
- Other platforms, including Linux and *BSD, are not vulnerable.
Thanks to AISLE in partnership with Red Hat.
https://gitlab.freedesktop.org/dbus/dbus/-/work_items/584

dbus#588, RHEL-239934, CVE ID pending:
A local attacker connecting to a libdbus-based server such as
`dbus-daemon --system` on certain non-Linux platforms can cause a file
descriptor leak by sending unexpected file descriptors attached to the
first byte of the stream.
- FreeBSD and DragonflyBSD are believed to be vulnerable.
- Other platforms, including Linux, NetBSD and OpenBSD, are not believed
   to be vulnerable.
Thanks to AISLE in partnership with Red Hat.
https://gitlab.freedesktop.org/dbus/dbus/-/work_items/588

dbus#586, RHEL-239294, CVE ID pending if not rejected as out-of-scope:
An attacker with access to the TCP socket of a libdbus-based server that
was configured to listen with the `nonce-tcp:` transport can cause the
server to become unresponsive by connecting to the socket and not providing
input. Unix systems do not normally use this transport, and implementors
should note that it is unsuitable for use on multi-user systems.
In addition, like the related `tcp:` transport, it has no integrity or
confidentiality protection and should never be used for remote access.
Thanks to AISLE in partnership with Red Hat.
https://gitlab.freedesktop.org/dbus/dbus/-/work_items/586

-- 
Simon McVittie, Collabora Ltd. / Debian
