X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/05/7
Message-ID: <d21b2c9b-60e2-0e50-17a5-85c3b5d48976@apache.org>
Date: Thu, 05 Nov 2026 12:23:25 +0000
From: Joerg Hoh <joerghoh@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-103864: Apache Sling Engine: Request-derived values reach log sinks without CR/LF neutralization 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Sling Engine before 3.0.4

Description:

Improper output neutralization for logs in Apache Sling Engine.



This issue affects Apache Sling Engine: before 3.0.4.



Users are recommended to upgrade to version 3.0.4, which fixes the issue.

This issue is being tracked as SLING-13360 SLING-13361 

Credit:

The Apache Software Foundation (finder)
Claude Code (tool)

References:

https://sling.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-103864
https://issues.apache.org/jira/browse/SLING-13360
https://issues.apache.org/jira/browse/SLING-13361

