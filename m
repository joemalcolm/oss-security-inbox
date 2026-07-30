X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/30/24
Message-ID: <e586f453-9fb6-8d4f-762d-804b557c3403@apache.org>
Date: Thu, 30 Jul 2026 16:44:00 +0000
From: Tim Allison <tallison@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-66756: Apache Tika: unpack endpoint in tika-server allows configuration with unsecureFeatures=false 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Tika (org.apache.tika:tika-server) 4.0.0-alpha-1 before 4.0.0-beta-1

Description:

Improper Protection of Alternate Path vulnerability in Apache Tika.

This issue affects Apache Tika: from 4.0.0-alpha-1 before 4.0.0-beta-1.

Users are recommended to upgrade to version 4.0.0-beta-1, which fixes the issue.

Credit:

George Chen discovered this issue and proposed fixes (finder)

References:

https://tika.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-66756

