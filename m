X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/03/5
Message-ID: <ef451264-566e-4749-89f9-a7220ef63486@brondsema.net>
Date: Thu, 3 Sep 2026 13:35:10 -0400
From: Dave Brondsema <dave@...ndsema.net>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-80190: Apache Allura: Stored XSS via code repositories
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Allura through 1.20.0

Description:

Apache Allura: stored XSS via SVN code repositories.  Git repositories are not 
known to be affected.  The vulnerability is likely mitigated via default CSP 
headers.

This issue affects Apache Allura: through 1.20.0.

Users are recommended to upgrade to version 1.21.0, which fixes the issue.

Credit:

n0mi1k (reporter)

References:

https://allura.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-80190

