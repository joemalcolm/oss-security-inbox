X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/24/4
Message-ID: <CADPtTvN90v+cSmNVC0MQssEE1kneQ6Ay0Kv+Q7cetO5Uz2pAMQ@mail.gmail.com>
Date: Thu, 24 Sep 2026 10:44:04 -0300
From: Ermenson Junior <ermenson.sec@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-96512: sudo: TZ still affects NOTBEFORE/NOTAFTER
Content-Type: text/plain; charset=utf-8

Hi,

CVE-2026-96512 was assigned to a sudo bug where TZ from the calling user
still affects NOTBEFORE/NOTAFTER checks in sudoers.

If the timestamp in the rule has no trailing Z, parse_gentime() uses
mktime(), which reads TZ again. Commit db669167c fixed an earlier report of
this (no CVE, not mine) but only covered localtime_r(), so mktime() was
still reachable.

A local user can set TZ to an extreme offset and move the time window by
almost 25 hours. That lets an expired rule keep working, or a future rule
work early. Authentication still happens, only the time check is wrong.

Affected: 1.8.20 to 1.9.17p2 and main before the fix. Tested on glibc and
musl.

Fix is in main, no release yet:
https://github.com/sudo-project/sudo/commit/1820a349687522f51023d1ae5925125f59679a8c

The commit credits me as reporter ("Reported by Ermenson Junior").

Workaround: use UTC timestamps ending in Z.

CVSS 7.8 (AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H), CWE-863
https://access.redhat.com/security/cve/CVE-2026-96512
https://bugzilla.redhat.com/show_bug.cgi?id=2539327

Reported 2026-08-28, fixed by Todd Miller the same day, CVE published
2026-09-23.

Ermenson Junior

