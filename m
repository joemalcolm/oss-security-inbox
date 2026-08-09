X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/09/10
Message-ID: <be73f60e-6ba6-d61d-f781-ad5d67829684@apache.org>
Date: Sun, 09 Aug 2026 04:31:05 +0000
From: Velmurugan Periasamy <vel@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-65945: Apache Ranger: Logs contain replayable JWT bearer tokens 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Ranger through 2.8.0

Description:

Logs contain replayable JWT tokens in Apache Ranger versions <= 2.8.0
Users are recommended to upgrade to version [FIXED_VERSION], which fixes this issue.

Credit:

Andrew Rukin (Arenadata) (finder)

References:

https://ranger.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-65945

