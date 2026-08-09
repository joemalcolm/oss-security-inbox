X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/09/9
Message-ID: <7c0eafba-1e4a-e81e-9544-3c78afb5ef29@apache.org>
Date: Sun, 09 Aug 2026 04:30:43 +0000
From: Velmurugan Periasamy <vel@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-65942: Apache Ranger: Clients accept TLS certificates issued for other hostnames 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Ranger through 2.8.0

Description:

TLS hostname verification issue in Apache Ranger Client Code in versions <= 2.8.0.
Users are recommended to upgrade to version [FIXED_VERSION], which fixes this issue.

Credit:

Andrew Rukin (Arenadata) (finder)

References:

https://ranger.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-65942

