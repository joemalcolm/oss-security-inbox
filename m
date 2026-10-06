X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/15
Message-ID: <4c002927-77b6-ed3a-1aba-9ab46b5576c9@apache.org>
Date: Tue, 06 Oct 2026 19:43:05 +0000
From: Jan Friedrich <freeandnil@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-105241: Apache log4net: Unencodable content discards a whole SmtpPickupDirAppender batch 
Content-Type: text/plain; charset=utf-8

Severity: moderate 
    CVSS 3.1: 5.3 (medium) CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/A:N

Affected versions:

- Apache log4net 1.2.9 before 3.5.0
- Apache log4net 02e1e115435888485f2e28b414d267e39e799e07 before 4d2e10f0908199604b4326f9df6d0b43b871e333

Description:

Improper Handling of Unicode Encoding vulnerability in the SmtpPickupDirAppender of Apache log4net.

Content that the mail file writer cannot encode, such as an unpaired UTF-16 surrogate, made the write throw. Every buffered event in the batch was discarded, not only the one carrying the content, and a truncated mail could be left in the pickup directory. A party whose data reaches a log message could suppress the records of other events. Only applications that use SmtpPickupDirAppender are affected.

This issue affects Apache log4net: from 1.2.9 before 3.5.0.

Users are recommended to upgrade to version 3.5.0, which fixes the issue.

Credit:

The Apache Software Foundation (finder)
Claude Security (tool)
Jan Friedrich (remediation developer)

References:

https://github.com/apache/logging-log4net/pull/315
https://github.com/apache/logging-log4net/commit/4d2e10f0908199604b4326f9df6d0b43b871e333
https://logging.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-105241

