X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/19
Message-ID: <121c4384-fcd6-e003-acc8-1540fc674d1e@apache.org>
Date: Tue, 06 Oct 2026 19:43:34 +0000
From: Jan Friedrich <freeandnil@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-105244: Apache log4net: RemoteSyslogAppender silently deletes non-ASCII content 
Content-Type: text/plain; charset=utf-8

Severity: moderate 
    CVSS 3.1: 5.3 (medium) CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/A:N

Affected versions:

- Apache log4net 1.2.12 before 3.5.0
- Apache log4net 56a2e146e21ff4737e1ff3ec308810e667873947 before 77717061b20d4346b6c0ce6b54643d85fb348bc7

Description:

Improper Encoding or Escaping of Output vulnerability in the RemoteSyslogAppender of Apache log4net.

Every character outside visible ASCII and space was removed from the record instead of being escaped, so non-ASCII text and control characters such as tabs disappeared without notice. A party whose data reaches a log message could make a distinct value look identical in the record, for example a user name holding a zero-width space logged as admin. Only applications that use RemoteSyslogAppender are affected.

This issue affects Apache log4net: from 1.2.12 before 3.5.0.

Users are recommended to upgrade to version 3.5.0, which fixes the issue.

Credit:

The Apache Software Foundation (finder)
Claude Security (tool)
Jan Friedrich (remediation developer)

References:

https://github.com/apache/logging-log4net/pull/315
https://github.com/apache/logging-log4net/commit/77717061b20d4346b6c0ce6b54643d85fb348bc7
https://logging.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-105244

