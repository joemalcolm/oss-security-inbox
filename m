X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/39
Message-ID: <506df671-0b56-420b-915a-f4249402d96f@brondsema.net>
Date: Mon, 23 Nov 2026 17:53:35 -0500
From: Dave Brondsema <dave@...ndsema.net>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-135660: Apache Allura: XSS in ticket tracker
Content-Type: text/plain; charset=utf-8


Severity: critical

Affected versions:

- Apache Allura before 1.23.0

Description:

Improper Neutralization of Script-Related HTML Tags in a Web Page (Basic XSS) 
vulnerability in Apache Allura's ticket tracking tool.



This issue affects Apache Allura: before 1.23.0.



Users are recommended to upgrade to version 1.23.0, which fixes the issue.

References:

https://allura.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-135660

