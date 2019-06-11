X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4000" "Tuesday" "11" "June" "2019" "16:09:41" "+0100" "Simon McVittie" "smcv@debian.org" "<20190611150941.GA18705@espresso.pseudorandom.co.uk>" "83" "[oss-security] CVE-2019-12749: DBusServer DBUS_COOKIE_SHA1 authentication bypass" "^Date:" nil nil "6" "2019061115:09:41" "[oss-security] CVE-2019-12749: DBusServer DBUS_COOKIE_SHA1 authentication bypass" (number mark "U       smcv@debian. Jun 11   83/4000  " thread-indent "\"[oss-security] CVE-2019-12749: DBusServer DBUS_COOKIE_SHA1 authentication bypass\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-12749: DBusServer DBUS_COOKIE_SHA1 authentication bypass" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1373 invoked by uid 550); 11 Jun 2019 15:09:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1352 invoked from network); 11 Jun 2019 15:09:56 -0000
Message-ID: <20190611150941.GA18705@espresso.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Tue, 11 Jun 2019 16:09:41 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-12749: DBusServer DBUS_COOKIE_SHA1 authentication bypass
To: oss-security@lists.openwall.com

Product: freedesktop.org dbus
Vulnerable versions: all < 1.10.28, 1.12.x < 1.12.16, 1.13.x < 1.13.12
Fixed versions: all >= 1.13.12, 1.12.x >= 1.12.16, 1.10.x >= 1.10.28

dbus is the reference implementation of D-Bus, an asynchronous
inter-process communication system commonly used for system services
or within a desktop session on Linux and other operating systems.

Joe Vennix of Apple Information Security discovered an implementation flaw
in the DBUS_COOKIE_SHA1 authentication mechanism. A malicious client with
write access to its own home directory could manipulate a ~/.dbus-keyrings
symlink to cause a DBusServer with a different uid to read and write
in unintended locations. In the worst case, this could result in the
DBusServer reusing a cookie that is known to the malicious client, and
treating that cookie as evidence that a subsequent client connection
came from an attacker-chosen uid, allowing authentication bypass.

This vulnerability does not normally affect the standard system
dbus-daemon, which only allows the EXTERNAL authentication mechanism.
In supported branches of dbus it also does not normally affect the standard
session dbus-daemon, for the same reason.

However, this vulnerability can affect third-party users of DBusServer
(such as Upstart in Ubuntu 14.04 LTS), third-party dbus-daemon instances,
standard dbus-daemon instances with non-standard configuration, and the
session bus in older/unsupported dbus branches (such as dbus 1.6.x in
Ubuntu 14.04 LTS).

Recommendations
---------------

Fix the vulnerability by upgrading to a
fixed dbus version, or by applying upstream git commit
https://gitlab.freedesktop.org/dbus/dbus/commit/47b1a4c41004bf494b87370987b222c934b19016
which should be suitable for all recent branches. This resolves the
vulnerability by rejecting attempts to authenticate with DBUS_COOKIE_SHA1
as any user ID that is not the owner of the process with the DBusServer.

A further git commit "test: Add basic test coverage for DBUS_COOKIE_SHA1"
(available in different versions for the dbus-1.10/dbus-1.12 and master
branches) adds basic unit test coverage, which is not required but might
be useful.

As additional hardening, we recommend that D-Bus servers on Unix platforms
should only listen on AF_UNIX sockets, and that they should pass the array
{"EXTERNAL", NULL} to dbus_server_set_auth_mechanisms() immediately after
the DBusServer is created (before polling the server's socket), so that
only EXTERNAL (credentials-passing) authentication is allowed. This is
not the default behaviour of a DBusServer for compatibility reasons. In
dbus-daemon(1) this can be achieved by having <auth>EXTERNAL</auth> as
the only <auth> element in the configuration, similar to the standard
system.conf and session.conf on Unix platforms. This hardening would have
made the vulnerability inaccessible.

Distributors who are maintaining an unsupported branch
should apply that hardening to the standard session
bus (dbus-daemon --session) by backporting upstream commit
https://gitlab.freedesktop.org/dbus/dbus/commit/d9ab8931 from dbus 1.8.18
if they have not done so already.

Unsupported branches
--------------------

As announced in
<https://lists.freedesktop.org/archives/dbus/2018-December/017644.html>,
dbus 1.8.x, 1.6.x and all older branches have reached end-of-life and no
longer receive upstream security support. There will not be releases from
those branches to fix this vulnerability. If your long-term-supported
distribution relies on one of these branches, and you would like to
use the upstream dbus git repository to share tested patches with other
distributions in the same situation, please contact the dbus maintainers
via <dbus-security@lists.freedesktop.org>.

Acknowledgements
----------------

Thanks to Joe Vennix (Apple Information Security), Seth Arnold (Canonical)
and Philip Withnall (Endless) for their assistance with this vulnerability.

-- 
Simon McVittie
Collabora Ltd. / Debian
on behalf of the dbus maintainers
