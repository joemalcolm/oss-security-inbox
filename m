X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/02/1
Message-ID: <CAGjw+kMBWjar2pnD+wskjeiyHFZ6cGRArZgLJZZ+ydkg58X2=Q@mail.gmail.com>
Date: Fri, 2 Oct 2026 11:37:23 -0600
From: Masakazu Kitajo <maskit@...che.org>
To: users <users@...fficserver.apache.org>, Dev <dev@...fficserver.apache.org>,  announce@...fficserver.apache.org, security@...fficserver.apache.org
Cc: oss-security@...ts.openwall.com
Subject: CVE-2026-102795: Apache Traffic Server: SNI to Host header matching policy is not properly enforced (supersedes CVE-2026-41920)
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Traffic Server 9.0.0 through 9.2.14
- Apache Traffic Server 10.0.0 through 10.1.3

Description:

Improper Access Control vulnerability in Apache Traffic Server.

This issue affects Apache Traffic Server: from 9.0.0 through 9.2.14, from
10.0.0 through 10.1.3.

Users are recommended to upgrade to version 9.2.15 or 10.1.4, which fixes
the issue.

This CVE supersedes CVE-2026-41920, whose record listed the affected 9.x
versions as 9.0.0 through 9.1.14 and the fixed version as 9.1.15. All 9.2.x
releases before 9.2.15 are affected. If you concluded from the
CVE-2026-41920 advisory that a 9.2.x installation was not affected, please
re-evaluate it.

Credit:

JD Marsters (Bhut Red) (reporter)
Apache Community (reporter)

References:

https://trafficserver.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-102795
https://www.cve.org/CVERecord?id=CVE-2026-41920

