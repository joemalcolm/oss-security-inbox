X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/05/6
Message-ID: <a4a1b05e-fdc0-ad1b-cbc9-04c8cf9c1431@apache.org>
Date: Thu, 05 Nov 2026 12:23:17 +0000
From: Joerg Hoh <joerghoh@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-103863: Apache Sling Engine: Include-protection mitigations bypassable via uncovered response-wrapper paths 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Sling Engine before 3.0.4

Description:

Improper neutralization of input during web page generation ('cross-site scripting') vulnerability in Apache Sling Engine. Content-Type, charset, and redirect changes from an included component evade the  protectheaders / checkcontenttype  enforcement through setHeader(), repeated calls to setContentType(), the charset APIs, Servlet 6.1 redirect overloads, and stale config - enabling stored XSS despite enabled protections.



This issue affects Apache Sling Engine before 3.0.4.



Users are recommended to upgrade to version 3.0.4, which fixes the issue.

This issue is being tracked as SLING-13345 SLING-13350 SLING-13351 SLING-13352 SLING-13357 

Credit:

The Apache Software Foundation (finder)
Claude Code (tool)

References:

https://sling.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-103863
https://issues.apache.org/jira/browse/SLING-13345
https://issues.apache.org/jira/browse/SLING-13350
https://issues.apache.org/jira/browse/SLING-13351
https://issues.apache.org/jira/browse/SLING-13352
https://issues.apache.org/jira/browse/SLING-13357

