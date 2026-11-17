X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/34
Message-ID: <2b7843bc-bcf2-a972-9b88-7586b1381152@apache.org>
Date: Tue, 17 Nov 2026 22:03:57 +0000
From: Jan Friedrich <freeandnil@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-129510: Apache log4net: Culture-sensitive CDATA end search in XmlLayout hides later log events 
Content-Type: text/plain; charset=utf-8

Severity: moderate 
    CVSS 3.1: 5.3 (medium) CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/A:N

Affected versions:

- Apache log4net 1.2.9 before 3.6.0
- Apache log4net 02e1e115435888485f2e28b414d267e39e799e07 before 80d955e8c8f1e9f094c2b3d1c142147ee8b8b805

Description:

Improper Output Neutralization for Logs vulnerability in the XmlLayout and XmlLayoutSchemaLog4J of Apache log4net.

Both layouts split a message holding the CDATA end marker into several CDATA sections, but searched for the marker with a culture-sensitive comparison. Ignorable characters or a combining mark around the marker made the search miss it, so the CDATA section stayed open. From 3.3.1 on, an XML parser then reads the following log events as part of that message; earlier versions leave the log file not well-formed. A party whose data reaches a log message could hide later log events from a consumer that parses the XML log.

This issue affects Apache log4net: from 1.2.9 before 3.6.0.

Users are recommended to upgrade to version 3.6.0, which fixes the issue.

Credit:

The Apache Software Foundation (finder)
Anthropic OSS Scanner (tool)
Jan Friedrich (remediation developer)

References:

https://github.com/apache/logging-log4net/pull/355
https://github.com/apache/logging-log4net/commit/80d955e8c8f1e9f094c2b3d1c142147ee8b8b805
https://logging.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-129510

