X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/36
Message-ID: <43ead55c-15a1-84b3-a452-b76a2c49e7c6@apache.org>
Date: Tue, 17 Nov 2026 22:04:16 +0000
From: Jan Friedrich <freeandnil@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-129512: Apache log4net: AdoNetAppender loses an event whose text the database cannot store 
Content-Type: text/plain; charset=utf-8

Severity: moderate 
    CVSS 3.1: 5.3 (medium) CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/A:N

Affected versions:

- Apache log4net 1.2.9 before 3.6.0
- Apache log4net 02e1e115435888485f2e28b414d267e39e799e07 before a996aa8d569c709ddf0a5b1011a4f06bac9ce21d

Description:

Improper Neutralization of Null Byte or NUL Character vulnerability in the AdoNetAppender of Apache log4net.

Text parameters were bound unchanged, so a NUL character or an unpaired UTF-16 surrogate reached the database as it was. A database that refuses such a value, such as PostgreSQL, rejected the insert and the event was lost; only the first such loss per appender was reported. A party whose data reaches a log message could suppress that event.

This issue affects Apache log4net: from 1.2.9 before 3.6.0.

Users are recommended to upgrade to version 3.6.0, which fixes the issue.

Credit:

The Apache Software Foundation (finder)
Anthropic OSS Scanner (tool)
Jan Friedrich (remediation developer)

References:

https://github.com/apache/logging-log4net/pull/355
https://github.com/apache/logging-log4net/commit/a996aa8d569c709ddf0a5b1011a4f06bac9ce21d
https://logging.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-129512

