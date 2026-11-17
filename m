X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/26
Message-ID: <CADk+mPDzoYzbYc-tkfDj+ok0jjheZOZtaNiiJ=36Le3NhAXdrw@mail.gmail.com>
Date: Tue, 17 Nov 2026 19:51:00 +0100
From: Rainer Gerhards <rgerhards@...scon.com>
To: oss-security@...ts.openwall.com
Subject: rsyslog imuxsock TAG parser out-of-bounds read
Content-Type: text/plain; charset=utf-8

Credit: Discovered during rsyslog's internal security review.

rsyslog's imuxsock input has an out-of-bounds read in TAG parsing when
the special parser uses the system timestamp. An accepted short
timestamp can leave the TAG cursor and remaining length referring to
different positions in the raw message. A local sender able to write
to a directly accessible imuxsock Unix datagram socket can use a valid
PRI and long nonspace TAG suffix to drive the scanner one byte past
the allocated message.

This is separate from GHSA-xrxr-7942-54fr, the reported out-of-bounds
timestamp write. The demonstrated TAG input has valid PRI and an
in-bounds timestamp write. A real rsyslogd built with ASan reported a
one-byte heap out-of-bounds read. In an ordinary build, we observed
malformed TAG/body output with NUL bytes and no crash. We have not
demonstrated disclosure of adjacent nonzero bytes to an attacker,
sustained denial of service, or an ordinary-build crash. The
advisory's severity is provisionally Low; no numeric CVSS vector is
assigned pending a demonstrated confidentiality path.

CVE: CVE-2026-129830.

Affected configuration: imuxsock's special parser with system
timestamp on a directly accessible raw Unix socket. The checked
supported-v8 affected range is >= 8.1.0. Historical v5.9.5 and v6.3.7
contain the relevant mismatch-introduction commit, but other old
release branches require semantic confirmation. The fixed-version
label is 2026-11-17 daily stable; verify actual package availability
before stating a binary is fixed.

The attached TAG source-only patch applies after the separate
GHSA-xrxr-7942-54fr source patch on the checked baseline. The full
upstream fix also includes regression tests and documentation. The TAG
advisory is at https://github.com/rsyslog/rsyslog/security/advisories/GHSA-jcrj-xmp8-8hqf.
Check both advisories and the public rsyslog/rsyslog PRs for
release-specific commits and backport guidance.

Coordinated disclosure: 2026-11-17 16:00 UTC (17:00 CET). Planned
fixed-version label: 2026-11-17 daily stable. Actual binary package
availability must be verified separately.

Patch (source only): see the attached .patch file (preserved without
line wrapping).

Download attachment "GHSA-jcrj-xmp8-8hqf.patch" of type "application/x-patch" (1903 bytes)
