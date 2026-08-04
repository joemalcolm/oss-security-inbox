X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/9
Message-ID: <5af25190-5423-2e94-a093-89b0467932a0@apache.org>
Date: Tue, 04 Aug 2026 17:49:39 +0000
From: Robbie Gemmell <robbie@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-66273: Apache Qpid Proton-J: Type size/count handling can lead to excessive allocation pre-authentication 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Proton-J (org.apache.qpid:proton-j) through 0.34.1

Description:

A pre-authentication attacker could leverage type size/count handling to cause excessive allocation leading to potential denial of service.

This issue affects Apache Qpid Proton-J: through 0.34.1.

Users are recommended to upgrade to version 0.35.0, which fixes the issue.

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-66273

