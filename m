X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/16
Message-ID: <d0d51d9e-a7bf-71bb-618b-dfe794c9b010@apache.org>
Date: Tue, 06 Oct 2026 19:43:14 +0000
From: Jan Friedrich <freeandnil@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-105242: Apache log4net: Request validation failure drops the event in the aspnet-request converter 
Content-Type: text/plain; charset=utf-8

Severity: moderate 
    CVSS 3.1: 5.3 (medium) CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/A:N

Affected versions:

- Apache log4net 1.2.11 before 3.5.0
- Apache log4net 243f1e9f3ee235955bade4b4fe664a903378719a before 145203420c579a703008b4b723b6a080757f4964

Description:

Improper Handling of Exceptional Conditions vulnerability in the aspnet-request pattern converter of Apache log4net.

Reading request parameters triggers ASP.NET request validation, so a request carrying content such as markup made the layout throw and the appender discarded the whole event. A sender could suppress the log record of their own request. Only applications on ASP.NET for .NET Framework whose layout uses %aspnet-request are affected.

This issue affects Apache log4net: from 1.2.11 before 3.5.0.

Users are recommended to upgrade to version 3.5.0, which fixes the issue.

Credit:

The Apache Software Foundation (finder)
Claude Security (tool)
Jan Friedrich (remediation developer)

References:

https://github.com/apache/logging-log4net/pull/316
https://github.com/apache/logging-log4net/commit/145203420c579a703008b4b723b6a080757f4964
https://logging.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-105242

