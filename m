X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/25
Message-ID: <CADk+mPBLkTxve6zwDjhDF4k91FWCziK9m11TZ_4coi_kDZcbNg@mail.gmail.com>
Date: Tue, 17 Nov 2026 19:50:00 +0100
From: Rainer Gerhards <rgerhards@...scon.com>
To: oss-security@...ts.openwall.com
Subject: rsyslog imuxsock system-timestamp out-of-bounds write
Content-Type: text/plain; charset=utf-8

Credit: Reported by @karimabisaad.

rsyslog's imuxsock special parser can write beyond a received
message's raw buffer when replacing the message timestamp with the
system timestamp. A local sender able to write to a directly
accessible imuxsock Unix datagram socket can combine an overlong
invalid PRI with a short timestamp accepted by the permissive RFC3164
parser. The fixed 16-byte in-place rewrite then has insufficient
remaining capacity.

Direct code inspection establishes the out-of-bounds write. The
overwritten bytes derive from the daemon's current local time and a
space, limiting attacker control over the values. A reliable crash or
sustained denial of service in an ordinary, non-sanitized rsyslogd
build has not been demonstrated. The provisional rating is Medium,
CVSS 3.1 5.5 (CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H). CVE:
CVE-2026-129829.

Affected configuration: imuxsock's special parser with UseSysTimeStamp
on a directly accessible raw Unix socket. The checked supported-v8
affected range is >= 8.1.0. Older v5-v7 releases are not implied safe;
historical branches need specific validation. The planned fixed
version is 2026-11-17 daily stable. Verify actual package availability
separately before stating that a binary release contains the fix.

The attached source-only patch addresses this reported write on the
checked baseline. The full upstream fix includes regression tests and
documentation. Apply or backport it against the exact source version
you maintain. The patch and advisory are available at
https://github.com/rsyslog/rsyslog/security/advisories/GHSA-xrxr-7942-54fr;
check that page and the public rsyslog/rsyslog pull request for
release-specific commits and status.

The timestamp-write source patch is standalone against the checked
baseline. The separate TAG patch must be applied after this patch; the
separate PRI digit hardening patch is not required for this fix.

Coordinated disclosure: 2026-11-17 16:00 UTC (17:00 CET). Planned
fixed-version label: 2026-11-17 daily stable. Actual binary package
availability must be verified separately.

Patch (source only): see the attached .patch file (preserved without
line wrapping).

Download attachment "GHSA-xrxr-7942-54fr.patch" of type "application/x-patch" (3194 bytes)
