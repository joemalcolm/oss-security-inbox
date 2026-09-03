X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/03/3
Message-ID: <4bc73499-f66c-434d-9fbf-92f34ce22778@brondsema.net>
Date: Thu, 3 Sep 2026 13:33:15 -0400
From: Dave Brondsema <dave@...ndsema.net>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-80180: Apache Allura: Stored XSS via markdown HTML processing
Content-Type: text/plain; charset=utf-8

Severity: critical

Affected versions:

- Apache Allura through 1.20.0

Description:

Stored XSS via markdown HTML processing in Apache Allura.

This issue affects Apache Allura: from through 1.20.0.

Users are recommended to upgrade to version 1.21.0, which fixes the issue.

Credit:

n0mi1k (reporter)

References:

https://allura.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-80180

