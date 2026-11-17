X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/35
Message-ID: <ef97d6bb-900a-d9bf-e5d6-435cf6c03c1a@apache.org>
Date: Tue, 17 Nov 2026 22:04:08 +0000
From: Jan Friedrich <freeandnil@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-129511: Apache log4net: Best-fit encoding in FileAppender lets fullwidth text forge XML log events 
Content-Type: text/plain; charset=utf-8

Severity: moderate 
    CVSS 3.1: 5.3 (medium) CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/A:N

Affected versions:

- Apache log4net 1.2.9 before 3.6.0
- Apache log4net 3.4.0 before 3.6.0
- Apache log4net 02e1e115435888485f2e28b414d267e39e799e07 before 735db80ab163ef08c54d2cc4d3d576b22b77f4bc

Description:

Improper Output Neutralization for Logs vulnerability in the FileAppender, RollingFileAppender, UdpAppender and SmtpAppender of Apache log4net.

Characters the configured encoding could not represent were converted by that encoding's best-fit fallback, which turns fullwidth characters such as U+FF1C, U+FF1E and U+FF02 into <, > and ". The conversion happened after XmlLayout or XmlLayoutSchemaLog4J had escaped the text, so a party whose data reaches a log message could forge complete log events in an XML log, for example a fake audit entry. On .NET Framework this needs no configuration where the ANSI code page is single-byte, since that is the default encoding; on .NET it needs a configured single-byte encoding such as ISO-8859-1. This is the best-fit conversion described by the WorstFit research.

This issue affects Apache log4net: from 1.2.9 before 3.6.0.

Users are recommended to upgrade to version 3.6.0, which fixes the issue.

Credit:

The Apache Software Foundation (finder)
Anthropic OSS Scanner (tool)
Jan Friedrich (remediation developer)

References:

https://github.com/apache/logging-log4net/pull/355
https://github.com/apache/logging-log4net/commit/735db80ab163ef08c54d2cc4d3d576b22b77f4bc
https://logging.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-129511

