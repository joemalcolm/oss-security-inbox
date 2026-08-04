X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/12
Message-ID: <42e832cb-b31f-7053-0ff7-2201ba84c150@apache.org>
Date: Tue, 04 Aug 2026 17:50:55 +0000
From: Robbie Gemmell <robbie@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-66276: Apache Qpid Proton-J: Unbounded disposition range handling can lead to denial of service 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Proton-J (org.apache.qpid:proton-j) through 0.34.1

Description:

An authenticated attacker can craft a disposition frame with large or illegal ranges causing excessive CPU usage due to naive range handling, leading to denial of service.

This issue affects Apache Qpid Proton-J: through 0.34.1.

Users are recommended to upgrade to version 0.35.0, which fixes the issue.

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-66276

