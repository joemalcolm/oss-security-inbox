X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/22/5
Message-ID: <CADk+mPA811WMNT_xtyVuVBKY_sVQHjrVCd=C7vnt_FvnONaJtA@mail.gmail.com>
Date: Wed, 22 Jul 2026 12:34:37 +0200
From: Rainer Gerhards <rgerhards@...adiscon.com>
To: oss-security@...ts.openwall.com
Subject: rsyslog v8.36.0 through v8.2606.0: imptcp regex-framing remote denial of service
Content-Type: text/plain; charset=utf-8

Hello,

The rsyslog project has published a security advisory and proposed
upstream fix for a configuration-dependent denial-of-service issue in
the optional imptcp input module.

Summary
=======

A configuration-dependent issue in rsyslog's optional imptcp input
module can allow an unauthenticated remote peer to crash rsyslogd.

The issue is not active in a default installation. Exploitation
requires all of the following:

* imptcp is explicitly loaded.
* An imptcp listener uses the non-default framing.delimiter.regex mode.
* An attacker can establish a TCP connection to that listener.

A crafted input sequence during oversize-frame recovery can cause an
invalid internal message length and terminate rsyslogd. No
confidentiality or integrity impact, privilege escalation, or code
execution has been identified.

imtcp and the default imptcp framing modes are not affected.

Affected versions
=================

The vulnerable regex-framing implementation was introduced in rsyslog
v8.36.0. Scheduled stable releases from v8.36.0 through v8.2606.0 are
affected, as are daily stable builds published before 2026-07-23 CEST.

Severity
========

CVSS v3.1: 7.5 High
CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H

The practical exposure is limited because both imptcp and regex
framing are optional and not enabled by default.

Mitigations
===========

Until updating, users can disable the affected imptcp listener, remove
its framing.delimiter.regex setting, restrict network access to the
listener, or replace the listener with an equivalent imtcp listener.

Fix and advisory
================

The proposed upstream fix is public and available for review:

https://github.com/rsyslog/rsyslog/pull/7410

A fixed daily stable package will be published through the normal
daily stable workflow on 2026-07-23 CEST. The next scheduled stable
release, v8.2608.0, will include the same fix.

The GitHub Security Advisory is available at:

https://github.com/rsyslog/rsyslog/security/advisories/GHSA-cj5r-wh2m-7w29

A CVE has been requested through GitHub and is pending. Current CVE
status is tracked in the GitHub Security Advisory.

Credit
======

Thanks to Raphael Eikenberg, independent security researcher, for
reporting the issue.

AI assistance disclosure
========================

The reporter stated that he used AI tools to help identify the issue
and draft the reproducer and report. He personally built the reported
rsyslog revision, reproduced the daemon termination in all six test
runs, and confirmed that the daemon remained operational after
applying the proposed guard.

The maintainer-side minimal patch and regression-test changes were
prepared with OpenAI Codex assistance and subsequently reviewed and
validated through the rsyslog testbench, static analysis, PR-ready
container validation, and focused ASan/UBSan testing.

Independent maintainer review and patch verification were the final
acceptance gate. The patch was accepted based on that verification,
not on the AI output alone.

Regards,
Rainer Gerhards
rsyslog project

Patch
=====

diff --git a/plugins/imptcp/imptcp.c b/plugins/imptcp/imptcp.c
index 838e1648f..90a7d6f7e 100644
--- a/plugins/imptcp/imptcp.c
+++ b/plugins/imptcp/imptcp.c
@@ -1053,7 +1053,7 @@ static rsRetVal ATTR_NONNULL()
processDataRcvd_regexFraming(ptcpsess_t *const __
         pThis->iCurrLine = pThis->iMsg;
     } else {
         const int isMatch = !regexec(&inst->start_preg, (char
*)pThis->pMsg + pThis->iCurrLine, 0, NULL, 0);
-        if (isMatch) {
+        if (pThis->iCurrLine > 0 && isMatch) {
             DBGPRINTF("regex match (%d), framing line: %s\n",
pThis->iCurrLine, pThis->pMsg);
             memmove(pThis->pMsg_save, pThis->pMsg + pThis->iCurrLine,
ustrlen(pThis->pMsg + pThis->iCurrLine) + 1);
             pThis->iMsg = pThis->iCurrLine - 1;
