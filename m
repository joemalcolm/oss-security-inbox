X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/13
Message-ID: <cd71a4ac-d952-88e6-e182-b70c4a5720af@apache.org>
Date: Wed, 23 Sep 2026 08:25:00 +0000
From: Joerg Hoh <joerghoh@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-91928: Apache Sling XSS: Sanitizer bypass, uncontrolled resource consumption and failure pf protection mechanisms 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Sling XSS before 2.4.12

Description:

Improper neutralization of input during web page generation ('cross-site scripting') vulnerability in Apache Sling XSS.



This issue affects Apache Sling XSS: before 2.4.12.



Users are recommended to upgrade to version 2.4.12, which fixes the issue.

This issue is being tracked as SLING-13333 

Credit:

The Apache Software Foundation (finder)
Claude Code (tool)

References:

https://sling.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-91928
https://issues.apache.org/jira/browse/SLING-13333

