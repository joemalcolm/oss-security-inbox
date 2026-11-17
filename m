X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/8
Message-ID: <CADk+mPBQq_yMVxFqqdA7L84D7CW3q_RAQJMyq+q2zwUmFvSEEQ@mail.gmail.com>
Date: Tue, 17 Nov 2026 17:00:00 +0100
From: Rainer Gerhards <rgerhards@...scon.com>
To: oss-security@...ts.openwall.com
Subject: rsyslog >=8.3.2: low-year weekday formatting can crash rsyslogd (GHSA-5pc2-f2v7-5w5p)
Content-Type: text/plain; charset=utf-8

GHSA-5pc2-f2v7-5w5p: rsyslogd can crash when a template formats a
crafted low-year reported timestamp as a weekday name.

An RFC5424 timestamp with year 0001 is accepted by the parser. The
shared weekday calculation can return a negative C remainder, and
date-wdayname uses it to index a seven-element weekday-name table. In
a normal build, one crafted message caused a SIGSEGV when accepted
through imtcp and routed to an action template using that formatter.
AddressSanitizer reported an eight-byte global out-of-bounds read. The
related numeric date-wday formatter produced invalid output in bounded
checks. We have not demonstrated unrelated memory disclosure or an
integrity impact.

Exposure requires an input that accepts the message and an action
using date-wdayname on its reported timestamp. An unauthenticated
remote sender can trigger the issue if such an input is reachable.
Other configurations should be assessed against their actual
processing paths.

Affected upstream v8 releases: >= 8.3.2. The first affected tag
contains the low-year parser behavior, negative weekday remainder and
weekday-name lookup; current public main before the fix also
reproduced the issue. Older nonstandard branches were not assessed.
Severity: High 7.5, CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H for
the unauthenticated network-input configuration. CWE-125.
CVE: CVE-2026-129837.

The fixed upstream label is "2026-11-17 daily stable". Source and
package availability must be checked separately at publication. The
source-only patch below applies to upstream base
a6c1f4023df4f4e783158ea3837796dc0ef45e4e and to public main
8a86b533612c32065a864ff52d951afddb423e12. Distribution maintainers
should inspect their source/backports and the binary carrying
rsyslogd; the upstream version alone does not establish whether a
downstream package is fixed.

Until a fix is installed, avoid date-wdayname or date-wday on
untrusted reported timestamps, or restrict senders to affected inputs.
We thank Manyo9 for responsibly reporting the issue.

Source-only patch (SHA-256
abb3e7a6a453406be657dc4f08f766b655cc56ae9f6eabbb75e52f27e27d5da8):
diff --git a/runtime/datetime.c b/runtime/datetime.c
index 67392aa96..9faaaf192 100644
--- a/runtime/datetime.c
+++ b/runtime/datetime.c
@@ -1187,6 +1187,7 @@ int getWeekdayNbr(struct syslogTime *ts) {
     }
     wday = ((36525 * g) / 100) + ((306 * f) / 10) + ts->day - 621049;
     wday %= 7;
+    if (wday < 0) wday += 7;
     return wday;
 }

@@ -1391,4 +1392,4 @@ BEGINAbstractObjClassInit(datetime, 1,
OBJ_IS_CORE_MODULE) /* class, version */
 ENDObjClassInit(datetime)

 /* vi:set ai:
- */
\ No newline at end of file
+ */
