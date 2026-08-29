X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/29/1
Message-ID: <CADk+mPBVPrss9--xRDrD9HzZPpvoKqMVYiY0QGpm4viU2F9xFQ@mail.gmail.com>
Date: Sat, 29 Aug 2026 18:29:51 +0200
From: Rainer Gerhards <rgerhards@...adiscon.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-78002: rsyslog RainerScript replace() heap buffer overflow
Content-Type: text/plain; charset=utf-8

Hello,

This is the public follow-up to the earlier embargoed notification to the
distros list. The embargo ended on 2026-08-24. We apologize for the delayed
oss-security posting.

rsyslog contains a heap buffer overflow in the core RainerScript replace()
function. The three-argument form of wrap() uses the same implementation and
is also affected.

The issue is not active in the default configuration. A deployment is exposed
only when a ruleset applies replace(), or the three-argument form of wrap(), to
sender-controlled or otherwise untrusted data.

Technical details
=================

replace() calculates the required output-buffer size and constructs the output
in two separate passes. Following certain failed partial matches, the two
passes resumed scanning at different source positions. The construction pass
could consequently write more data than the sizing pass had allocated.

Triggering the issue requires:

* A ruleset that calls replace() or three-argument wrap().
* Sender-controlled or otherwise untrusted source data.
* A search string containing at least two characters.
* A replacement string longer than the search string.
* Input containing the partial-match pattern that causes the sizing and
  construction passes to diverge.

Impact
======

A remote sender able to submit messages to an affected ruleset can trigger
heap corruption and termination of rsyslogd, interrupting log processing. No
authentication is required when the configured network input accepts
unauthenticated senders.

The heap-buffer overflow and daemon termination were reproduced with
AddressSanitizer. Confidentiality loss, integrity loss, and code execution
have not been demonstrated.

Affected versions
=================

The vulnerable implementation was introduced in rsyslog 8.6.0.

Affected scheduled releases:

  rsyslog 8.6.0 through 8.2608.0

Affected daily stable builds:

  Builds published before the fixed 2026-08-24 daily stable build

Fixed versions
==============

The fix is available in the rsyslog daily stable build dated 2026-08-24 and
later daily stable builds. It will also be included in the scheduled rsyslog
8.2610.0 release.

Users of affected configurations should update to a fixed daily stable build
rather than wait for the scheduled release.

Severity
========

CVSS v3.1: 7.5 High

CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H

The score reflects the demonstrated, repeatable, network-triggered
availability impact. Practical exposure is limited to deployments whose
rulesets explicitly apply the affected function to untrusted data.

Weakness classifications:

  CWE-122: Heap-based Buffer Overflow
  CWE-131: Incorrect Calculation of Buffer Size

Mitigations
===========

Until an update can be installed, operators can prevent exploitation by:

* Not applying replace() or three-argument wrap() to untrusted message
  content.
* Ensuring that the replacement string is not longer than the search string.
* Restricting affected network inputs to trusted senders.

These mitigations should not replace installing a fixed package.

Fix
===

The sizing pass now uses the same rewind behavior as the output-construction
pass, so both passes identify the same replacement positions and calculate a
matching output length.

Minimal patch:

--- a/grammar/rainerscript.c
+++ b/grammar/rainerscript.c
@@ -1827,8 +1827,8 @@ static es_str_t *doFuncReplace(struct svar
 *__restrict__ const operandVal,
         if (src_buff[i] == find[j]) {
             j++;
         } else if (j > 0) {
-            i -= (j - 1);
-            lDst -= (j - 1);
+            i -= j;
+            lDst -= j;
             j = 0;
         }
     }

References
==========

GitHub Security Advisory:
https://github.com/rsyslog/rsyslog/security/advisories/GHSA-g72f-gc6v-f2w3

Fix:
https://github.com/rsyslog/rsyslog/commit/667e3f61aec5ee02c5c2ee6f0f8accf6fe4301a9

Pull request and regression test:
https://github.com/rsyslog/rsyslog/pull/7525

rsyslog downloads and package repositories:
https://www.rsyslog.com/downloads/

Identifier:

  CVE-2026-78002

Credit
======

The issue was found by Anthropic using Claude to study the security of
open-source software and manually validated by Ada Logics. It was reported by
David Korczynski.

Regards,
Rainer Gerhards
rsyslog project
