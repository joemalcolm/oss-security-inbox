X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/14
Message-ID: <1a9eb148-0f4d-9cf5-87e6-a0dd0a692a63@apache.org>
Date: Tue, 06 Oct 2026 19:42:36 +0000
From: Jan Friedrich <freeandnil@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-105239: Apache log4net: NUL character truncates EventLogAppender records 
Content-Type: text/plain; charset=utf-8

Severity: moderate 
    CVSS 3.1: 5.3 (medium) CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/A:N

Affected versions:

- Apache log4net 1.2.9 before 3.5.0
- Apache log4net 02e1e115435888485f2e28b414d267e39e799e07 before dc5855a0720c91590fd7a81d729ea01fdd69e000

Description:

Improper Neutralization of Null Byte or NUL Character vulnerability in the EventLogAppender of Apache log4net.

A NUL character in logged content ended the Windows Event Log record at that point, so everything the layout rendered after it, including exception text and trailing fields, was silently not stored. A party whose data reaches a log message could hide the rest of that record. Only applications on Windows that use EventLogAppender are affected.

This issue affects Apache log4net: from 1.2.9 before 3.5.0.

Users are recommended to upgrade to version 3.5.0, which fixes the issue.

Credit:

The Apache Software Foundation (finder)
Claude Security (tool)
Jan Friedrich (remediation developer)

References:

https://github.com/apache/logging-log4net/pull/315
https://github.com/apache/logging-log4net/commit/dc5855a0720c91590fd7a81d729ea01fdd69e000
https://logging.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-105239

