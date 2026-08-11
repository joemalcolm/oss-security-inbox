X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/11/4
Message-ID: <4b2dc859-3424-4e73-b665-71ec7217b159@brondsema.net>
Date: Tue, 11 Aug 2026 09:11:28 -0400
From: Dave Brondsema <dave@...ndsema.net>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-69223: Apache Allura: Server-side request forgery
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Allura before 1.19.1

Description:

Apache Allura's webhooks are vulnerable to Server-Side Request Forgery (SSRF).

This issue affects Apache Allura: before 1.19.1.

Users are recommended to upgrade to version 1.19.1, which fixes the issue.

References:

https://allura.apache.org/posts/2026-allura-1.19.1.html
https://allura.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-69223

