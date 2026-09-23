X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/15
Message-ID: <91c3ab2a-be08-471c-d526-b802b89f77b8@apache.org>
Date: Wed, 23 Sep 2026 08:25:29 +0000
From: Joerg Hoh <joerghoh@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-92001: Apache Sling XSS: Missing parser resource limits 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Sling XSS before 2.4.12

Description:

Improper restriction of recursive entity references in DTDs ('XML entity expansion') vulnerability in Apache Sling XSS.



This issue affects Apache Sling XSS: before 2.4.12.



Users are recommended to upgrade to version 2.4.12, which fixes the issue.

This issue is being tracked as SLING-13336 

Credit:

The Apache Software Foundation (finder)
Claude Code (tool)

References:

https://sling.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-92001
https://issues.apache.org/jira/browse/SLING-13336

