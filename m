X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/04/12
Message-ID: <auub0kK7McEIXSTE@netmeister.org>
Date: Wed, 4 Nov 2026 15:55:46 -0500
From: Jan Schaumann <jschauma@...meister.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-109518: RCE in apt(1) (DSA 6607-1)
Content-Type: text/plain; charset=utf-8

This Debian Security Advisory for CVE-2026-109518
in apt(1) seems worth sharing more widely:

https://lists.debian.org/debian-security-announce/2026/msg00526.html

| Max Justicz discovered a vulnerability in the APT
| package manager. APT can merge two different package
| downloads after an HTTP redirect gives them the same
| URI. Improper file handling when resuming an HTTP
| download allows a man-in-the-middle attacker to
| replace a package after verification, resulting in the
| execution of arbitrary code as root.
| 
| For the stable distribution (trixie), this problem has
| been fixed in version 3.0.4. Additionally this update
| addresses several out-of-bounds access issues.


Some more details (including about the other OOB
memory access issues) here:

https://lists.debian.org/deity/2026/11/msg00005.html

| This relies on the Acquire::Retries setting being set,
| which has only been the default since APT 2.3.2 - but
| many user scripts may have been using it in older
| releases.

The diff in question appears to be this:

https://salsa.debian.org/apt-team/apt/-/commit/5af16a8ad0f155233dfb10b7c92ad1903112ef79


Adding `Acquire::Retries 0;` to your `apt.conf` may
mitigate the issue until you upgrade.

-Jan
