X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/09/11
Message-ID: <eb65c5c0-013d-0ba5-5b3c-7325d8115704@apache.org>
Date: Sun, 09 Aug 2026 04:31:24 +0000
From: Velmurugan Periasamy <vel@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-65948: Apache Ranger: UnixAuth lacks brute-force protection 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Ranger through 2.8.0

Description:

UnixAuth lacks brute-force protection in Apache Ranger versions <= 2.8.0. 
Note:  UnixAuth is NOT a recommended option for production deployments. 
Users are recommended to upgrade to version [FIXED_VERSION], which fixes this issue.

Credit:

Andrew Rukin (Arenadata) (finder)

References:

https://ranger.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-65948

