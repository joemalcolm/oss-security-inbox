X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/03/4
Message-ID: <6c3f36ee-dcf5-450f-8df3-edd288b4b968@brondsema.net>
Date: Thu, 3 Sep 2026 13:34:22 -0400
From: Dave Brondsema <dave@...ndsema.net>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-80181: Apache Allura: Server-side request forgery
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Allura through 1.20.0

Description:

Apache Allura's webhooks are vulnerable to Server-Side Request Forgery (SSRF).

This issue affects Apache Allura: through 1.20.0.

Users are recommended to upgrade to version 1.21.0, which fixes the issue.

Credit:

n0mi1k (reporter)

References:

https://allura.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-80181

