X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/27
Message-ID: <CANVJMCGQgPv7_DieUqjqiqs_uq5EQ6280mwXmHtyHDSq9rT0vw@mail.gmail.com>
Date: Tue, 17 Nov 2026 15:45:00 -0500
From: Armaan Sandhu <armaan.sandhu0504@...il.com>
To: oss-security@...ts.openwall.com
Cc: liske@...lbox.org
Subject: needrestart: local root via a forged session cgroup and the notify-send hook (CVE-2026-124757)
Content-Type: text/plain; charset=utf-8

Hi,

This is the public write-up for CVE-2026-124757, a local privilege
escalation in needrestart. Red Hat assigned the CVE. The coordinated
disclosure date agreed on linux-distros is Tuesday 17 November 2026 at
21:30 CET, and this post is made after that time.

Affected packages (confirmed):
- Debian bookworm, needrestart 3.6-4+deb12u3
- Ubuntu 24.04, needrestart 3.6-7ubuntu4.5

Partly affected:
- Debian trixie, needrestart 3.11-1: a local user can make needrestart
treat their process as root's session, and the packaged notify hook then
runs notify-send as root with attacker-chosen DISPLAY and text. Command
execution was not reproduced on trixie.

I have not checked other distributions' packages. Upstream notes that the
notify hook runs whenever needrestart runs, so systems that run needrestart
from automation or monitoring, not only from apt, can be affected as well.

needrestart decides which user session a process belongs to by matching the
text of the process's cgroup path, and the match is not anchored. A local
user can create a matching directory inside their own user@....service
cgroup, which makes their process look like it belongs to root's session.
The notify hook (400-notify-send) then uses that process's name, which the
process sets itself. On bookworm and Ubuntu 24.04 the hook puts the name
into a shell string run through su, so a root shell parses it and runs the
attacker's commands as root. Testing was done in a lab setup, with root as
the target only.

Trigger: any apt or dpkg run as root with the stock apt hook runs
needrestart afterwards. The tests used apt-get. unattended-upgrades was not
tested.

Fix: upstream has a three-patch series. It passes the notification text to
the hook through environment variables, anchors the systemd cgroup matches,
and replaces non-printable characters in the notification text. The series
applies with offsets on needrestart 3.11. On 3.6 the second patch does not
apply cleanly and needs a backport. Upstream will add the patches to its
git repository at disclosure. Please check your distribution's security
advisories for updated packages.

Credit: Armaan Sandhu found and reported the issue. Upstream maintainer
Thomas Liske reviewed the fix. Timeline: reported to upstream on 23 October
2026, to the Debian and Ubuntu security teams on 5 November 2026, and to
linux-distros on 8 November 2026.

Thanks,
Armaan Sandhu

