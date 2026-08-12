X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/12/19
Message-ID: <4d4cf71b-a52b-4870-b36d-8f5577250eb9@brondsema.net>
Date: Wed, 12 Aug 2026 12:30:57 -0400
From: Dave Brondsema <dave@...ndsema.net>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-73240: Apache Allura: Git command injection
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Allura before 1.19.1

Description:

Specifically crafted inputs may lead to git argument injection in Apache Allura.

This issue affects Apache Allura: before 1.19.1.

Users are recommended to upgrade to version 1.19.1, which fixes the issue.

References:

https://allura.apache.org/posts/2026-allura-1.19.1.html
https://allura.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-73240

