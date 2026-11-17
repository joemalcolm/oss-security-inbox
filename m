X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/23
Message-ID: <CADk+mPCrN4XbSY+7UC8X4pC+7CBxWiytK7paYYYfr2cCpoHmOQ@mail.gmail.com>
Date: Tue, 17 Nov 2026 19:10:00 +0100
From: Rainer Gerhards <rgerhards@...scon.com>
To: oss-security@...ts.openwall.com
Subject: rsyslog imuxsock PRI digit accumulation hardening
Content-Type: text/plain; charset=utf-8

Bound imuxsock PRI digit accumulation to the three digits accepted by
its syntax check. Longer numeric fields follow existing invalid-PRI
handling without unnecessary signed arithmetic.

Red Hat Product Security assigned CVE-2026-129831 to this change. Our
review classifies it as separate robustness hardening; we did not
establish an independent security impact beyond the coordinated
trigger path. Its disclosure is coordinated with the original GHSA
because the change touches that report’s trigger path.

Focused real-socket tests passed 3/3; mock distcheck passed 1,508
tests with 13 skips; the Ubuntu 26.04 container suite passed 1,558
tests with 81 skips. Clang static analysis found no bugs.

This source-only patch is standalone against the checked baseline; it
is coordinated with GHSA-xrxr-7942-54fr but is not that advisory's
vulnerability fix. Apply it against the exact source version you
maintain.

Coordinated disclosure: 2026-11-17 16:00 UTC (17:00 CET). Planned
fixed-version label: 2026-11-17 daily stable. Actual binary package
availability must be verified separately.

Credit: Identified during rsyslog's internal code review.

Patch (source only): see the attached .patch file (preserved without
line wrapping).

Download attachment "rsyslog-imuxsock-PRI-hardening.patch" of type "application/x-patch" (518 bytes)
