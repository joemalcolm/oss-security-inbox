X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/05/8
Message-ID: <8e2efbca-350b-6a26-023b-28aec38f2e12@apache.org>
Date: Thu, 05 Nov 2026 12:23:34 +0000
From: Joerg Hoh <joerghoh@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-103866: Apache Sling Engine: Hand-rolled parameter parser diverges from RFC/container parsing, enabling smuggling 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Sling Engine before 3.0.4

Description:

Inconsistent interpretation of HTTP requests ('HTTP Request/Response smuggling') vulnerability in Apache Sling Engine. The engine's query/form parser accepts non-standard percent-escapes, wrong charsets, and continues request processing on such errors.



This issue affects Apache Sling Engine: before 3.0.4.



Users are recommended to upgrade to version 3.0.4, which fixes the issue.

This issue is being tracked as SLING-13362 SLING-13364 SLING-13365 

Credit:

The Apache Software Foundation (finder)
Claude Code (tool)

References:

https://sling.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-103866
https://issues.apache.org/jira/browse/SLING-13362
https://issues.apache.org/jira/browse/SLING-13364
https://issues.apache.org/jira/browse/SLING-13365

