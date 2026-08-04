X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/8
Message-ID: <e1d73ae8-a7d2-64e6-77cc-d626f8e9921e@apache.org>
Date: Tue, 04 Aug 2026 17:48:57 +0000
From: Robbie Gemmell <robbie@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-66257: Apache Qpid Proton-J: Unbounded symbol value caching can lead to pre-authentication resource exhaustion 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Proton-J (org.apache.qpid:proton-j) through 0.34.1

Description:

A pre-authentication attacker could leverage unbounded symbol value caching to cause resource exhaustion leading to denial of service.

This issue affects Apache Qpid Proton-J: through 0.34.1.

Users are recommended to upgrade to version 0.35.0, which fixes the issue.

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-66257

