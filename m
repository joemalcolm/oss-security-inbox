X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/12/18
Message-ID: <fd07b77f-56cb-4c01-901a-8f87f5310497@brondsema.net>
Date: Wed, 12 Aug 2026 12:29:09 -0400
From: Dave Brondsema <dave@...ndsema.net>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-73239: Apache Allura: Missing permission checks IDOR
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Allura before 1.19.1

Description:

Insecure Direct Object Reference (IDOR) due to missing permission checks for 
multiple Artifact types in Apache Allura.

This issue affects Apache Allura: before 1.19.1.

Users are recommended to upgrade to version 1.19.1, which fixes the issue.

References:

https://allura.apache.org/posts/2026-allura-1.19.1.html
https://allura.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-73239

