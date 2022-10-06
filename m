Received: (qmail 9795 invoked by uid 550); 6 Oct 2022 08:53:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9774 invoked from network); 6 Oct 2022 08:53:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=1l3T2ZiLC4x8dAdj40TwbctWyt3r56yPD6v8CDnxqCI=; b=vbDPAmqUwoGm6smaPJFR4biOQE
	9gDmKAF2GaS9jko3tGqK9/vnxQ5ne1XTllI/ryUfJDYgAQ3s8KnnVmGIH4EeY8u4hLvwpNsFqgspi
	XS8mA2l8sCN4aqAMNALsj6glCcz6f6PfPfpbF2B6GG49JjV1/+XitqBXSmBPTnQtHpmUm5muebdoV
	ZP3cQqT8P9XCgc0hwbxldRMOC30xzUhwo2ERToXWtdA5G4LqWP0ILyD7M0KE3DnbzZ1tx0HqEbEqc
	3D69Yv6qmKHplP1btoTzXsHaQM1Dejy87lPCWzRDjzMCLEHbJspMx5m+fsxCfNjgAeOeeMFW2avMa
	ccC+uneQ==;
Date: Thu, 6 Oct 2022 09:52:53 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Cc: dbus-security@lists.freedesktop.org
Message-ID: <Yz6XZSTsVQm7VKia@momentum.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Debian-User: smcv
Subject: [oss-security] dbus denial of service: CVE-2022-42010, -42011, -42012

dbus is the reference implementation of D-Bus, a message bus for
communication between applications and system services.

Evgeny Vereshchagin discovered several ways in which an authenticated
local attacker could cause a crash (denial of service) in
dbus-daemon --system or a custom DBusServer. In uncommon configurations
these could potentially be carried out by an authenticated remote attacker.

Fixed versions:

* dbus 1.14.x >= 1.14.4 (stable branch)
* dbus 1.12.x >= 1.12.24 (old stable branch)
* dbus >= 1.15.2 (development branch)

Older dbus branches such as 1.10.x are EOL and will not receive new
upstream releases.

Vulnerable versions:

* dbus 1.15.x before 1.15.2
* dbus 1.14.x before 1.14.4
* all versions before 1.12.24

CVE-2022-42010 is believed to have been introduced during early dbus
development (before 1.0) and the other two vulnerabilities mentioned
here were regressions in 1.3.0.

Vulnerability details:

* An invalid array of fixed-length elements where the length of the array
  is not a multiple of the length of the element would cause an assertion
  failure in debug builds or an out-of-bounds read in production builds.
  This was a regression in version 1.3.0.
  (dbus#413, CVE-2022-42011, fixed by
  https://gitlab.freedesktop.org/dbus/dbus/-/commit/079bbf16186e87fb0157adf8951f19864bc2ed69)

* A syntactically invalid type signature with incorrectly nested parentheses
  and curly brackets would cause an assertion failure in debug builds.
  Similar messages could potentially result in a crash or incorrect message
  processing in a production build, although we are not aware of a practical
  example. (dbus#418, CVE-2022-42010, fixed by
  https://gitlab.freedesktop.org/dbus/dbus/-/commit/9d07424e9011e3bbe535e83043d335f3093d2916)

* A message in non-native endianness with out-of-band Unix file descriptors
  would cause a use-after-free and possible memory corruption in production
  builds, or an assertion failure in debug builds. This was a regression in
  version 1.3.0. (dbus#417, CVE-2022-42012, fixed by
  https://gitlab.freedesktop.org/dbus/dbus/-/commit/236f16e444e88a984cf12b09225e0f8efa6c5b44)

Reimplementations of the D-Bus protocol such as systemd's sd-bus (used
in dbus-broker and systemd) and GLib's GDBus (used in gvfs and ibus)
do not share dbus' code for message parsing and validation, so they are
probably unaffected by these issues.

-- 
Simon McVittie, Collabora Ltd. / Debian
on behalf of the dbus maintainers
