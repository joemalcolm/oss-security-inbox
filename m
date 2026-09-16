X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/16/12
Message-ID: <867f0c46-a33e-3ff2-12d7-9a47622e2d35@apache.org>
Date: Wed, 16 Sep 2026 15:23:07 +0000
From: Volodymyr Siedlecki <volosied@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-76646: Apache MyFaces: Denial of Service via Unbounded Request Parsing 
Content-Type: text/plain; charset=utf-8

Severity: critical 

Affected versions:

- Apache MyFaces 2.2.0 through 2.2.15
- Apache MyFaces 2.3.0 through 2.3.11
- Apache MyFaces 3.0.0 through 3.0.3
- Apache MyFaces 4.0.0 through 4.0.3
- Apache MyFaces 4.1.0 through 4.1.3
- Apache MyFaces 2.3-next-*

Description:

A remote attacker could cause excessive resource consumption by supplying specially crafted request parameters, potentially resulting in a denial of service condition.


Older unsupported versions may also be affected.

Users are recommended to upgrade to versions 2.3.12, 2.3-next-M9, 3.0.4, 4.0.4, or 4.1.4, which fix this issue.

Credit:

n0mi1k (reporter)

References:

https://lists.apache.org/thread/q8zxrdhbmmx8ofgr9s7ymnqo8l2x8oy9
https://myfaces.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-76646

