X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/12/16
Message-ID: <a4a05d9a-e9b6-423c-b4e0-3e47511f4875@brondsema.net>
Date: Wed, 12 Aug 2026 12:24:56 -0400
From: Dave Brondsema <dave@...ndsema.net>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-73237: Apache Allura: XSS in markdown pipeline
Content-Type: text/plain; charset=utf-8

Severity: critical

Affected versions:

- Apache Allura 1.10.0 before 1.19.1

Description:

XSS vulnerability in Markdown handling in Apache Allura.

This issue affects Apache Allura: from 1.10.0 before 1.19.1.

Users are recommended to upgrade to version 1.19.1, which fixes the issue.

References:

https://allura.apache.org/posts/2026-allura-1.19.1.html
https://allura.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-73237
